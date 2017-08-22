clear all; % effacement de la m�moire
close all; % fermeture de toutes les fen�tres
clc; % effacement de la fenetre commande

para %execution du fichier param�tres


    
figure('Color',[1,1,1]) % cr�ation du figure vide � fond blanc   
for i=1:2   
    Ka=Ka*2; % changer valeur du param�tre voulu ici 
      
    sim('modele_cordeuse')  % execution du mod�le simulink

% extraction des donn�es simulink (il faut cocher log signal data) au pr�alable sur le signal � visualiser    
    T1 = logsout.getElement('T1').Values.Data;   % extraction de la donn�e simulink
    t = logsout.getElement('T1').Values.time;

    plot(t,T1)
    hold on % pour pouvoir tracer plusieurs courbes
end
grid on;box on;

% cr�er l�gende
% cr�er label d'axes


  %set_param('modele_cordeuse','SimulationCommand','start')  % ex�cution
    %pour garder la main