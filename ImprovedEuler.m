clc,close all,clear all

%lambda=1
f=@(v,y)((y^3)+((v^2)-v).*(y^2)-(v^3).*y) ; %change function depending on need

h=0.01;
v = 1;
t_end=6;
n=ceil(t_end/h);
t=linspace(0,t_end,n+1)';
h=t(2)-t(1);
y_im=zeros(n+1,1);
a = -3:0.05:3;
for ii=1:length(a)
    l = 1;
    y_im(l) = a(ii);
    
    for jj=1:n
        m1=f(v,y_im(jj));
        m2=f(v,y_im(jj)+h*m1);
        y_im(jj+1) = y_im(jj)+(h/2)*(m1+m2);
    end
    
    figure(1), plot(t,y_im), xlabel("t"),ylabel("y");
    axis ([0 6 -4 4]);
    hold on;
    if l < n
       l = l+1;
    else
       break;
    end
        
end

%lambda=0
f=@(v,y)((y^3)+((v^2)-v).*(y^2)-(v^3).*y) ;
h=0.01;
v = 0;
t_end=6;
n=ceil(t_end/h);
t=linspace(0,t_end,n+1)';
h=t(2)-t(1);
y_im=zeros(n+1,1);
a = -3:0.05:3;
for ii=1:length(a)
    l = 1;
    y_im(l) = a(ii);
    
    for jj=1:n
        m1=f(v,y_im(jj));
        m2=f(v,y_im(jj)+h*m1);
        y_im(jj+1) = y_im(jj)+(h/2)*(m1+m2);
    end
    
    figure(2), plot(t,y_im), xlabel("t"),ylabel("y");
    axis ([0 6 -4 4]);
    hold on;
    if l < n
        l = l+1;
    else
        break;
    end
        
end

%lambda=-1
f=@(v,y)((y^3)+((v^2)-v).*(y^2)-(v^3).*y) ;
h=0.01;
v = -1;
t_end=6;
n=ceil(t_end/h);
t=linspace(0,t_end,n+1)';
h=t(2)-t(1);
y_im=zeros(n+1,1);
a = -3:0.05:3;
for ii=1:length(a)
    l = 1;
    y_im(l) = a(ii);
    
    for jj=1:n
        m1=f(v,y_im(jj));
        m2=f(v,y_im(jj)+h*m1);
        y_im(jj+1) = y_im(jj)+(h/2)*(m1+m2);
    end
    
    figure(3), plot(t,y_im), xlabel("t"),ylabel("y");
    axis ([0 6 -4 4]);
    hold on;
    if l < n
        l = l+1;
    else
        break;
    end
        
end
