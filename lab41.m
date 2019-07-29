b=[1 0.1]; 
a=[1 0.2 9.01];  
[h1,w1] = freqs(b,a);
subplot(311), plot(w1/2*pi,20*log10(abs(h1)));grid on; 
xlabel 'Frequency (rad/s)', ylabel Magnitude(dB)
title('Analog Filter');
Ts=0.1;
fs=1/Ts; 
[bz,az]=impinvar(b,a,fs); 
[h2,w2] = freqz(bz,az); 
subplot(3,1,2), plot(w2/2*pi,20*log10(abs(h2)));grid on; 
xlabel 'Frequency (rad/s)', ylabel Magnitude(dB) 
title('Digital Filter,Ts=0.1');   
Ts=0.5; fs=1/Ts; 
[bz,az]=impinvar(b,a,fs); 
[h2,w2] = freqz(bz,az); 
subplot(313), plot(w2/2*pi,20*log10(abs(h2)));grid on;
 xlabel 'Frequency (rad/s)', ylabel Magnitude(dB)
 title('Digital Filter,Ts=0.5');