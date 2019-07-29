b=[1 0.1];
a=[1 0.2 9.01];  
Ts=0.1; fs=1/Ts; 
[bz,az]=impinvar(b,a,fs);  
Ts1=0.5; fs1=1/Ts1; 
[bz1,az1]=impinvar(b,a,fs1);
subplot(2,2,1),impulse(b,a); title('Analog Filter'); hold on; axis([0 100 -1 1])
subplot(2,2,2),dimpulse(bz,az); title('Digital Filter'); hold on; axis([0 100 -1 1])
subplot(2,2,3),dimpulse(bz1,az1); title('Digital Filter'); hold on; axis([0 100 -1 1]);
subplot(2,2,4), impulse(b,a); hold on; axis([0 100 -1 1]) 
 dimpulse(bz,az); hold on; 
dimpulse(bz1,az1); axis([0 100 -1 1])
legend('Analog Filter','Digital IIR Filter with T = 0.1s','Digital IIR Filter with T = 0.5s'); 