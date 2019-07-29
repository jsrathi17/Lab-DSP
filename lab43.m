b=[1 0.1];
a=[1 0.2 9.01];
Ts=0.1; fs=1/Ts;
[bz,az] = bilinear(b,a,fs)
Ts1=0.5; fs1=1/Ts1;
[bz1,az1]=bilinear(b,a,fs1);
[h1,w1] = freqs(b,a);
subplot(311), plot(w1/2*pi,20*log10(abs(h1))); grid on;
xlabel 'Frequency (rad/s)', ylabel Magnitude(dB) 
title('Analog Filter'); 
[h2,w2] = freqz(bz,az); 
subplot(312), plot(w2/2*pi,20*log10(abs(h2))); grid on; 
xlabel 'Frequency (rad/s)', ylabel Magnitude(dB) 
title('Digital Filter,Ts=0.1'); 
[h2,w2] = freqz(bz,az); 
subplot(313), plot(w2/2*pi,20*log10(abs(h2))); 
grid on; xlabel 'Frequency (rad/s)', ylabel Magnitude(dB) 
title('Digital Filter,Ts=0.5') 