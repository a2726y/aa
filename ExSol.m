function T = ExSol(alpha,t,x_espa)
alfa = alpha;
dx=0.0002222;
T0=100;
Lx=1;
dt=0.05;
m_max=10;
t_max=t;

%Main computation
Nx = round(Lx/dx)+1;
Nt =round(t_max/dt);
suma=0;
x=linspace(0,Lx,x_espa);
for nt=1:Nt
    t=nt*dt;

    for m=1:m_max
    suma = suma+sin((2*m-1)*pi*x)*exp(-alfa*((2*m-1)^2)*(pi^2)*t)/(2*m-1);
    end

    T=T0*(1-(4/pi)*suma);
    suma=0;
end
end
