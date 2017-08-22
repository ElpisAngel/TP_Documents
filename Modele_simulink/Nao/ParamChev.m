%% Param�tres mod�le

% Couple ext�rieur (la gravit� pourrait �tre prise en compte)
Cext=0

%% Constantes pour la cheville du robot

%% Caract�ristiques du moteur (S.I.)
R=5.4
L=0%0.6E-3
Jmot=4.8E-7 %kg.m� chateau : 4.8E-8
Ke=0.0194 % V/(rad/s)
Ki=0.0194 % N.m/A
f= 1.6E-5 %N.m/(rad/s)
% Rapport de r�duction
k=13*25*12*10/(80*47*58*36)
% Tension alimentation
Vbat=24 %V

%% Inertie
% Inertie cheville nue
Jch0=0
% Inertie ajout�e
% Inertie support
Jsup=0
% Masse ajout�e
m=0
% Distance masse a l'axe de rotation
d=0
% Inertie cheville charg�e
Jch=Jch0+Jsup+m*d^2
% Alternative :
% 1/2 NAO "nez creux" Cg: environ 35cm poids 5.2kg Icg = 5.2*0.35^2 = 0.53
% Ibarreeq: 5.2 * 0.57^2 / 12 = 0.14 Jtot = 0.67 sur axemot : 
Jch = 0.63 / 2 % /2 demi nao
% Finalement
% Inertie �quivalente ramen�e � l'axe moteur
Jeq = Jmot + Jch*k^2
