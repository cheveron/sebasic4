 
 �adopted from Commodore BASIC 9  n=100  d  :�N may be incrased, but will slow execution   ln=�(10  
  *n/4    ) (  nd=1     2 �a(ln) <  n9=0      F$  pd=0     :�First pre-digit is a 0 P � Z �j=1    �ln d%  a(j-1    )=2    :�start with 2s n �j x � � �j=1    �n �  q=0      �' �i=ln�1    �-1    :�Work backwards �  x=10  
  *a(i-1    )+q*i �T  a(i-1    )=x-(2    *i-1    )*�(x/(2    *i-1    )):�X - INT ( X / Y ) * Y �  q=�(x/(2    *i-1    )) � �i �%  a(0     )=q-10  
  *�(q/10  
  ) �  q=�(q/10  
  ) �$ �q=9  	  �n9=n9+1    :�450  �  � �q�10  
  ��350  ^  �	 �q == 10  d=pd+1    :�500  �  �n9<0     ��320  @  �k=1    �n9"  d=0     :�500  � , �k6 �end if@  pd=0     J  n9=0     T	 �q <> 10^  d=pd:�500  � h  pd=qr �n9=0     ��450  � | �k=1    �n9�  d=9  	  :�500  � � �k�  n9=0     � �j� М(pd)� �� �� �output digits� �nd=0     �М(d);:�� �d=0     �� М(d);".";  nd=0     & �