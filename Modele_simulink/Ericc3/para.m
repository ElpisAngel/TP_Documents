% Param�tres mod�le

% Moteur CC
Kc = 0.042 ; %constante de couple (Nm/A)
Jeq=2.9e-5 ; %inertie �quivalente ramen�e au moteur (kg.m�)
f =8.06e-5 ; %coefficient de frottement visqueux total ramen� � l'arbre moteur (NM/(rad/s))
Cfsec=1 ; %couple de frottement sec s'opposant au mvt (Nm)

% Correcteur PID
Kp=1000;  
Ki=0 ; 
Kd=0;

DAC=1