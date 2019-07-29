rp = 0.5; wp = (1.2/4); rs = 40; ws = (2/4); 
[n, wn] = ellipord(wp, ws, rp, rs); 
[b, a] = ellip(n, rp, rs, wp);
[h, w] = freqz(b,a); plot(w, abs(h))