	5 REM union flag
	10 LET r=2: LET w=7: LET b=1
	20 BORDER 0: PAPER b: INK w: CLS
	30 REM black in bottom of screen
	40 INVERSE 1
	50 FOR n=40 TO 0 STEP -8
	60 PLOT PAPER 0;7,n: DRAW PAPER 0;241,0
	70 NEXT n: INVERSE 0
	100 REM draw in white parts
	105 REM St. George
	110 FOR n=0 TO 7
	120 PLOT 104+n,175: DRAW 0,-35
	130 PLOT 151-n,175: DRAW 0,-35
	140 PLOT 151-n,48: DRAW 0,35
	150 PLOT 104+n,48: DRAW 0,35
	160 NEXT n
	200 FOR n=0 TO 11
	210 PLOT 0,139-n: DRAW 111,0
	220 PLOT 255,139-n: DRAW -111,0
	230 PLOT 255,84+n: DRAW -111,0
	240 PLOT 0,84+n: DRAW 111,0
	250 NEXT n
	300 REM St. Andrew
	310 FOR n=0 TO 35
	320 PLOT 1+2*n,175-n: DRAW 32,0
	330 PLOT 224-2*n,175-n: DRAW 16,0
	340 PLOT 254-2*n,48+n: DRAW-32,0 
	350 PLOT 17+2*n,48+n: DRAW 16,0
	360 NEXT n
	370 FOR n=0 TO 19
	380 PLOT 185+2*n,140+n: DRAW 32,0 
	390 PLOT 200+2*n,83-n: DRAW 16,0
	400 PLOT 39-2*n,83-n: DRAW 32,0
	410 PLOT 54-2*n,140+n: DRAW -16,0
	420 NEXT n
	425 REM fill in extra bits 
	430 FOR n=0 TO 15
	440 PLOT 255,160+n: DRAW 2*n-30,0 
	450 PLOT 0,63-n: DRAW 31-2*n,0
	460 NEXT n
	470 FOR n=0 TO 7
	480 PLOT 0,160+n: DRAW 14-2*n,0
	485 PLOT 255,63-n: DRAW 2*n-15,0 
	490 NEXT n
	500 REM red stripes 
	510 INVERSE 1
	520 REM St George
	530 FOR n=96 TO 120 STEP 8
	540 PLOT PAPER r;7,n: DRAW PAPER r;241,0 
	550 NEXT n
	560 FOR n=112 TO 136 STEP 8
	570 PLOT PAPER r;n,168: DRAW PAPER r;0,-113 
	580 NEXT n
	600 REM St Patrick
	610 PLOT PAPER r;170,140: DRAW PAPER r;70,35 
	620 PLOT PAPER r;179,140: DRAW PAPER r;70,35 
	630 PLOT PAPER r;199,83: DRAW PAPER r;56,-28 
	640 PLOT PAPER r;184,83: DRAW PAPER r;70,-35 
	650 PLOT PAPER r;86,83: DRAW PAPER r;-70,-35 
	660 PLOT PAPER r;72,83: DRAW PAPER r;-70,-35 
	670 PLOT PAPER r;56,140: DRAW PAPER r;-56,28 
	680 PLOT PAPER r;71,140: DRAW PAPER r;-70,35 
	690 INVERSE 0: PAPER 0: INK 7
