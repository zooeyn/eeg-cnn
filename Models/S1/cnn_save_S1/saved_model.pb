Ê£	
Û±
.
Abs
x"T
y"T"
Ttype:

2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68É
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¤D*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	¤D*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ä'
valueº'B·' B°'
Û
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
¦

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
¦

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
:
3iter
	4decay
5learning_rate
6momentum*
.
0
1
#2
$3
+4
,5*
.
0
1
#2
$3
+4
,5*

70
81
92
:3* 
°
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

@serving_default* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*

70
81* 
°
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
Factivity_regularizer_fn
*&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*

90
:1* 
°
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
Wactivity_regularizer_fn
**&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*

+0
,1*
* 

Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
'
0
1
2
3
4*

^0
_1*
* 
* 
* 
* 
* 
* 

70
81* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

90
:1* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	`total
	acount
b	variables
c	keras_api*
H
	dtotal
	ecount
f
_fn_kwargs
g	variables
h	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

b	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

d0
e1*

g	variables*

serving_default_conv2d_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿ@

StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_710583
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
î
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_710843
Ñ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_710895ÅÀ
û
E
.__inference_conv2d_activity_regularizer_709860
x
identity0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
¤	

+__inference_sequential_layer_call_fn_710216
conv2d_input!
unknown:
	unknown_0:
	unknown_1:	¤D
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_710180o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&
_user_specified_nameconv2d_input
ã

¦
__inference_loss_fn_2_710721G
4dense_kernel_regularizer_abs_readvariableop_resource:	¤D
identity¢+dense/kernel/Regularizer/Abs/ReadVariableOp¡
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp4dense_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: t
NoOpNoOp,^dense/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp
¢
×
B__inference_conv2d_layer_call_and_return_conditional_losses_709915

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íÓ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¤	

+__inference_sequential_layer_call_fn_710036
conv2d_input!
unknown:
	unknown_0:
	unknown_1:	¤D
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_710019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&
_user_specified_nameconv2d_input
N
á
F__inference_sequential_layer_call_and_return_conditional_losses_710180

inputs'
conv2d_710120:
conv2d_710122:
dense_710135:	¤D
dense_710137: 
dense_1_710148:
dense_1_710150:
identity

identity_1

identity_2¢conv2d/StatefulPartitionedCall¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp¢dense/StatefulPartitionedCall¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOp¢dense_1/StatefulPartitionedCallô
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_710120conv2d_710122*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_709915Ç
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *7
f2R0
.__inference_conv2d_activity_regularizer_709860w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¨
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: î
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_709869Ú
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_709936
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_710135dense_710137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_709961Ä
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *6
f1R/
-__inference_dense_activity_regularizer_709885u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¥
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_710148dense_1_710150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_709986
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_710120*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_710122*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_710135*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_710137*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_2Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ß
NoOpNoOp^conv2d/StatefulPartitionedCall+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp^dense/StatefulPartitionedCall*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ã
E__inference_dense_layer_call_and_return_all_conditional_losses_710668

inputs
unknown:	¤D
	unknown_0:
identity

identity_1¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_709961¤
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *6
f1R/
-__inference_dense_activity_regularizer_709885o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¤D: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D
 
_user_specified_nameinputs
	

+__inference_sequential_layer_call_fn_710389

inputs!
unknown:
	unknown_0:
	unknown_1:	¤D
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_710019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_709869

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬N
ç
F__inference_sequential_layer_call_and_return_conditional_losses_710342
conv2d_input'
conv2d_710282:
conv2d_710284:
dense_710297:	¤D
dense_710299: 
dense_1_710310:
dense_1_710312:
identity

identity_1

identity_2¢conv2d/StatefulPartitionedCall¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp¢dense/StatefulPartitionedCall¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOp¢dense_1/StatefulPartitionedCallú
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_710282conv2d_710284*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_709915Ç
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *7
f2R0
.__inference_conv2d_activity_regularizer_709860w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¨
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: î
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_709869Ú
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_709936
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_710297dense_710299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_709961Ä
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *6
f1R/
-__inference_dense_activity_regularizer_709885u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¥
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_710310dense_1_710312*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_709986
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_710282*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_710284*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_710297*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_710299*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_2Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ß
NoOpNoOp^conv2d/StatefulPartitionedCall+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp^dense/StatefulPartitionedCall*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:^ Z
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&
_user_specified_nameconv2d_input
ò

$__inference_signature_wrapper_710583
conv2d_input!
unknown:
	unknown_0:
	unknown_1:	¤D
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_709847o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&
_user_specified_nameconv2d_input
¨


__inference_loss_fn_3_710732@
2dense_bias_regularizer_abs_readvariableop_resource:
identity¢)dense/bias/Regularizer/Abs/ReadVariableOp
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOp2dense_bias_regularizer_abs_readvariableop_resource*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: \
IdentityIdentitydense/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: r
NoOpNoOp*^dense/bias/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp
Ð8
à
"__inference__traced_restore_710895
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:2
assignvariableop_2_dense_kernel:	¤D+
assignvariableop_3_dense_bias:3
!assignvariableop_4_dense_1_kernel:-
assignvariableop_5_dense_1_bias:%
assignvariableop_6_sgd_iter:	 &
assignvariableop_7_sgd_decay: .
$assignvariableop_8_sgd_learning_rate: )
assignvariableop_9_sgd_momentum: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: 
identity_15¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9é
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B é
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_sgd_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp$assignvariableop_8_sgd_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ð
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ú
D
-__inference_dense_activity_regularizer_709885
x
identity0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
¬N
ç
F__inference_sequential_layer_call_and_return_conditional_losses_710279
conv2d_input'
conv2d_710219:
conv2d_710221:
dense_710234:	¤D
dense_710236: 
dense_1_710247:
dense_1_710249:
identity

identity_1

identity_2¢conv2d/StatefulPartitionedCall¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp¢dense/StatefulPartitionedCall¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOp¢dense_1/StatefulPartitionedCallú
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_710219conv2d_710221*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_709915Ç
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *7
f2R0
.__inference_conv2d_activity_regularizer_709860w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¨
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: î
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_709869Ú
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_709936
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_710234dense_710236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_709961Ä
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *6
f1R/
-__inference_dense_activity_regularizer_709885u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¥
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_710247dense_1_710249*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_709986
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_710219*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_710221*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_710234*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_710236*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_2Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ß
NoOpNoOp^conv2d/StatefulPartitionedCall+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp^dense/StatefulPartitionedCall*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:^ Z
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&
_user_specified_nameconv2d_input
Å
_
C__inference_flatten_layer_call_and_return_conditional_losses_710636

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ$"  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤DY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
J
.__inference_max_pooling2d_layer_call_fn_710620

inputs
identityÚ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_709869
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢
×
B__inference_conv2d_layer_call_and_return_conditional_losses_710755

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íÓ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Â

&__inference_dense_layer_call_fn_710657

inputs
unknown:	¤D
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_709961o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¤D: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D
 
_user_specified_nameinputs

Í
A__inference_dense_layer_call_and_return_conditional_losses_710778

inputs1
matmul_readvariableop_resource:	¤D-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¤D: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D
 
_user_specified_nameinputs
í

'__inference_conv2d_layer_call_fn_710604

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_709915x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_710625

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 [
Î
F__inference_sequential_layer_call_and_return_conditional_losses_710486

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	¤D3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity

identity_1

identity_2¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íg
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í{
conv2d/ActivityRegularizer/AbsAbsconv2d/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íy
 conv2d/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/ActivityRegularizer/SumSum"conv2d/ActivityRegularizer/Abs:y:0)conv2d/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: e
 conv2d/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/ActivityRegularizer/mulMul)conv2d/ActivityRegularizer/mul/x:output:0'conv2d/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: i
 conv2d/ActivityRegularizer/ShapeShapeconv2d/Relu:activations:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
"conv2d/ActivityRegularizer/truedivRealDiv"conv2d/ActivityRegularizer/mul:z:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ¨
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ$"  
flatten/ReshapeReshapemax_pooling2d/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense/ActivityRegularizer/AbsAbsdense/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/ActivityRegularizer/SumSum!dense/ActivityRegularizer/Abs:y:0(dense/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: d
dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/ActivityRegularizer/mulMul(dense/ActivityRegularizer/mul/x:output:0&dense/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: g
dense/ActivityRegularizer/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
!dense/ActivityRegularizer/truedivRealDiv!dense/ActivityRegularizer/mul:z:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_2Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ¹
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

¯
__inference_loss_fn_0_710699O
5conv2d_kernel_regularizer_abs_readvariableop_resource:
identity¢,conv2d/kernel/Regularizer/Abs/ReadVariableOpª
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp5conv2d_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!conv2d/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: u
NoOpNoOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp
³$
È
__inference__traced_save_710843
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: æ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B â
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*`
_input_shapesO
M: :::	¤D:::: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	¤D: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	

