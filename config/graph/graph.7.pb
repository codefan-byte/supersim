
*cluster_1059459287073149401_f15n_0__.151_7��
(cluster_1059459287073149401_f15n_0__.151+      �? *
arg_tuple.1delay*!
get-tuple-element.3delayb*2
	reshape.9delay)      @1      @A   ��g�=b*3

reshape.10delay)      @1      @A   ��g�=b*
constant.11delay*
constant.12delay*
constant.13delay*
constant.14delay*!
get-tuple-element.2delay	b*2
	reshape.8delay
)      @1      @A   ��g�=b	*!
get-tuple-element.6delayb*!
get-tuple-element.7delayb*!
get-tuple-element.4delayb*!
get-tuple-element.5delayb*%
tuple.15delayA   @�z�=b
*��
	while.123while!    ��AA   �%?bj��
_functionalize_body_0__.32v      �? *
arg_tuple.33delay,*"
get-tuple-element.35delay-b,*
after-all.41delay.*!
	infeed.42infeed/A   ��g�=b.*"
get-tuple-element.43delay0b/*"
get-tuple-element.45delay1b0*"
get-tuple-element.44delay2b0*
constant.48delay3*"
get-tuple-element.36delay4b,*3
	gather.49delay5)      (@1       @A    �A�=b34*1
slice.50delay6)      @1      @A   ��g�=b5*3

reshape.51delay7)      @1      @A   ��g�=b6*1
slice.52delay8)      @1      @A   ��g�=b5*3

reshape.53delay9)      @1      @A   ��g�=b8*;
dynamic-slice.54delay:)      A1       AA   ��g�>b279*"
get-tuple-element.39delay;b,*9
dot.58delay<!      �A)      RA1       AA    �A�>b:;*
transpose.59delay=b<*"
get-tuple-element.40delay>b,*9
dot.60delay?!      �A)      RA1       AA    �A�>b=>*
transpose.61delay@b?*;
	negate.55delayA!       A)       A1       AA   ��g�>b:*9
add.62delayB!       A)      0A1       AA   ���>b@A*=
multiply.63delayC!       A)      0A1       AA   ���>bB*<

convert.64delayD!       A)       A1       AA   ��g�>bC*
constant.65delayE*<

convert.66delayF!      �?)      @1      @A   ��g�=bE*�
	reduce.67callG!    ���@)      A1      @A   @�g�>bDFj�
#reduce_mean_reduce_Sum-reduction.16y      �? *
x.17delayw*
y.18delayx*9
add.19delayy!      �?)       @1      @A   �危=bwx*<

convert.68delayH!      �?)      @1      @A   ��g�=bG*�]
all-reduce.69
all-reduceI!      �?)       @1      @A   �危=Z

 bHj�\
all-reduce.69_unidir-ring�      �? *�5
(all-reduce.69_unidir-ring_reduce-scatterreduce-scatter�1      @Z

 j�4
4all-reduce.69_unidir-ring_reduce-scatter_unidir-ring�      �? *�
?all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1sendrecv�)      �?1      �?Z
 j�
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_push�      �? *d
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_recvstart
recv-start�H�PZ
*q
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_sendstart
send-start�)      �?H�PZ
 b�*f
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_senddone	send-done�H�PZ
 b�*q
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_recvdone	recv-done�1      �?H�PZ
b��*U
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_rootnull�b��*�
@all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_reduction_1call�b�j�
sum.20_phase_1�      �? *
x.21_phase_1delay�*
y.22_phase_1delay�*D
add.23_phase_1delay�!      �?)      �?1      �?A   �十=b��*�
?all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2sendrecv�)      �?1      �?Z
 b�j�
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_push�      �? *d
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_recvstart
recv-start�H�PZ
*q
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_sendstart
send-start�)      �?H�PZ
 b�*f
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_senddone	send-done�H�PZ
 b�*q
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_recvdone	recv-done�1      �?H�PZ
b��*U
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_rootnull�b��*�
@all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_reduction_2call�b�j�
sum.20_phase_2�      �? *
x.21_phase_2delay�*
y.22_phase_2delay�*D
add.23_phase_2delay�!      �?)      �?1      �?A   �十=b��*�
?all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3sendrecv�)      �?1      �?Z
 b�j�
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_push�      �? *d
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_recvstart
recv-start�H�PZ
*q
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_sendstart
send-start�)      �?H�PZ
 b�*f
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_senddone	send-done�H�PZ
 b�*q
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_recvdone	recv-done�1      �?H�PZ
b��*U
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_rootnull�b��*�
@all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_reduction_3call�b�j�
sum.20_phase_3�      �? *
x.21_phase_3delay�*
y.22_phase_3delay�*D
add.23_phase_3delay�!      �?)      �?1      �?A   �十=b��*�
?all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4sendrecv�)      �?1      �?Z
 b�j�
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_push�      �? *d
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_recvstart
recv-start�H�PZ
*q
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_sendstart
send-start�)      �?H�PZ
 b�*f
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_senddone	send-done�H�PZ
 b�*q
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_recvdone	recv-done�1      �?H�PZ
b��*U
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_rootnull�b��*�
@all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_reduction_4call�b�j�
sum.20_phase_4�      �? *
x.21_phase_4delay�*
y.22_phase_4delay�*D
add.23_phase_4delay�!      �?)      �?1      �?A   �十=b��*�
?all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5sendrecv�)      �?1      �?Z
 b�j�
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_push�      �? *d
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_recvstart
recv-start�H�PZ
*q
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_sendstart
send-start�)      �?H�PZ
 b�*f
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_senddone	send-done�H�PZ
 b�*q
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_recvdone	recv-done�1      �?H�PZ
b��*U
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_rootnull�b��*�
@all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_reduction_5call�b�j�
sum.20_phase_5�      �? *
x.21_phase_5delay�*
y.22_phase_5delay�*D
add.23_phase_5delay�!      �?)      �?1      �?A   �十=b��*�
?all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6sendrecv�)      �?1      �?Z
 b�j�
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_push�      �? *d
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_recvstart
recv-start�H�PZ
*q
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_sendstart
send-start�)      �?H�PZ
 b�*f
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_senddone	send-done�H�PZ
 b�*q
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_recvdone	recv-done�1      �?H�PZ
b��*U
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_rootnull�b��*�
@all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_reduction_6call�b�j�
sum.20_phase_6�      �? *
x.21_phase_6delay�*
y.22_phase_6delay�*D
add.23_phase_6delay�!      �?)      �?1      �?A   �十=b��*�
?all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7sendrecv�)      �?1      �?Z
 b�j�
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_push�      �? *d
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_recvstart
recv-start�H�PZ
*q
Iall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_sendstart
send-start�)      �?H�PZ
 b�*f
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_senddone	send-done�H�PZ
 b�*q
Hall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_recvdone	recv-done�1      �?H�PZ
b��*U
Dall-reduce.69_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_rootnull�b��*�
@all-reduce.69_unidir-ring_reduce-scatter_unidir-ring_reduction_7call�b�j�
sum.20_phase_7�      �? *
x.21_phase_7delay�*
y.22_phase_7delay�*D
add.23_phase_7delay�!      �?)      �?1      �?A   �十=b��*�&
$all-reduce.69_unidir-ring_all-gather
all-gather�1      @Z

 b�j�&
0all-reduce.69_unidir-ring_all-gather_unidir-ring�      �? *�
;all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_1sendrecv�)      �?1      �?Z
 j�
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_1_push�      �? *`
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_1_recvstart
recv-start�H�PZ
*m
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_1_sendstart
send-start�)      �?H�PZ
 b�*b
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_1_senddone	send-done�H�PZ
 b�*m
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_1_recvdone	recv-done�1      �?H�PZ
b��*Q
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_1_rootnull�b��*�
;all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_2sendrecv�)      �?1      �?Z
 b�j�
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_2_push�      �? *`
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_2_recvstart
recv-start�H�P	Z
*m
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_2_sendstart
send-start�)      �?H�P	Z
 b�*b
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_2_senddone	send-done�H�P	Z
 b�*m
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_2_recvdone	recv-done�1      �?H�P	Z
b��*Q
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_2_rootnull�b��*�
;all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_3sendrecv�)      �?1      �?Z
 b�j�
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_3_push�      �? *`
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_3_recvstart
recv-start�H�P
Z
*m
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_3_sendstart
send-start�)      �?H�P
Z
 b�*b
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_3_senddone	send-done�H�P
Z
 b�*m
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_3_recvdone	recv-done�1      �?H�P
Z
b��*Q
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_3_rootnull�b��*�
;all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_4sendrecv�)      �?1      �?Z
 b�j�
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_4_push�      �? *`
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_4_recvstart
recv-start�H�PZ
*m
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_4_sendstart
send-start�)      �?H�PZ
 b�*b
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_4_senddone	send-done�H�PZ
 b�*m
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_4_recvdone	recv-done�1      �?H�PZ
b��*Q
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_4_rootnull�b��*�
;all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_5sendrecv�)      �?1      �?Z
 b�j�
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_5_push�      �? *`
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_5_recvstart
recv-start�H�PZ
*m
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_5_sendstart
send-start�)      �?H�PZ
 b�*b
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_5_senddone	send-done�H�PZ
 b�*m
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_5_recvdone	recv-done�1      �?H�PZ
b��*Q
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_5_rootnull�b��*�
;all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_6sendrecv�)      �?1      �?Z
 b�j�
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_6_push�      �? *`
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_6_recvstart
recv-start�H�PZ
*m
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_6_sendstart
send-start�)      �?H�PZ
 b�*b
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_6_senddone	send-done�H�PZ
 b�*m
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_6_recvdone	recv-done�1      �?H�PZ
b��*Q
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_6_rootnull�b��*�
;all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_7sendrecv�)      �?1      �?Z
 b�j�
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_7_push�      �? *`
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_7_recvstart
recv-start�H�PZ
*m
Eall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_7_sendstart
send-start�)      �?H�PZ
 b�*b
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_7_senddone	send-done�H�PZ
 b�*m
Dall-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_7_recvdone	recv-done�1      �?H�PZ
b��*Q
@all-reduce.69_unidir-ring_all-gather_unidir-ring_sendrecv_7_rootnull�b��*
constant.70delayJ*>
multiply.71delayK!      �?)       @1      @A   �危=bIJ*3

reshape.94delayL)      @1      @A   ��g�=bK*
tuple.95delayMA   ��g�=bL*
after-all.96delayN*$

outfeed.97outfeedOA   ��g�=bMN*
tuple.98delayP*"
get-tuple-element.34delayQb,*
constant.46delayR*9
add.47delayS!      �?)       @1      @A   �危=bQR*"
get-tuple-element.37delayTb,*
constant.56delayU*9
add.57delayV!      �?)      0@1       @A   ���=bTU*
tuple.99delayWA   ��g�=bV*#
get-tuple-element.100delayXbW*"
get-tuple-element.38delayYb,* 
	tuple.101delayZA   ��g�=bY*#
get-tuple-element.102delay[bZ*
constant.72delay\*5
broadcast.73delay])      @1       AA   ��g�>b\*>
multiply.74delay^!       A)      0A1       AA   ���>b]B*
constant.75delay_*5
broadcast.76delay`)      @1       AA   ��g�>b_*>
multiply.77delaya!       A)      0A1       AA   ���>b^`*9
dot.85delayb!      �A)      RA1       AA    �A�>ba>*
transpose.86delaycbb*9
dot.87delayd!      �A)      0A1      PAA    �A�>bc:*
transpose.88delayebd*�]
all-reduce.89
all-reducef!      0A)      `A1      PAA   ���>Z

 bej�\
all-reduce.89_unidir-ring�      �? *�5
(all-reduce.89_unidir-ring_reduce-scatterreduce-scatter�1      PAZ

 j�4
4all-reduce.89_unidir-ring_reduce-scatter_unidir-ring�      �? *�
?all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1sendrecv�)       A1       AZ
 j�
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_push�      �? *d
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_recvstart
recv-start�H�PZ
*q
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_senddone	send-done�H�PZ
 b�*q
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_rootnull�b��*�
@all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_reduction_1call�b�j�
sum.28_phase_1�      �? *
x.29_phase_1delay�*
y.30_phase_1delay�*D
add.31_phase_1delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2sendrecv�)       A1       AZ
 b�j�
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_push�      �? *d
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_recvstart
recv-start�H�PZ
*q
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_senddone	send-done�H�PZ
 b�*q
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_rootnull�b��*�
@all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_reduction_2call�b�j�
sum.28_phase_2�      �? *
x.29_phase_2delay�*
y.30_phase_2delay�*D
add.31_phase_2delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3sendrecv�)       A1       AZ
 b�j�
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_push�      �? *d
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_recvstart
recv-start�H�PZ
*q
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_senddone	send-done�H�PZ
 b�*q
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_rootnull�b��*�
@all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_reduction_3call�b�j�
sum.28_phase_3�      �? *
x.29_phase_3delay�*
y.30_phase_3delay�*D
add.31_phase_3delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4sendrecv�)       A1       AZ
 b�j�
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_push�      �? *d
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_recvstart
recv-start�H�PZ
*q
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_senddone	send-done�H�PZ
 b�*q
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_rootnull�b��*�
@all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_reduction_4call�b�j�
sum.28_phase_4�      �? *
x.29_phase_4delay�*
y.30_phase_4delay�*D
add.31_phase_4delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5sendrecv�)       A1       AZ
 b�j�
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_push�      �? *d
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_recvstart
recv-start�H�PZ
*q
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_senddone	send-done�H�PZ
 b�*q
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_rootnull�b��*�
@all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_reduction_5call�b�j�
sum.28_phase_5�      �? *
x.29_phase_5delay�*
y.30_phase_5delay�*D
add.31_phase_5delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6sendrecv�)       A1       AZ
 b�j�
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_push�      �? *d
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_recvstart
recv-start�H�PZ
*q
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_senddone	send-done�H�PZ
 b�*q
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_rootnull�b��*�
@all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_reduction_6call�b�j�
sum.28_phase_6�      �? *
x.29_phase_6delay�*
y.30_phase_6delay�*D
add.31_phase_6delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7sendrecv�)       A1       AZ
 b�j�
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_push�      �? *d
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_recvstart
recv-start�H�PZ
*q
Iall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_senddone	send-done�H�PZ
 b�*q
Hall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.89_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_rootnull�b��*�
@all-reduce.89_unidir-ring_reduce-scatter_unidir-ring_reduction_7call�b�j�
sum.28_phase_7�      �? *
x.29_phase_7delay�*
y.30_phase_7delay�*D
add.31_phase_7delay�!       A)      0A1       AA   ���>b��*�&
$all-reduce.89_unidir-ring_all-gather
all-gather�1      PAZ

 b�j�&
0all-reduce.89_unidir-ring_all-gather_unidir-ring�      �? *�
;all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_1sendrecv�)       A1       AZ
 j�
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_1_push�      �? *`
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_1_recvstart
recv-start�H�PZ
*m
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_1_sendstart
send-start�)       AH�PZ
 b�*b
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_1_senddone	send-done�H�PZ
 b�*m
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_1_recvdone	recv-done�1       AH�PZ
b��*Q
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_1_rootnull�b��*�
;all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_2sendrecv�)       A1       AZ
 b�j�
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_2_push�      �? *`
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_2_recvstart
recv-start�H�PZ
*m
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_2_sendstart
send-start�)       AH�PZ
 b�*b
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_2_senddone	send-done�H�PZ
 b�*m
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_2_recvdone	recv-done�1       AH�PZ
b��*Q
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_2_rootnull�b��*�
;all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_3sendrecv�)       A1       AZ
 b�j�
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_3_push�      �? *`
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_3_recvstart
recv-start�H�PZ
*m
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_3_sendstart
send-start�)       AH�PZ
 b�*b
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_3_senddone	send-done�H�PZ
 b�*m
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_3_recvdone	recv-done�1       AH�PZ
b��*Q
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_3_rootnull�b��*�
;all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_4sendrecv�)       A1       AZ
 b�j�
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_4_push�      �? *`
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_4_recvstart
recv-start�H�PZ
*m
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_4_sendstart
send-start�)       AH�PZ
 b�*b
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_4_senddone	send-done�H�PZ
 b�*m
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_4_recvdone	recv-done�1       AH�PZ
b��*Q
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_4_rootnull�b��*�
;all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_5sendrecv�)       A1       AZ
 b�j�
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_5_push�      �? *`
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_5_recvstart
recv-start�H�PZ
*m
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_5_sendstart
send-start�)       AH�PZ
 b�*b
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_5_senddone	send-done�H�PZ
 b�*m
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_5_recvdone	recv-done�1       AH�PZ
b��*Q
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_5_rootnull�b��*�
;all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_6sendrecv�)       A1       AZ
 b�j�
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_6_push�      �? *`
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_6_recvstart
recv-start�H�PZ
*m
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_6_sendstart
send-start�)       AH�PZ
 b�*b
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_6_senddone	send-done�H�PZ
 b�*m
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_6_recvdone	recv-done�1       AH�PZ
b��*Q
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_6_rootnull�b��*�
;all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_7sendrecv�)       A1       AZ
 b�j�
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_7_push�      �? *`
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_7_recvstart
recv-start�H�PZ
*m
Eall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_7_sendstart
send-start�)       AH�PZ
 b�*b
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_7_senddone	send-done�H�PZ
 b�*m
Dall-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_7_recvdone	recv-done�1       AH�PZ
b��*Q
@all-reduce.89_unidir-ring_all-gather_unidir-ring_sendrecv_7_rootnull�b��*
constant.90delayg*5
broadcast.91delayh)      @1      PAA   `�g�>bg*>
multiply.92delayi!      0A)      `A1      PAA   ���>bfh*>
subtract.93delayj!      0A)      `A1      PAA   ���>b;i* 
	tuple.103delaykA   ��g�=bj*#
get-tuple-element.104delaylbk*9
dot.78delaym!      �A)      0A1      PAA    �A�>ba=*
transpose.79delaynbm*�]
all-reduce.80
all-reduceo!      0A)      `A1      PAA   ���>Z

 bnj�\
all-reduce.80_unidir-ring�      �? *�5
(all-reduce.80_unidir-ring_reduce-scatterreduce-scatter�1      PAZ

 j�4
4all-reduce.80_unidir-ring_reduce-scatter_unidir-ring�      �? *�
?all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1sendrecv�)       A1       AZ
 j�
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_push�      �? *d
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_recvstart
recv-start�H�PZ
*q
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_senddone	send-done�H�PZ
 b�*q
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_1_rootnull�b��*�
@all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_reduction_1call�b�j�
sum.24_phase_1�      �? *
x.25_phase_1delay�*
y.26_phase_1delay�*D
add.27_phase_1delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2sendrecv�)       A1       AZ
 b�j�
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_push�      �? *d
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_recvstart
recv-start�H�PZ
*q
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_senddone	send-done�H�PZ
 b�*q
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_2_rootnull�b��*�
@all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_reduction_2call�b�j�
sum.24_phase_2�      �? *
x.25_phase_2delay�*
y.26_phase_2delay�*D
add.27_phase_2delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3sendrecv�)       A1       AZ
 b�j�
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_push�      �? *d
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_recvstart
recv-start�H�PZ
*q
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_sendstart
send-start�)       AH�PZ
 b�*f
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_senddone	send-done�H�PZ
 b�*q
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_recvdone	recv-done�1       AH�PZ
b��*U
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_3_rootnull�b��*�
@all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_reduction_3call�b�j�
sum.24_phase_3�      �? *
x.25_phase_3delay�*
y.26_phase_3delay�*D
add.27_phase_3delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4sendrecv�)       A1       AZ
 b�j�
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_push�      �? *d
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_recvstart
recv-start�H�P Z
*q
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_sendstart
send-start�)       AH�P Z
 b�*f
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_senddone	send-done�H�P Z
 b�*q
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_recvdone	recv-done�1       AH�P Z
b��*U
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_4_rootnull�b��*�
@all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_reduction_4call�b�j�
sum.24_phase_4�      �? *
x.25_phase_4delay�*
y.26_phase_4delay�*D
add.27_phase_4delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5sendrecv�)       A1       AZ
 b�j�
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_push�      �? *d
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_recvstart
recv-start�H�P!Z
*q
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_sendstart
send-start�)       AH�P!Z
 b�*f
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_senddone	send-done�H�P!Z
 b�*q
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_recvdone	recv-done�1       AH�P!Z
b��*U
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_5_rootnull�b��*�
@all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_reduction_5call�b�j�
sum.24_phase_5�      �? *
x.25_phase_5delay�*
y.26_phase_5delay�*D
add.27_phase_5delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6sendrecv�)       A1       AZ
 b�j�
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_push�      �? *d
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_recvstart
recv-start�H�P"Z
*q
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_sendstart
send-start�)       AH�P"Z
 b�*f
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_senddone	send-done�H�P"Z
 b�*q
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_recvdone	recv-done�1       AH�P"Z
b��*U
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_6_rootnull�b��*�
@all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_reduction_6call�b�j�
sum.24_phase_6�      �? *
x.25_phase_6delay�*
y.26_phase_6delay�*D
add.27_phase_6delay�!       A)      0A1       AA   ���>b��*�
?all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7sendrecv�)       A1       AZ
 b�j�
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_push�      �? *d
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_recvstart
recv-start�H�P#Z
*q
Iall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_sendstart
send-start�)       AH�P#Z
 b�*f
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_senddone	send-done�H�P#Z
 b�*q
Hall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_recvdone	recv-done�1       AH�P#Z
b��*U
Dall-reduce.80_unidir-ring_reduce-scatter_unidir-ring_sendrecv_7_rootnull�b��*�
@all-reduce.80_unidir-ring_reduce-scatter_unidir-ring_reduction_7call�b�j�
sum.24_phase_7�      �? *
x.25_phase_7delay�*
y.26_phase_7delay�*D
add.27_phase_7delay�!       A)      0A1       AA   ���>b��*�&
$all-reduce.80_unidir-ring_all-gather
all-gather�1      PAZ

 b�j�&
0all-reduce.80_unidir-ring_all-gather_unidir-ring�      �? *�
;all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_1sendrecv�)       A1       AZ
 j�
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_1_push�      �? *`
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_1_recvstart
recv-start�H�P$Z
*m
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_1_sendstart
send-start�)       AH�P$Z
 b�*b
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_1_senddone	send-done�H�P$Z
 b�*m
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_1_recvdone	recv-done�1       AH�P$Z
b��*Q
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_1_rootnull�b��*�
;all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_2sendrecv�)       A1       AZ
 b�j�
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_2_push�      �? *`
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_2_recvstart
recv-start�H�P%Z
*m
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_2_sendstart
send-start�)       AH�P%Z
 b�*b
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_2_senddone	send-done�H�P%Z
 b�*m
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_2_recvdone	recv-done�1       AH�P%Z
b��*Q
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_2_rootnull�b��*�
;all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_3sendrecv�)       A1       AZ
 b�j�
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_3_push�      �? *`
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_3_recvstart
recv-start�H�P&Z
*m
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_3_sendstart
send-start�)       AH�P&Z
 b�*b
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_3_senddone	send-done�H�P&Z
 b�*m
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_3_recvdone	recv-done�1       AH�P&Z
b��*Q
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_3_rootnull�b��*�
;all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_4sendrecv�)       A1       AZ
 b�j�
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_4_push�      �? *`
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_4_recvstart
recv-start�H�P'Z
*m
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_4_sendstart
send-start�)       AH�P'Z
 b�*b
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_4_senddone	send-done�H�P'Z
 b�*m
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_4_recvdone	recv-done�1       AH�P'Z
b��*Q
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_4_rootnull�b��*�
;all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_5sendrecv�)       A1       AZ
 b�j�
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_5_push�      �? *`
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_5_recvstart
recv-start�H�P(Z
*m
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_5_sendstart
send-start�)       AH�P(Z
 b�*b
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_5_senddone	send-done�H�P(Z
 b�*m
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_5_recvdone	recv-done�1       AH�P(Z
b��*Q
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_5_rootnull�b��*�
;all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_6sendrecv�)       A1       AZ
 b�j�
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_6_push�      �? *`
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_6_recvstart
recv-start�H�P)Z
*m
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_6_sendstart
send-start�)       AH�P)Z
 b�*b
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_6_senddone	send-done�H�P)Z
 b�*m
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_6_recvdone	recv-done�1       AH�P)Z
b��*Q
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_6_rootnull�b��*�
;all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_7sendrecv�)       A1       AZ
 b�j�
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_7_push�      �? *`
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_7_recvstart
recv-start�H�P*Z
*m
Eall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_7_sendstart
send-start�)       AH�P*Z
 b�*b
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_7_senddone	send-done�H�P*Z
 b�*m
Dall-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_7_recvdone	recv-done�1       AH�P*Z
b��*Q
@all-reduce.80_unidir-ring_all-gather_unidir-ring_sendrecv_7_rootnull�b��*
constant.81delayp*5
broadcast.82delayq)      @1      PAA   `�g�>bp*>
multiply.83delayr!      0A)      `A1      PAA   ���>boq*>
subtract.84delays!      0A)      `A1      PAA   ���>b>r* 
	tuple.105delaytA   ��g�=bs*#
get-tuple-element.106delayubt*&
	tuple.107delayvA   @�z�=bSK4X[luj�
cond_wrapper.119�      �? *

inputs.120delay�*�
call.121call�!      �?A   �Z޸=b�j�
_functionalize_cond_0__.108�      �? *
arg_tuple.109delay�*%
get-tuple-element.111delay�b�*%
get-tuple-element.112delay�b�*%
get-tuple-element.113delay�b�*%
get-tuple-element.115delay�b�*%
get-tuple-element.116delay�b�*%
get-tuple-element.110delay�b�*%
get-tuple-element.114delay�b�*A
compare.117delay�!      �?)       @1      �?A   ��T�=b��*"
	tuple.118delay�A   ��g�=b�*%
get-tuple-element.122delay�b�*#
get-tuple-element.124delayb*#
get-tuple-element.125delayb*#
get-tuple-element.126delayb*#
get-tuple-element.127delayb*#
get-tuple-element.128delayb*#
get-tuple-element.129delayb*#
get-tuple-element.130delayb*&
	tuple.131delayA   @�z�=b*#
get-tuple-element.132delayb*#
get-tuple-element.134delayb*#
get-tuple-element.133delayb*4
reshape.138delay)      @1      @A   ��g�=b* 
	tuple.139delayA   ��g�=b*#
get-tuple-element.140delayb*#
get-tuple-element.136delayb*4
reshape.141delay )      PA1      PAA   ��g�>b* 
	tuple.142delay!A   ��g�=b *#
get-tuple-element.143delay"b!*#
get-tuple-element.137delay#b*4
reshape.144delay$)      PA1      PAA   ��g�>b#* 
	tuple.145delay%A   ��g�=b$*#
get-tuple-element.146delay&b%*#
get-tuple-element.135delay'b*4
reshape.147delay()       @1       @A   ��g�=b'* 
	tuple.148delay)A   ��g�=b(*#
get-tuple-element.149delay*b)*#
	tuple.150delay+A   ��g�=b"&*