rp = 0.5; 
wp = (1.2/4); 
rs = 40; 
ws = (2/4);
[n, wn] = buttord(wp, ws, rp, rs); 
[b, a] = butter(n, wn);
[h,w] = freqz(b,a)
plot(w, abs(h)) 