+__inference_sequential_layer_call_fn_710408

inputs!
unknown:
	unknown_0:
	unknown_1:	¤D
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_710180o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
N
á
F__inference_sequential_layer_call_and_return_conditional_losses_710019

inputs'
conv2d_709916:
conv2d_709918:
dense_709962:	¤D
dense_709964: 
dense_1_709987:
dense_1_709989:
identity

identity_1

identity_2¢conv2d/StatefulPartitionedCall¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp¢dense/StatefulPartitionedCall¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOp¢dense_1/StatefulPartitionedCallô
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_709916conv2d_709918*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_709915Ç
*conv2d/ActivityRegularizer/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *7
f2R0
.__inference_conv2d_activity_regularizer_709860w
 conv2d/ActivityRegularizer/ShapeShape'conv2d/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¨
"conv2d/ActivityRegularizer/truedivRealDiv3conv2d/ActivityRegularizer/PartitionedCall:output:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: î
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_709869Ú
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_709936
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_709962dense_709964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_709961Ä
)dense/ActivityRegularizer/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *6
f1R/
-__inference_dense_activity_regularizer_709885u
dense/ActivityRegularizer/ShapeShape&dense/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¥
!dense/ActivityRegularizer/truedivRealDiv2dense/ActivityRegularizer/PartitionedCall:output:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_709987dense_1_709989*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_709986
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_709916*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_709918*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_709962*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_709964*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_2Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ß
NoOpNoOp^conv2d/StatefulPartitionedCall+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp^dense/StatefulPartitionedCall*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Å
_
C__inference_flatten_layer_call_and_return_conditional_losses_709936

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ$"  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤DY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
E
Ý
!__inference__wrapped_model_709847
conv2d_inputJ
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:B
/sequential_dense_matmul_readvariableop_resource:	¤D>
0sequential_dense_biasadd_readvariableop_resource:C
1sequential_dense_1_matmul_readvariableop_resource:@
2sequential_dense_1_biasadd_readvariableop_resource:
identity¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp 
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Å
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*
paddingVALID*
strides

