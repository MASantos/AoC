
awk 'BEGIN{topc[1]=topc[2]=topc[3]=0;c=0}{\
 if(NF==0){\
	if(c>topc[1]){\
		topc[3]=topc[2];topc[2]=topc[1];topc[1]=c \
	}else{\
		if(c>topc[2]){ \
			topc[3]=topc[2];topc[2]=c \
		}else{\
			if(c>topc[3])topc[3]=c \
		}\
	};\
	print(c,topc[1],topc[2],topc[3]) ;\
	c=0 
 };\
 c+=$1 \
}END{\
	if(c>topc[1]){\
		topc[3]=topc[2];topc[2]=topc[1];topc[1]=c \
	}else{\
		if(c>topc[2]){ \
			topc[3]=topc[2];topc[2]=c \
		}else{\
			if(c>topc[3])topc[3]=c \
		}\
	};\
	print(c,topc[1],topc[2],topc[3]) ;\
 tc=topc[1]+topc[2]+topc[3]; \
 print(tc) \
}'
