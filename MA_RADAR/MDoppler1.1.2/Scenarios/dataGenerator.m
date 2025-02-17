addpath ../Classes/
addpath(genpath( '../Functions/')); 
% First define targets, rx, tx and signal if not the discreteSystem will
% not be linked
%Definition of Setup
test1 = target(-20,30,0,0,5,0); 
test2 = target(0,15,0,0,5,0); 
test3 = target(40,20,0,2,2,0); 
test4 = target(-40,70,0,5,0,0); 
test5 = target(0,10,0,0,0,0); 
test6 = target(-30,0,0,0,0,0); 
         % Plots frequency of the signal v time for transmitter txi 
tx = txarray(2,0,0,0); 
rx = rxarray(4,0,0,0); 

signaltest = signal(tx,rx,test1,test2,test3); 


generate_signal(signaltest,500,'../Data/test3.mat'); 


