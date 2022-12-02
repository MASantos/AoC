


#cat input.txt | \
awk 'BEGIN{mxc=c=0}{if(NF==0){mxc=c>mxc?c:mxc;c=0}c+=$1}END{mxc=c>mxc?c:mxc;print(mxc)}'