(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0´
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í}
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í
)sequential/conv2d/ActivityRegularizer/AbsAbs$sequential/conv2d/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í
+sequential/conv2d/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ¶
)sequential/conv2d/ActivityRegularizer/SumSum-sequential/conv2d/ActivityRegularizer/Abs:y:04sequential/conv2d/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: p
+sequential/conv2d/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7»
)sequential/conv2d/ActivityRegularizer/mulMul4sequential/conv2d/ActivityRegularizer/mul/x:output:02sequential/conv2d/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 
+sequential/conv2d/ActivityRegularizer/ShapeShape$sequential/conv2d/Relu:activations:0*
T0*
_output_shapes
:
9sequential/conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;sequential/conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;sequential/conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3sequential/conv2d/ActivityRegularizer/strided_sliceStridedSlice4sequential/conv2d/ActivityRegularizer/Shape:output:0Bsequential/conv2d/ActivityRegularizer/strided_slice/stack:output:0Dsequential/conv2d/ActivityRegularizer/strided_slice/stack_1:output:0Dsequential/conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
*sequential/conv2d/ActivityRegularizer/CastCast<sequential/conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ¸
-sequential/conv2d/ActivityRegularizer/truedivRealDiv-sequential/conv2d/ActivityRegularizer/mul:z:0.sequential/conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ¾
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ$"  ¦
sequential/flatten/ReshapeReshape)sequential/max_pooling2d/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0¨
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/dense/ActivityRegularizer/AbsAbs#sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
*sequential/dense/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ³
(sequential/dense/ActivityRegularizer/SumSum,sequential/dense/ActivityRegularizer/Abs:y:03sequential/dense/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: o
*sequential/dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7¸
(sequential/dense/ActivityRegularizer/mulMul3sequential/dense/ActivityRegularizer/mul/x:output:01sequential/dense/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: }
*sequential/dense/ActivityRegularizer/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:
8sequential/dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:sequential/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:sequential/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2sequential/dense/ActivityRegularizer/strided_sliceStridedSlice3sequential/dense/ActivityRegularizer/Shape:output:0Asequential/dense/ActivityRegularizer/strided_slice/stack:output:0Csequential/dense/ActivityRegularizer/strided_slice/stack_1:output:0Csequential/dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
)sequential/dense/ActivityRegularizer/CastCast;sequential/dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: µ
,sequential/dense/ActivityRegularizer/truedivRealDiv,sequential/dense/ActivityRegularizer/mul:z:0-sequential/dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¬
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential/dense_1/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
IdentityIdentitysequential/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:^ Z
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&
_user_specified_nameconv2d_input

