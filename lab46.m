rp = 0.5; wp = (1.2/4); rs = 40; ws = (2/4); 
[n, wn] = cheb2ord(wp, ws, rp, rs); 
[b, a] = cheby2(n, rs, wp);
[h, w] = freqz(b,a);
plot(w, abs(h)) 