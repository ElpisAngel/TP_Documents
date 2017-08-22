close all
Tp=0.85-0.57;
tau=tpic-Tp/2;
wp=2*pi/Tp;
tpic=0.57;
wp2=2*pi/(2*tpic);
D1=(33.9-30)/30;
xi=abs(log(D1))/(sqrt(pi^2+(log(D1))^2));
w0=wp/sqrt(1-xi^2);


%Simulation
S=sim('simu_2nd_ordre_ericc3.slx','SimulationMode','rapid','AbsTol','1e-5',...
            'StopTime', '2.4', ...
            'ZeroCross','on', ...
            'SaveTime','on','TimeSaveName','tout', ...
            'SaveState','on','StateSaveName','xoutNew',...
            'SaveOutput','on','OutputSaveName','youtNew',...
            'SignalLogging','on','SignalLoggingName','logsout')
data=get(S,'S')

w0=wp2/sqrt(1-xi^2);
S2=sim('simu_2nd_ordre_ericc3.slx','SimulationMode','rapid','AbsTol','1e-5',...
            'StopTime', '2.4', ...
            'ZeroCross','on', ...
            'SaveTime','on','TimeSaveName','tout', ...
            'SaveState','on','StateSaveName','xoutNew',...
            'SaveOutput','on','OutputSaveName','youtNew',...
            'SignalLogging','on','SignalLoggingName','logsout')
data2=get(S2,'S')

% Tracer sur une m�me figure des r�sultats exp�rimentaux et de simulation. saut premiere ligne
import1 %Import des variables enregistr�es avec le g�n�rateur automatique MATLAB
dt=2.4/(length(Um)-1);
temps=0:dt:2.4;
% Param�trage figure
plot(temps,theta,'r-','LineWidth',3)
hold on
plot(data.Time,data.Data,'b--','LineWidth',3)
plot(data2.Time,data2.Data,'g--','LineWidth',3)
xlabel('Temps (s)')
ylabel('\theta(t) (en �)')
legend('Essai exp�rimental','Simulation')