Í
A__inference_dense_layer_call_and_return_conditional_losses_709961

inputs1
matmul_readvariableop_resource:	¤D-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¤D: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D
 
_user_specified_nameinputs


ô
C__inference_dense_1_layer_call_and_return_conditional_losses_710688

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
Ë
F__inference_conv2d_layer_call_and_return_all_conditional_losses_710615

inputs!
unknown:
	unknown_0:
identity

identity_1¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_709915¥
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *7
f2R0
.__inference_conv2d_activity_regularizer_709860x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
º


__inference_loss_fn_1_710710A
3conv2d_bias_regularizer_abs_readvariableop_resource:
identity¢*conv2d/bias/Regularizer/Abs/ReadVariableOp
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOp3conv2d_bias_regularizer_abs_readvariableop_resource*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentityconv2d/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: s
NoOpNoOp+^conv2d/bias/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp
°
D
(__inference_flatten_layer_call_fn_710630

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_709936a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

(__inference_dense_1_layer_call_fn_710677

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_709986o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ô
C__inference_dense_1_layer_call_and_return_conditional_losses_709986

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 [
Î
F__inference_sequential_layer_call_and_return_conditional_losses_710564

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:7
$dense_matmul_readvariableop_resource:	¤D3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity

identity_1

identity_2¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢*conv2d/bias/Regularizer/Abs/ReadVariableOp¢,conv2d/kernel/Regularizer/Abs/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢)dense/bias/Regularizer/Abs/ReadVariableOp¢+dense/kernel/Regularizer/Abs/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0©
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í*
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íg
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<í{
conv2d/ActivityRegularizer/AbsAbsconv2d/Relu:activations:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<íy
 conv2d/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/ActivityRegularizer/SumSum"conv2d/ActivityRegularizer/Abs:y:0)conv2d/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: e
 conv2d/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/ActivityRegularizer/mulMul)conv2d/ActivityRegularizer/mul/x:output:0'conv2d/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: i
 conv2d/ActivityRegularizer/ShapeShapeconv2d/Relu:activations:0*
T0*
_output_shapes
:x
.conv2d/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0conv2d/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0conv2d/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(conv2d/ActivityRegularizer/strided_sliceStridedSlice)conv2d/ActivityRegularizer/Shape:output:07conv2d/ActivityRegularizer/strided_slice/stack:output:09conv2d/ActivityRegularizer/strided_slice/stack_1:output:09conv2d/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
conv2d/ActivityRegularizer/CastCast1conv2d/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
"conv2d/ActivityRegularizer/truedivRealDiv"conv2d/ActivityRegularizer/mul:z:0#conv2d/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ¨
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ$"  
flatten/ReshapeReshapemax_pooling2d/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤D
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense/ActivityRegularizer/AbsAbsdense/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dense/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/ActivityRegularizer/SumSum!dense/ActivityRegularizer/Abs:y:0(dense/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: d
dense/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/ActivityRegularizer/mulMul(dense/ActivityRegularizer/mul/x:output:0&dense/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: g
dense/ActivityRegularizer/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:w
-dense/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/dense/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/dense/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'dense/ActivityRegularizer/strided_sliceStridedSlice(dense/ActivityRegularizer/Shape:output:06dense/ActivityRegularizer/strided_slice/stack:output:08dense/ActivityRegularizer/strided_slice/stack_1:output:08dense/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
dense/ActivityRegularizer/CastCast0dense/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
!dense/ActivityRegularizer/truedivRealDiv!dense/ActivityRegularizer/mul:z:0"dense/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,conv2d/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
conv2d/kernel/Regularizer/AbsAbs4conv2d/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:x
conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             
conv2d/kernel/Regularizer/SumSum!conv2d/kernel/Regularizer/Abs:y:0(conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/kernel/Regularizer/mulMul(conv2d/kernel/Regularizer/mul/x:output:0&conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
*conv2d/bias/Regularizer/Abs/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0{
conv2d/bias/Regularizer/AbsAbs2conv2d/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:g
conv2d/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
conv2d/bias/Regularizer/SumSumconv2d/bias/Regularizer/Abs:y:0&conv2d/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
conv2d/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
conv2d/bias/Regularizer/mulMul&conv2d/bias/Regularizer/mul/x:output:0$conv2d/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
+dense/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	¤D*
dtype0
dense/kernel/Regularizer/AbsAbs3dense/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	¤Do
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum dense/kernel/Regularizer/Abs:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
)dense/bias/Regularizer/Abs/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0y
dense/bias/Regularizer/AbsAbs1dense/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:f
dense/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/bias/Regularizer/SumSumdense/bias/Regularizer/Abs:y:0%dense/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: a
dense/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¬Å'7
dense/bias/Regularizer/mulMul%dense/bias/Regularizer/mul/x:output:0#dense/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf

Identity_1Identity&conv2d/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: e

Identity_2Identity%dense/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ¹
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp+^conv2d/bias/Regularizer/Abs/ReadVariableOp-^conv2d/kernel/Regularizer/Abs/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^dense/bias/Regularizer/Abs/ReadVariableOp,^dense/kernel/Regularizer/Abs/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2X
*conv2d/bias/Regularizer/Abs/ReadVariableOp*conv2d/bias/Regularizer/Abs/ReadVariableOp2\
,conv2d/kernel/Regularizer/Abs/ReadVariableOp,conv2d/kernel/Regularizer/Abs/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)dense/bias/Regularizer/Abs/ReadVariableOp)dense/bias/Regularizer/Abs/ReadVariableOp2Z
+dense/kernel/Regularizer/Abs/ReadVariableOp+dense/kernel/Regularizer/Abs/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_default©
N
conv2d_input>
serving_default_conv2d_input:0ÿÿÿÿÿÿÿÿÿ@;
dense_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:­y
õ
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
»

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
»

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
I
3iter
	4decay
5learning_rate
6momentum"
	optimizer
J
0
1
#2
$3
+4
,5"
trackable_list_wrapper
J
0
1
#2
$3
+4
,5"
trackable_list_wrapper
<
70
81
92
:3"
trackable_list_wrapper
Ê
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ú2÷
+__inference_sequential_layer_call_fn_710036
+__inference_sequential_layer_call_fn_710389
+__inference_sequential_layer_call_fn_710408
+__inference_sequential_layer_call_fn_710216À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
F__inference_sequential_layer_call_and_return_conditional_losses_710486
F__inference_sequential_layer_call_and_return_conditional_losses_710564
F__inference_sequential_layer_call_and_return_conditional_losses_710279
F__inference_sequential_layer_call_and_return_conditional_losses_710342À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÑBÎ
!__inference__wrapped_model_709847conv2d_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
@serving_default"
signature_map
':%2conv2d/kernel
:2conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
Ê
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
Factivity_regularizer_fn
*&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_conv2d_layer_call_fn_710604¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_layer_call_and_return_all_conditional_losses_710615¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_max_pooling2d_layer_call_fn_710620¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_710625¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_flatten_layer_call_fn_710630¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_flatten_layer_call_and_return_conditional_losses_710636¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	¤D2dense/kernel
:2
dense/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
Ê
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
Wactivity_regularizer_fn
**&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_dense_layer_call_fn_710657¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_layer_call_and_return_all_conditional_losses_710668¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :2dense_1/kernel
:2dense_1/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_1_layer_call_fn_710677¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_1_layer_call_and_return_conditional_losses_710688¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
³2°
__inference_loss_fn_0_710699
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_1_710710
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_2_710721
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_3_710732
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÐBÍ
$__inference_signature_wrapper_710583conv2d_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_dict_wrapper
ß2Ü
.__inference_conv2d_activity_regularizer_709860©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
ì2é
B__inference_conv2d_layer_call_and_return_conditional_losses_710755¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_dict_wrapper
Þ2Û
-__inference_dense_activity_regularizer_709885©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
ë2è
A__inference_dense_layer_call_and_return_conditional_losses_710778¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	`total
	acount
b	variables
c	keras_api"
_tf_keras_metric
^
	dtotal
	ecount
f
_fn_kwargs
g	variables
h	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
`0
a1"
trackable_list_wrapper
-
b	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
d0
e1"
trackable_list_wrapper
-
g	variables"
_generic_user_object 
!__inference__wrapped_model_709847{#$+,>¢;
4¢1
/,
conv2d_inputÿÿÿÿÿÿÿÿÿ@
ª "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿX
.__inference_conv2d_activity_regularizer_709860&¢
¢
	
x
ª " Æ
F__inference_conv2d_layer_call_and_return_all_conditional_losses_710615|8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@
ª "<¢9
$!
0ÿÿÿÿÿÿÿÿÿ<í

	
1/0 ´
B__inference_conv2d_layer_call_and_return_conditional_losses_710755n8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ<í
 
'__inference_conv2d_layer_call_fn_710604a8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@
ª "!ÿÿÿÿÿÿÿÿÿ<í£
C__inference_dense_1_layer_call_and_return_conditional_losses_710688\+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_1_layer_call_fn_710677O+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿW
-__inference_dense_activity_regularizer_709885&¢
¢
	
x
ª " ´
E__inference_dense_layer_call_and_return_all_conditional_losses_710668k#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¤D
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 ¢
A__inference_dense_layer_call_and_return_conditional_losses_710778]#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¤D
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
&__inference_dense_layer_call_fn_710657P#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¤D
ª "ÿÿÿÿÿÿÿÿÿ¨
C__inference_flatten_layer_call_and_return_conditional_losses_710636a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¤D
 
(__inference_flatten_layer_call_fn_710630T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤D;
__inference_loss_fn_0_710699¢

¢ 
ª " ;
__inference_loss_fn_1_710710¢

¢ 
ª " ;
__inference_loss_fn_2_710721#¢

¢ 
ª " ;
__inference_loss_fn_3_710732$¢

¢ 
ª " ì
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_710625R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_max_pooling2d_layer_call_fn_710620R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÞ
F__inference_sequential_layer_call_and_return_conditional_losses_710279#$+,F¢C
<¢9
/,
conv2d_inputÿÿÿÿÿÿÿÿÿ@
p 

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 Þ
F__inference_sequential_layer_call_and_return_conditional_losses_710342#$+,F¢C
<¢9
/,
conv2d_inputÿÿÿÿÿÿÿÿÿ@
p

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 Ø
F__inference_sequential_layer_call_and_return_conditional_losses_710486#$+,@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 Ø
F__inference_sequential_layer_call_and_return_conditional_losses_710564#$+,@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 
+__inference_sequential_layer_call_fn_710036j#$+,F¢C
<¢9
/,
conv2d_inputÿÿÿÿÿÿÿÿÿ@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_layer_call_fn_710216j#$+,F¢C
<¢9
/,
conv2d_inputÿÿÿÿÿÿÿÿÿ@
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_layer_call_fn_710389d#$+,@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_layer_call_fn_710408d#$+,@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "ÿÿÿÿÿÿÿÿÿ´
$__inference_signature_wrapper_710583#$+,N¢K
¢ 
DªA
?
conv2d_input/,
conv2d_inputÿÿÿÿÿÿÿÿÿ@"1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