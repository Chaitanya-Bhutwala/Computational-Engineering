 clear all;
clc;

k1=input('enter k1: ');
k2=input('enter k2: ');
k3=input('enter k3: ');
k4=input('enter k4: ');
k5=input('enter k5: ');
k=[k1 0 0; -k2 k2 -k3; -k4 0 (k4-k5)]
m=[800 0 0; 0 1000 0; 0 0 1200];
[a,b]= eig(k,m);
x=diag(b);
y=sqrt(x) ;
f=y/(2*pi);
disp('omega is ');
disp(y)
disp('frequency is ');
disp(f)
mass=[3 2 1];
disp(a);
figure(1);
    plot(a(:,1),mass);hold on;
    plot(a(:,2),mass);
    plot(a(:,3),mass);
    xlabel('amplitude');
    ylabel('mass number');
    title('amplitude vs. mass')
for i=1:3
    if(a(3,i)==0)
        a(:,i)=0;
    else
        a(:,i)=a(:,i)/a(3,i);
    end
end
disp(a);

figure(2);
    plot(a(:,3), mass); hold on;
    plot(a(:,2), mass);
    plot(a(:,1), mass);
    xlabel('amplitude');
    ylabel('mass number');
    title('relative amplitude vs. mass')
