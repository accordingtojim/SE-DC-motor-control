%Separately excited direct current motor control
mt=26000; %mass of tram in kg
eta=0.9; %efficiency of the motor
wn=314; %rated speed in rad/s
taua=0.01; %time constant of armature circuit in s
ven=120; %excitation rated voltage in V
ien=1; %excitation rated current in A
taue=1; %time constant of excitation circuit in s
van=600; %line voltage=voltage on the armature in A
t=25; %time to reach 60km/h
v=60/3.6; %v in m/s
am=v/t; %average acceleration 
pt=mt*am*v; %power to reach 60km/h in 25s
ptot=(4/3)*pt; %1/3 of pt are losses due to friction
jeq=mt*v^2/wn^2; %equivalent inertia of the train
ian=ptot/(eta*van); %rated current armature
tn=ptot/wn; %rated torque
kc=tn/(ian*ien); %derive from equation of the model
ks=(eta*van)/(ien*wn); %derive from equation of the model
ra=(1-eta)*van*ian/ian^2; %resistance of armature circuit
re=ven/ien; %resistance of excitation circuit
la=taua*ra; %inductance of armature circuit
le=taue*re; %inductance of excitation circuit
ml1=-675.5; %resistant torque due to uphill
ml2=675.5; %additive torque due to downhill
en=ks*ien*wn; %rated value of the back-emf (it's costant after reaching the based speed)
t0=0:3:9;
w0=0.5*zeros(1,length(t0));
tq0=zeros(1,length(t0));
t1=10:5:110;
w1=183.13*ones(1,length(t1));
tq1=zeros(1,length(t1));
t2=115:5:230;
tq2=zeros(1,length(t2));
w2=314.06*ones(1,length(t2));
t3=235:5:290;
tq3=-675.5*ones(1,length(t3));
w3=314.06*ones(1,length(t3));
t4=295:5:390;
tq4=zeros(1,length(t4));
w4=392.44*ones(1,length(t4));
t5=395:5:510;
tq5=zeros(1,length(t5));
w5=314.06*ones(1,length(t5));
t6=515:5:570;
tq6=675.5*ones(1,length(t6));
w6=314.06*ones(1,length(t6));
t7=575:5:675;
tq7=zeros(1,length(t7));
w7=183.13*ones(1,length(t7));
time=[t0 t1 t2 t3 t4 t5 t6 t7];
speed=[w0 w1 w2 w3 w4 w5 w6 w7];
tq=[tq0 tq1 tq2 tq3 tq4 tq5 tq6 tq7];





