%------d�claration des variables------
%-------------------------------------

%------param�tre(s) des moteurs � courant continu------
%r�sistance interne
Rm=1e-1    %0.1
%inductance du bobinage
Lm=1e-3  %0.001
Cond=0
%constante de force electromotrice
Km=9/(28500*pi/30)

%------param�tre(s) des r�ducteurs------
%rapport de transformation E/S
k=69/8

%------param�tres de l'h�lice------
%coefficient de couple de lacet
Coef_C=-(0.01)/(28500*pi/(k*30))^2
%coefficient de portance
Coef_P=-(9.81*0.09)/(28500*pi/(k*30))^2

%------consignes-------------------
C=9.038 ;
C1=C ;
C2=C ;
C3=-C ;
C4=-C ;
