#		s=1*v[$2]+6*(v[$2]>v[$1])+3*(v[$2]==v[$1]);
#		w["A","C"]=0;w["A","B"]=6;
#		w["C","A"]=6;w["B","A"]=0;
#		w["B","C"]=6;w["C","B"]=0;
#awk 'BEGIN{
#		v["A"]=v["X"]=1;v["B"]=v["Y"]=2;v["C"]=v["Z"]=3;
#		w["A","Z"]=0;w["A","Y"]=6;
#		w["C","X"]=6;w["B","X"]=0;
#		w["B","Z"]=6;w["C","Y"]=0;
#	}{
#		s=1*v[$2]+w[$1,$2]*($2!=$1)+3*($2==$1);
#		print($1,$2,v[$1],v[$2],s);
#		t+=s
#	}END{
#		print(t,NR)
#	}'
#
# p := pattern ; T := strategy ; w := weight of pattern ; G(T) := score of strategy
# S(p) = G(T) + w(T(p)) == G(T) + (wT)(p)
#
awk 'BEGIN{
		ts=0;
		S["X","A"]=3; S["X","B"]=1; S["X","C"]=2;
		S["Y","A"]=4; S["Y","B"]=5; S["Y","C"]=6;
		S["Z","A"]=8; S["Z","B"]=9; S["Z","C"]=7;
	}{
		rs=S[$2,$1];
		print($1,$2,rs);
		ts+=rs
	}END{
		print(ts,NR)
	}'
