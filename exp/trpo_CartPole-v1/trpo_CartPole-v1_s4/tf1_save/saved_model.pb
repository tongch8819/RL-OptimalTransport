กล
ช))
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
๎
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
จ
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
๖
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
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
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.52v1.15.4-39-g3db52be๗
n
PlaceholderPlaceholder*'
_output_shapes
:?????????*
shape:?????????*
dtype0
h
Placeholder_1Placeholder*
dtype0*
shape:?????????*#
_output_shapes
:?????????
h
Placeholder_2Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
h
Placeholder_3Placeholder*
shape:?????????*#
_output_shapes
:?????????*
dtype0
h
Placeholder_4Placeholder*
dtype0*
shape:?????????*#
_output_shapes
:?????????
ฅ
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0*"
_class
loc:@pi/dense/kernel

.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
dtype0*
valueB
 *0พ*
_output_shapes
: 

.pi/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *0>*
dtype0*"
_class
loc:@pi/dense/kernel
๎
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*

seed*
dtype0*
_output_shapes

:@*
seed2*"
_class
loc:@pi/dense/kernel*
T0
ฺ
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
์
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
T0
?
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel
ง
pi/dense/kernel
VariableV2*
	container *
shape
:@*
dtype0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
shared_name 
ำ
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
_output_shapes

:@*
T0*
validate_shape(*"
_class
loc:@pi/dense/kernel*
use_locking(
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel

pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
valueB@*    *
dtype0

pi/dense/bias
VariableV2*
shared_name *
	container *
dtype0*
shape:@* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
พ
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros* 
_class
loc:@pi/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:@
t
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*'
_output_shapes
:?????????@*
transpose_b( *
T0*
transpose_a( 

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
Y
pi/dense/TanhTanhpi/dense/BiasAdd*
T0*'
_output_shapes
:?????????@
ฉ
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"@   @   *
dtype0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
:

0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *ืณ]พ*
_output_shapes
: *
dtype0

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ืณ]>*$
_class
loc:@pi/dense_1/kernel
๔
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*

seed*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0*
dtype0*
seed2
โ
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
T0
๔
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0
ๆ
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_1/kernel*
T0*
_output_shapes

:@@
ซ
pi/dense_1/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel*
shape
:@@*
_output_shapes

:@@*
dtype0*
	container 
?
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
use_locking(*
T0

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel

!pi/dense_1/bias/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
dtype0

pi/dense_1/bias
VariableV2*"
_class
loc:@pi/dense_1/bias*
	container *
shape:@*
shared_name *
_output_shapes
:@*
dtype0
ฦ
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
use_locking(*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
T0*
validate_shape(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
T0

pi/dense_1/MatMulMatMulpi/dense/Tanhpi/dense_1/kernel/read*
T0*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b( 

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*'
_output_shapes
:?????????@*
data_formatNHWC
]
pi/dense_1/TanhTanhpi/dense_1/BiasAdd*'
_output_shapes
:?????????@*
T0
ฉ
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"@      *$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:

0pi/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *ฒ_พ*$
_class
loc:@pi/dense_2/kernel*
dtype0

0pi/dense_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: *
valueB
 *ฒ_>*
dtype0
๔
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0*

seed*
dtype0*
seed2*
โ
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: *
T0
๔
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
ๆ
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
T0*
_output_shapes

:@
ซ
pi/dense_2/kernel
VariableV2*
_output_shapes

:@*
	container *$
_class
loc:@pi/dense_2/kernel*
shared_name *
dtype0*
shape
:@
?
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
_output_shapes

:@*
T0*
validate_shape(

pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel

!pi/dense_2/bias/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*"
_class
loc:@pi/dense_2/bias

pi/dense_2/bias
VariableV2*"
_class
loc:@pi/dense_2/bias*
shape:*
	container *
shared_name *
_output_shapes
:*
dtype0
ฦ
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
use_locking(*
_output_shapes
:*
T0
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
T0*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias

pi/dense_2/MatMulMatMulpi/dense_1/Tanhpi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:?????????*
transpose_b( *
T0

pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:?????????*
T0
a
pi/LogSoftmax
LogSoftmaxpi/dense_2/BiasAdd*
T0*'
_output_shapes
:?????????
h
&pi/multinomial/Multinomial/num_samplesConst*
value	B :*
_output_shapes
: *
dtype0
ฤ
pi/multinomial/MultinomialMultinomialpi/dense_2/BiasAdd&pi/multinomial/Multinomial/num_samples*

seed*
seed28*
output_dtype0	*
T0*'
_output_shapes
:?????????
v

pi/SqueezeSqueezepi/multinomial/Multinomial*
T0	*#
_output_shapes
:?????????*
squeeze_dims

X
pi/one_hot/on_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
Y
pi/one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
R
pi/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
ฑ

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
axis?????????*
T0*'
_output_shapes
:?????????*
TI0
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*'
_output_shapes
:?????????*
T0
Z
pi/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
z
pi/SumSumpi/mulpi/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:?????????
Z
pi/one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
pi/one_hot_1/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
T
pi/one_hot_1/depthConst*
_output_shapes
: *
value	B :*
dtype0
ถ
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
T0*'
_output_shapes
:?????????*
TI0	*
axis?????????
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*'
_output_shapes
:?????????
\
pi/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*

Tidx0*
T0*#
_output_shapes
:?????????*
	keep_dims( 
q
pi/PlaceholderPlaceholder*
dtype0*
shape:?????????*'
_output_shapes
:?????????
O
pi/ExpExppi/Placeholder*
T0*'
_output_shapes
:?????????
^
pi/subSubpi/Placeholderpi/LogSoftmax*
T0*'
_output_shapes
:?????????
Q
pi/mul_2Mulpi/Exppi/sub*'
_output_shapes
:?????????*
T0
\
pi/Sum_2/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :

pi/Sum_2Sumpi/mul_2pi/Sum_2/reduction_indices*#
_output_shapes
:?????????*
T0*
	keep_dims( *

Tidx0
R
pi/ConstConst*
valueB: *
dtype0*
_output_shapes
:
a
pi/MeanMeanpi/Sum_2pi/Const*
T0*
	keep_dims( *
_output_shapes
: *

Tidx0
ฃ
/v/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *
_output_shapes
:*!
_class
loc:@v/dense/kernel*
dtype0

-v/dense/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
valueB
 *0พ

-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *0>
๋
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
T0*
_output_shapes

:@*
dtype0*!
_class
loc:@v/dense/kernel*

seed*
seed2T
ึ
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
T0
่
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
ฺ
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0
ฅ
v/dense/kernel
VariableV2*
	container *
dtype0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
shape
:@*
shared_name 
ฯ
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0*
use_locking(*
_output_shapes

:@
{
v/dense/kernel/readIdentityv/dense/kernel*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel

v/dense/bias/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB@*    *
_output_shapes
:@*
dtype0

v/dense/bias
VariableV2*
dtype0*
shape:@*
_class
loc:@v/dense/bias*
_output_shapes
:@*
	container *
shared_name 
บ
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(*
T0
q
v/dense/bias/readIdentityv/dense/bias*
_class
loc:@v/dense/bias*
_output_shapes
:@*
T0

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:?????????@*
transpose_b( 

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:?????????@
W
v/dense/TanhTanhv/dense/BiasAdd*
T0*'
_output_shapes
:?????????@
ง
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"@   @   *
dtype0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
:

/v/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ืณ]พ*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel

/v/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ืณ]>*
dtype0*#
_class
loc:@v/dense_1/kernel
๑
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*

seed*
dtype0*
seed2e
?
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
T0
๐
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@
โ
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
ฉ
v/dense_1/kernel
VariableV2*
dtype0*
shared_name *
	container *
_output_shapes

:@@*
shape
:@@*#
_class
loc:@v/dense_1/kernel
ื
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
_output_shapes

:@@*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
use_locking(*
T0

v/dense_1/kernel/readIdentityv/dense_1/kernel*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0

 v/dense_1/bias/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0

v/dense_1/bias
VariableV2*!
_class
loc:@v/dense_1/bias*
shape:@*
shared_name *
_output_shapes
:@*
dtype0*
	container 
ย
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
use_locking(*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
w
v/dense_1/bias/readIdentityv/dense_1/bias*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@

v/dense_1/MatMulMatMulv/dense/Tanhv/dense_1/kernel/read*'
_output_shapes
:?????????@*
T0*
transpose_a( *
transpose_b( 

v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*'
_output_shapes
:?????????@*
data_formatNHWC
[
v/dense_1/TanhTanhv/dense_1/BiasAdd*
T0*'
_output_shapes
:?????????@
ง
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*#
_class
loc:@v/dense_2/kernel*
dtype0*
valueB"@      *
_output_shapes
:

/v/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *พ*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel

/v/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
: 
๑
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes

:@*
T0*
seed2v*
dtype0*

seed*#
_class
loc:@v/dense_2/kernel
?
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes
: 
๐
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
โ
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
ฉ
v/dense_2/kernel
VariableV2*
shape
:@*
shared_name *#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
dtype0*
	container 
ื
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(*
T0

v/dense_2/kernel/readIdentityv/dense_2/kernel*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0

 v/dense_2/bias/Initializer/zerosConst*
dtype0*!
_class
loc:@v/dense_2/bias*
valueB*    *
_output_shapes
:

v/dense_2/bias
VariableV2*
_output_shapes
:*
dtype0*!
_class
loc:@v/dense_2/bias*
shape:*
shared_name *
	container 
ย
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
w
v/dense_2/bias/readIdentityv/dense_2/bias*
T0*
_output_shapes
:*!
_class
loc:@v/dense_2/bias

v/dense_2/MatMulMatMulv/dense_1/Tanhv/dense_2/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_b( *
transpose_a( 

v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*'
_output_shapes
:?????????*
T0*
data_formatNHWC
l
	v/SqueezeSqueezev/dense_2/BiasAdd*
T0*
squeeze_dims
*#
_output_shapes
:?????????
O
subSubpi/SumPlaceholder_4*
T0*#
_output_shapes
:?????????
=
ExpExpsub*#
_output_shapes
:?????????*
T0
L
mulMulExpPlaceholder_2*#
_output_shapes
:?????????*
T0
O
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
V
MeanMeanmulConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
1
NegNegMean*
T0*
_output_shapes
: 
T
sub_1SubPlaceholder_3	v/Squeeze*#
_output_shapes
:?????????*
T0
J
pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
F
powPowsub_1pow/y*
T0*#
_output_shapes
:?????????
Q
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Z
Mean_1MeanpowConst_1*
	keep_dims( *
_output_shapes
: *
T0*

Tidx0
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *

index_type0*
T0
m
#gradients/Mean_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:

gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
^
gradients/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:

gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:?????????
`
gradients/Mean_1_grad/Shape_1Shapepow*
out_type0*
T0*
_output_shapes
:
`
gradients/Mean_1_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
e
gradients/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
g
gradients/Mean_1_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
?
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
a
gradients/Mean_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*
_output_shapes
: 

gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

DstT0*
Truncate( *

SrcT0*
_output_shapes
: 

gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*#
_output_shapes
:?????????*
T0
]
gradients/pow_grad/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
]
gradients/pow_grad/Shape_1Shapepow/y*
_output_shapes
: *
T0*
out_type0
ด
(gradients/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_grad/Shapegradients/pow_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
q
gradients/pow_grad/mulMulgradients/Mean_1_grad/truedivpow/y*#
_output_shapes
:?????????*
T0
]
gradients/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
_
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
_output_shapes
: *
T0
j
gradients/pow_grad/PowPowsub_1gradients/pow_grad/sub*
T0*#
_output_shapes
:?????????
}
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*
T0*#
_output_shapes
:?????????
ก
gradients/pow_grad/SumSumgradients/pow_grad/mul_1(gradients/pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sumgradients/pow_grad/Shape*#
_output_shapes
:?????????*
Tshape0*
T0
a
gradients/pow_grad/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
x
gradients/pow_grad/GreaterGreatersub_1gradients/pow_grad/Greater/y*#
_output_shapes
:?????????*
T0
g
"gradients/pow_grad/ones_like/ShapeShapesub_1*
_output_shapes
:*
T0*
out_type0
g
"gradients/pow_grad/ones_like/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
ฌ
gradients/pow_grad/ones_likeFill"gradients/pow_grad/ones_like/Shape"gradients/pow_grad/ones_like/Const*#
_output_shapes
:?????????*
T0*

index_type0

gradients/pow_grad/SelectSelectgradients/pow_grad/Greatersub_1gradients/pow_grad/ones_like*
T0*#
_output_shapes
:?????????
f
gradients/pow_grad/LogLoggradients/pow_grad/Select*
T0*#
_output_shapes
:?????????
_
gradients/pow_grad/zeros_like	ZerosLikesub_1*#
_output_shapes
:?????????*
T0
ฆ
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*#
_output_shapes
:?????????*
T0
q
gradients/pow_grad/mul_2Mulgradients/Mean_1_grad/truedivpow*#
_output_shapes
:?????????*
T0

gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select_1*#
_output_shapes
:?????????*
T0
ฅ
gradients/pow_grad/Sum_1Sumgradients/pow_grad/mul_3*gradients/pow_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0

gradients/pow_grad/Reshape_1Reshapegradients/pow_grad/Sum_1gradients/pow_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
g
#gradients/pow_grad/tuple/group_depsNoOp^gradients/pow_grad/Reshape^gradients/pow_grad/Reshape_1
ึ
+gradients/pow_grad/tuple/control_dependencyIdentitygradients/pow_grad/Reshape$^gradients/pow_grad/tuple/group_deps*#
_output_shapes
:?????????*
T0*-
_class#
!loc:@gradients/pow_grad/Reshape
ฯ
-gradients/pow_grad/tuple/control_dependency_1Identitygradients/pow_grad/Reshape_1$^gradients/pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/pow_grad/Reshape_1*
_output_shapes
: 
g
gradients/sub_1_grad/ShapeShapePlaceholder_3*
T0*
_output_shapes
:*
out_type0
e
gradients/sub_1_grad/Shape_1Shape	v/Squeeze*
_output_shapes
:*
out_type0*
T0
บ
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
ธ
gradients/sub_1_grad/SumSum+gradients/pow_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*#
_output_shapes
:?????????*
Tshape0*
T0
z
gradients/sub_1_grad/NegNeg+gradients/pow_grad/tuple/control_dependency*
T0*#
_output_shapes
:?????????
ฉ
gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:?????????
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
?
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*#
_output_shapes
:?????????*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
ไ
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*#
_output_shapes
:?????????*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
o
gradients/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
T0*
_output_shapes
:*
out_type0
ผ
 gradients/v/Squeeze_grad/ReshapeReshape/gradients/sub_1_grad/tuple/control_dependency_1gradients/v/Squeeze_grad/Shape*
Tshape0*'
_output_shapes
:?????????*
T0

,gradients/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/v/Squeeze_grad/Reshape*
T0*
_output_shapes
:*
data_formatNHWC

1gradients/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp!^gradients/v/Squeeze_grad/Reshape-^gradients/v/dense_2/BiasAdd_grad/BiasAddGrad

9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity gradients/v/Squeeze_grad/Reshape2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*3
_class)
'%loc:@gradients/v/Squeeze_grad/Reshape

;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_2/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/v/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ฺ
&gradients/v/dense_2/MatMul_grad/MatMulMatMul9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:?????????@*
transpose_b(
ฬ
(gradients/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Tanh9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes

:@

0gradients/v/dense_2/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_2/MatMul_grad/MatMul)^gradients/v/dense_2/MatMul_grad/MatMul_1

8gradients/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_2/MatMul_grad/MatMul1^gradients/v/dense_2/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:?????????@*9
_class/
-+loc:@gradients/v/dense_2/MatMul_grad/MatMul

:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_2/MatMul_grad/MatMul_11^gradients/v/dense_2/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:@*;
_class1
/-loc:@gradients/v/dense_2/MatMul_grad/MatMul_1
ฎ
&gradients/v/dense_1/Tanh_grad/TanhGradTanhGradv/dense_1/Tanh8gradients/v/dense_2/MatMul_grad/tuple/control_dependency*'
_output_shapes
:?????????@*
T0

,gradients/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/v/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:@*
T0

1gradients/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/v/dense_1/BiasAdd_grad/BiasAddGrad'^gradients/v/dense_1/Tanh_grad/TanhGrad

9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/Tanh_grad/TanhGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:?????????@*9
_class/
-+loc:@gradients/v/dense_1/Tanh_grad/TanhGrad*
T0

;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_1/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*?
_class5
31loc:@gradients/v/dense_1/BiasAdd_grad/BiasAddGrad*
T0
ฺ
&gradients/v/dense_1/MatMul_grad/MatMulMatMul9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:?????????@
ส
(gradients/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Tanh9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
_output_shapes

:@@*
T0

0gradients/v/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_1/MatMul_grad/MatMul)^gradients/v/dense_1/MatMul_grad/MatMul_1

8gradients/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/MatMul_grad/MatMul1^gradients/v/dense_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0

:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_1/MatMul_grad/MatMul_11^gradients/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@
ช
$gradients/v/dense/Tanh_grad/TanhGradTanhGradv/dense/Tanh8gradients/v/dense_1/MatMul_grad/tuple/control_dependency*'
_output_shapes
:?????????@*
T0

*gradients/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/v/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:@*
T0

/gradients/v/dense/BiasAdd_grad/tuple/group_depsNoOp+^gradients/v/dense/BiasAdd_grad/BiasAddGrad%^gradients/v/dense/Tanh_grad/TanhGrad

7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/v/dense/Tanh_grad/TanhGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/v/dense/Tanh_grad/TanhGrad*'
_output_shapes
:?????????@

9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/v/dense/BiasAdd_grad/BiasAddGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
ิ
$gradients/v/dense/MatMul_grad/MatMulMatMul7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????
ล
&gradients/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder7gradients/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( *
_output_shapes

:@

.gradients/v/dense/MatMul_grad/tuple/group_depsNoOp%^gradients/v/dense/MatMul_grad/MatMul'^gradients/v/dense/MatMul_grad/MatMul_1

6gradients/v/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients/v/dense/MatMul_grad/MatMul/^gradients/v/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:?????????*7
_class-
+)loc:@gradients/v/dense/MatMul_grad/MatMul

8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients/v/dense/MatMul_grad/MatMul_1/^gradients/v/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*9
_class/
-+loc:@gradients/v/dense/MatMul_grad/MatMul_1
`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????

ReshapeReshape8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????

	Reshape_1Reshape9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes
:@*
Tshape0*
T0
b
Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????

	Reshape_2Reshape:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
_output_shapes	
: *
Tshape0*
T0
b
Reshape_3/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:

	Reshape_3Reshape;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
Tshape0*
T0*
_output_shapes
:@
b
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????

	Reshape_4Reshape:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes
:@*
Tshape0*
T0
b
Reshape_5/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????

	Reshape_5Reshape;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
M
concat/axisConst*
_output_shapes
: *
value	B : *
dtype0

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5concat/axis*
N*
_output_shapes	
:ม#*
T0*

Tidx0
g
PyFuncPyFuncconcat*
Tout
2*
token
pyfunc_0*
Tin
2*
_output_shapes	
:ม#
h
Const_2Const*
_output_shapes
:*-
value$B""   @      @   @      *
dtype0
Q
split/split_dimConst*
value	B : *
_output_shapes
: *
dtype0

splitSplitVPyFuncConst_2split/split_dim*:
_output_shapes(
&::@: :@:@:*
T0*
	num_split*

Tlen0
`
Reshape_6/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
c
	Reshape_6ReshapesplitReshape_6/shape*
_output_shapes

:@*
Tshape0*
T0
Y
Reshape_7/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
a
	Reshape_7Reshapesplit:1Reshape_7/shape*
Tshape0*
T0*
_output_shapes
:@
`
Reshape_8/shapeConst*
valueB"@   @   *
_output_shapes
:*
dtype0
e
	Reshape_8Reshapesplit:2Reshape_8/shape*
Tshape0*
_output_shapes

:@@*
T0
Y
Reshape_9/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
a
	Reshape_9Reshapesplit:3Reshape_9/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_10/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
g

Reshape_10Reshapesplit:4Reshape_10/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_11/shapeConst*
_output_shapes
:*
valueB:*
dtype0
c

Reshape_11Reshapesplit:5Reshape_11/shape*
Tshape0*
T0*
_output_shapes
:

beta1_power/initial_valueConst*
dtype0*
_class
loc:@v/dense/bias*
valueB
 *fff?*
_output_shapes
: 

beta1_power
VariableV2*
_output_shapes
: *
shared_name *
	container *
shape: *
_class
loc:@v/dense/bias*
dtype0
ฏ
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class
loc:@v/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
: 
k
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
_class
loc:@v/dense/bias*
T0

beta2_power/initial_valueConst*
_class
loc:@v/dense/bias*
valueB
 *wพ?*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
	container *
_output_shapes
: *
shared_name *
shape: *
_class
loc:@v/dense/bias*
dtype0
ฏ
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
: 
k
beta2_power/readIdentitybeta2_power*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

%v/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes

:@*
valueB@*    *
dtype0*!
_class
loc:@v/dense/kernel
ช
v/dense/kernel/Adam
VariableV2*
shape
:@*
shared_name *
	container *
dtype0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
ี
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel

v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0

'v/dense/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes

:@*
valueB@*    
ฌ
v/dense/kernel/Adam_1
VariableV2*
dtype0*!
_class
loc:@v/dense/kernel*
shared_name *
	container *
_output_shapes

:@*
shape
:@
?
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
validate_shape(*
T0

v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel

#v/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
_class
loc:@v/dense/bias*
valueB@*    

v/dense/bias/Adam
VariableV2*
_class
loc:@v/dense/bias*
dtype0*
shared_name *
	container *
_output_shapes
:@*
shape:@
ษ
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
_class
loc:@v/dense/bias*
T0*
_output_shapes
:@
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0

%v/dense/bias/Adam_1/Initializer/zerosConst*
_class
loc:@v/dense/bias*
dtype0*
valueB@*    *
_output_shapes
:@
?
v/dense/bias/Adam_1
VariableV2*
	container *
shared_name *
_class
loc:@v/dense/bias*
_output_shapes
:@*
shape:@*
dtype0
ฯ
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
ญ
7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0

-v/dense_1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: *
valueB
 *    *
dtype0
๗
'v/dense_1/kernel/Adam/Initializer/zerosFill7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_1/kernel/Adam/Initializer/zeros/Const*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel*

index_type0
ฎ
v/dense_1/kernel/Adam
VariableV2*
dtype0*
shape
:@@*
shared_name *#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
	container 
?
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*
_output_shapes

:@@*
validate_shape(*
T0*#
_class
loc:@v/dense_1/kernel*
use_locking(

v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@
ฏ
9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_1/kernel*
dtype0*
valueB"@   @   *
_output_shapes
:

/v/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *    *
dtype0
?
)v/dense_1/kernel/Adam_1/Initializer/zerosFill9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_1/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes

:@@*

index_type0*
T0*#
_class
loc:@v/dense_1/kernel
ฐ
v/dense_1/kernel/Adam_1
VariableV2*#
_class
loc:@v/dense_1/kernel*
shape
:@@*
dtype0*
shared_name *
_output_shapes

:@@*
	container 
ใ
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*
T0*#
_class
loc:@v/dense_1/kernel*
use_locking(*
validate_shape(*
_output_shapes

:@@

v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0

%v/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes
:@*
dtype0*
valueB@*    *!
_class
loc:@v/dense_1/bias
ข
v/dense_1/bias/Adam
VariableV2*
	container *
_output_shapes
:@*
shape:@*!
_class
loc:@v/dense_1/bias*
shared_name *
dtype0
ั
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(

v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*!
_class
loc:@v/dense_1/bias*
T0*
_output_shapes
:@

'v/dense_1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB@*    *
_output_shapes
:@*
dtype0
ค
v/dense_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:@*
	container *
_output_shapes
:@*!
_class
loc:@v/dense_1/bias
ื
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
use_locking(

v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias
ก
'v/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes

:@*
valueB@*    *#
_class
loc:@v/dense_2/kernel*
dtype0
ฎ
v/dense_2/kernel/Adam
VariableV2*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
shape
:@*
dtype0*
shared_name *
	container 
?
v/dense_2/kernel/Adam/AssignAssignv/dense_2/kernel/Adam'v/dense_2/kernel/Adam/Initializer/zeros*
validate_shape(*
T0*
use_locking(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@

v/dense_2/kernel/Adam/readIdentityv/dense_2/kernel/Adam*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
ฃ
)v/dense_2/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
valueB@*    
ฐ
v/dense_2/kernel/Adam_1
VariableV2*
dtype0*
shape
:@*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container *
_output_shapes

:@
ใ
v/dense_2/kernel/Adam_1/AssignAssignv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
T0*
use_locking(*
validate_shape(

v/dense_2/kernel/Adam_1/readIdentityv/dense_2/kernel/Adam_1*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
T0

%v/dense_2/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
dtype0*
valueB*    
ข
v/dense_2/bias/Adam
VariableV2*
	container *
dtype0*
_output_shapes
:*
shape:*
shared_name *!
_class
loc:@v/dense_2/bias
ั
v/dense_2/bias/Adam/AssignAssignv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*!
_class
loc:@v/dense_2/bias

v/dense_2/bias/Adam/readIdentityv/dense_2/bias/Adam*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
T0

'v/dense_2/bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *
_output_shapes
:*!
_class
loc:@v/dense_2/bias
ค
v/dense_2/bias/Adam_1
VariableV2*
	container *
shared_name *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:*
shape:
ื
v/dense_2/bias/Adam_1/AssignAssignv/dense_2/bias/Adam_1'v/dense_2/bias/Adam_1/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(*
use_locking(

v/dense_2/bias/Adam_1/readIdentityv/dense_2/bias/Adam_1*
_output_shapes
:*
T0*!
_class
loc:@v/dense_2/bias
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o:
O

Adam/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
O

Adam/beta2Const*
dtype0*
valueB
 *wพ?*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wฬ+2*
_output_shapes
: *
dtype0
ษ
$Adam/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*
T0*!
_class
loc:@v/dense/kernel*
use_locking( *
use_nesterov( *
_output_shapes

:@
ป
"Adam/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7*
_class
loc:@v/dense/bias*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:@
ำ
&Adam/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_8*
use_nesterov( *
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
ล
$Adam/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_9*
use_locking( *!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
use_nesterov( *
T0
ิ
&Adam/update_v/dense_2/kernel/ApplyAdam	ApplyAdamv/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_10*
use_locking( *
_output_shapes

:@*
T0*
use_nesterov( *#
_class
loc:@v/dense_2/kernel
ฦ
$Adam/update_v/dense_2/bias/ApplyAdam	ApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_11*
_output_shapes
:*
use_locking( *
T0*!
_class
loc:@v/dense_2/bias*
use_nesterov( 
?
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
validate_shape(*
_output_shapes
: *
_class
loc:@v/dense/bias*
use_locking( 
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 

AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam
j
Reshape_12/shapeConst^Adam*
_output_shapes
:*
valueB:
?????????*
dtype0
p

Reshape_12Reshapev/dense/kernel/readReshape_12/shape*
T0*
_output_shapes	
:*
Tshape0
j
Reshape_13/shapeConst^Adam*
_output_shapes
:*
valueB:
?????????*
dtype0
m

Reshape_13Reshapev/dense/bias/readReshape_13/shape*
_output_shapes
:@*
Tshape0*
T0
j
Reshape_14/shapeConst^Adam*
dtype0*
valueB:
?????????*
_output_shapes
:
r

Reshape_14Reshapev/dense_1/kernel/readReshape_14/shape*
T0*
Tshape0*
_output_shapes	
: 
j
Reshape_15/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
?????????
o

Reshape_15Reshapev/dense_1/bias/readReshape_15/shape*
Tshape0*
_output_shapes
:@*
T0
j
Reshape_16/shapeConst^Adam*
valueB:
?????????*
dtype0*
_output_shapes
:
q

Reshape_16Reshapev/dense_2/kernel/readReshape_16/shape*
Tshape0*
T0*
_output_shapes
:@
j
Reshape_17/shapeConst^Adam*
_output_shapes
:*
valueB:
?????????*
dtype0
o

Reshape_17Reshapev/dense_2/bias/readReshape_17/shape*
Tshape0*
T0*
_output_shapes
:
V
concat_1/axisConst^Adam*
_output_shapes
: *
value	B : *
dtype0
ฆ
concat_1ConcatV2
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17concat_1/axis*
_output_shapes	
:ม#*

Tidx0*
T0*
N
h
PyFunc_1PyFuncconcat_1*
Tout
2*
_output_shapes
:*
Tin
2*
token
pyfunc_1
o
Const_3Const^Adam*
dtype0*-
value$B""   @      @   @      *
_output_shapes
:
Z
split_1/split_dimConst^Adam*
_output_shapes
: *
dtype0*
value	B : 

split_1SplitVPyFunc_1Const_3split_1/split_dim*,
_output_shapes
::::::*
T0*
	num_split*

Tlen0
h
Reshape_18/shapeConst^Adam*
_output_shapes
:*
valueB"   @   *
dtype0
g

Reshape_18Reshapesplit_1Reshape_18/shape*
T0*
_output_shapes

:@*
Tshape0
a
Reshape_19/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_19Reshape	split_1:1Reshape_19/shape*
T0*
_output_shapes
:@*
Tshape0
h
Reshape_20/shapeConst^Adam*
valueB"@   @   *
_output_shapes
:*
dtype0
i

Reshape_20Reshape	split_1:2Reshape_20/shape*
_output_shapes

:@@*
T0*
Tshape0
a
Reshape_21/shapeConst^Adam*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_21Reshape	split_1:3Reshape_21/shape*
T0*
Tshape0*
_output_shapes
:@
h
Reshape_22/shapeConst^Adam*
dtype0*
valueB"@      *
_output_shapes
:
i

Reshape_22Reshape	split_1:4Reshape_22/shape*
Tshape0*
T0*
_output_shapes

:@
a
Reshape_23/shapeConst^Adam*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_23Reshape	split_1:5Reshape_23/shape*
_output_shapes
:*
Tshape0*
T0
ก
AssignAssignv/dense/kernel
Reshape_18*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0*
use_locking(*
_output_shapes

:@

Assign_1Assignv/dense/bias
Reshape_19*
_class
loc:@v/dense/bias*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(
ง
Assign_2Assignv/dense_1/kernel
Reshape_20*
use_locking(*
validate_shape(*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@

Assign_3Assignv/dense_1/bias
Reshape_21*
T0*
use_locking(*
_output_shapes
:@*
validate_shape(*!
_class
loc:@v/dense_1/bias
ง
Assign_4Assignv/dense_2/kernel
Reshape_22*
validate_shape(*
T0*
use_locking(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@

Assign_5Assignv/dense_2/bias
Reshape_23*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias
Y

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_1/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
_output_shapes
: *
T0*

index_type0
R
gradients_1/Neg_grad/NegNeggradients_1/Fill*
T0*
_output_shapes
: 
m
#gradients_1/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

gradients_1/Mean_grad/ReshapeReshapegradients_1/Neg_grad/Neg#gradients_1/Mean_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
^
gradients_1/Mean_grad/ShapeShapemul*
T0*
_output_shapes
:*
out_type0

gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Shape*

Tmultiples0*#
_output_shapes
:?????????*
T0
`
gradients_1/Mean_grad/Shape_1Shapemul*
out_type0*
_output_shapes
:*
T0
`
gradients_1/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
e
gradients_1/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0

gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
g
gradients_1/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
gradients_1/Mean_grad/Prod_1Prodgradients_1/Mean_grad/Shape_2gradients_1/Mean_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
a
gradients_1/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
_output_shapes
: *
T0

gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
_output_shapes
: *
T0

gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0

gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
]
gradients_1/mul_grad/ShapeShapeExp*
_output_shapes
:*
out_type0*
T0
i
gradients_1/mul_grad/Shape_1ShapePlaceholder_2*
_output_shapes
:*
out_type0*
T0
บ
*gradients_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_grad/Shapegradients_1/mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
{
gradients_1/mul_grad/MulMulgradients_1/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:?????????
ฅ
gradients_1/mul_grad/SumSumgradients_1/mul_grad/Mul*gradients_1/mul_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0

gradients_1/mul_grad/ReshapeReshapegradients_1/mul_grad/Sumgradients_1/mul_grad/Shape*
Tshape0*
T0*#
_output_shapes
:?????????
s
gradients_1/mul_grad/Mul_1MulExpgradients_1/Mean_grad/truediv*
T0*#
_output_shapes
:?????????
ซ
gradients_1/mul_grad/Sum_1Sumgradients_1/mul_grad/Mul_1,gradients_1/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0

gradients_1/mul_grad/Reshape_1Reshapegradients_1/mul_grad/Sum_1gradients_1/mul_grad/Shape_1*#
_output_shapes
:?????????*
Tshape0*
T0
p
gradients_1/Exp_grad/mulMulgradients_1/mul_grad/ReshapeExp*
T0*#
_output_shapes
:?????????
`
gradients_1/sub_grad/ShapeShapepi/Sum*
_output_shapes
:*
T0*
out_type0
i
gradients_1/sub_grad/Shape_1ShapePlaceholder_4*
out_type0*
_output_shapes
:*
T0
บ
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
ฅ
gradients_1/sub_grad/SumSumgradients_1/Exp_grad/mul*gradients_1/sub_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*#
_output_shapes
:?????????*
Tshape0
g
gradients_1/sub_grad/NegNeggradients_1/Exp_grad/mul*#
_output_shapes
:?????????*
T0
ฉ
gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0

gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*#
_output_shapes
:?????????*
Tshape0*
T0
c
gradients_1/pi/Sum_grad/ShapeShapepi/mul*
out_type0*
T0*
_output_shapes
:

gradients_1/pi/Sum_grad/SizeConst*
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :
ฏ
gradients_1/pi/Sum_grad/addAddV2pi/Sum/reduction_indicesgradients_1/pi/Sum_grad/Size*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0
ต
gradients_1/pi/Sum_grad/modFloorModgradients_1/pi/Sum_grad/addgradients_1/pi/Sum_grad/Size*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0*
_output_shapes
: 

gradients_1/pi/Sum_grad/Shape_1Const*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
valueB *
_output_shapes
: 

#gradients_1/pi/Sum_grad/range/startConst*
value	B : *
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 

#gradients_1/pi/Sum_grad/range/deltaConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
่
gradients_1/pi/Sum_grad/rangeRange#gradients_1/pi/Sum_grad/range/startgradients_1/pi/Sum_grad/Size#gradients_1/pi/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape

"gradients_1/pi/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
ฮ
gradients_1/pi/Sum_grad/FillFillgradients_1/pi/Sum_grad/Shape_1"gradients_1/pi/Sum_grad/Fill/value*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*

index_type0

%gradients_1/pi/Sum_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_grad/rangegradients_1/pi/Sum_grad/modgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Fill*
_output_shapes
:*
T0*
N*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape

!gradients_1/pi/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
value	B :
ห
gradients_1/pi/Sum_grad/MaximumMaximum%gradients_1/pi/Sum_grad/DynamicStitch!gradients_1/pi/Sum_grad/Maximum/y*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:*
T0
ร
 gradients_1/pi/Sum_grad/floordivFloorDivgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Maximum*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:
ธ
gradients_1/pi/Sum_grad/ReshapeReshapegradients_1/sub_grad/Reshape%gradients_1/pi/Sum_grad/DynamicStitch*
Tshape0*
T0*0
_output_shapes
:??????????????????
ซ
gradients_1/pi/Sum_grad/TileTilegradients_1/pi/Sum_grad/Reshape gradients_1/pi/Sum_grad/floordiv*'
_output_shapes
:?????????*

Tmultiples0*
T0
g
gradients_1/pi/mul_grad/ShapeShape
pi/one_hot*
out_type0*
T0*
_output_shapes
:
l
gradients_1/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
T0*
out_type0*
_output_shapes
:
ร
-gradients_1/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_grad/Shapegradients_1/pi/mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0

gradients_1/pi/mul_grad/MulMulgradients_1/pi/Sum_grad/Tilepi/LogSoftmax*
T0*'
_output_shapes
:?????????
ฎ
gradients_1/pi/mul_grad/SumSumgradients_1/pi/mul_grad/Mul-gradients_1/pi/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ฆ
gradients_1/pi/mul_grad/ReshapeReshapegradients_1/pi/mul_grad/Sumgradients_1/pi/mul_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????

gradients_1/pi/mul_grad/Mul_1Mul
pi/one_hotgradients_1/pi/Sum_grad/Tile*
T0*'
_output_shapes
:?????????
ด
gradients_1/pi/mul_grad/Sum_1Sumgradients_1/pi/mul_grad/Mul_1/gradients_1/pi/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
ฌ
!gradients_1/pi/mul_grad/Reshape_1Reshapegradients_1/pi/mul_grad/Sum_1gradients_1/pi/mul_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:?????????
j
"gradients_1/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:?????????

4gradients_1/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
?????????*
_output_shapes
: *
dtype0
ั
"gradients_1/pi/LogSoftmax_grad/SumSum!gradients_1/pi/mul_grad/Reshape_14gradients_1/pi/LogSoftmax_grad/Sum/reduction_indices*
T0*

Tidx0*
	keep_dims(*'
_output_shapes
:?????????
ฃ
"gradients_1/pi/LogSoftmax_grad/mulMul"gradients_1/pi/LogSoftmax_grad/Sum"gradients_1/pi/LogSoftmax_grad/Exp*'
_output_shapes
:?????????*
T0
ข
"gradients_1/pi/LogSoftmax_grad/subSub!gradients_1/pi/mul_grad/Reshape_1"gradients_1/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:?????????

/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
ว
)gradients_1/pi/dense_2/MatMul_grad/MatMulMatMul"gradients_1/pi/LogSoftmax_grad/subpi/dense_2/kernel/read*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????@*
T0
น
+gradients_1/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh"gradients_1/pi/LogSoftmax_grad/sub*
T0*
transpose_a(*
transpose_b( *
_output_shapes

:@
ฃ
)gradients_1/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_1/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
ฅ
/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes
:@*
data_formatNHWC*
T0
ฮ
)gradients_1/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_1/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*'
_output_shapes
:?????????@*
transpose_b(*
T0*
transpose_a( 
พ
+gradients_1/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:@@

'gradients_1/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_1/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
ก
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*
_output_shapes
:@
ศ
'gradients_1/pi/dense/MatMul_grad/MatMulMatMul'gradients_1/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b(
ธ
)gradients_1/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_1/pi/dense/Tanh_grad/TanhGrad*
_output_shapes

:@*
transpose_a(*
T0*
transpose_b( 
c
Reshape_24/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0


Reshape_24Reshape)gradients_1/pi/dense/MatMul_grad/MatMul_1Reshape_24/shape*
Tshape0*
T0*
_output_shapes	
:
c
Reshape_25/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????


Reshape_25Reshape-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradReshape_25/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_26/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_26Reshape+gradients_1/pi/dense_1/MatMul_grad/MatMul_1Reshape_26/shape*
_output_shapes	
: *
Tshape0*
T0
c
Reshape_27/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????


Reshape_27Reshape/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_27/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_28/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_28Reshape+gradients_1/pi/dense_2/MatMul_grad/MatMul_1Reshape_28/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_29/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_29Reshape/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_29/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_2/axisConst*
value	B : *
_output_shapes
: *
dtype0
ฆ
concat_2ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27
Reshape_28
Reshape_29concat_2/axis*
T0*
_output_shapes	
:$*

Tidx0*
N
T
gradients_2/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_2/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
p
&gradients_2/pi/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:

 gradients_2/pi/Mean_grad/ReshapeReshapegradients_2/Fill&gradients_2/pi/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
f
gradients_2/pi/Mean_grad/ShapeShapepi/Sum_2*
T0*
out_type0*
_output_shapes
:
ง
gradients_2/pi/Mean_grad/TileTile gradients_2/pi/Mean_grad/Reshapegradients_2/pi/Mean_grad/Shape*

Tmultiples0*#
_output_shapes
:?????????*
T0
h
 gradients_2/pi/Mean_grad/Shape_1Shapepi/Sum_2*
T0*
out_type0*
_output_shapes
:
c
 gradients_2/pi/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
h
gradients_2/pi/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
ฅ
gradients_2/pi/Mean_grad/ProdProd gradients_2/pi/Mean_grad/Shape_1gradients_2/pi/Mean_grad/Const*
T0*
	keep_dims( *
_output_shapes
: *

Tidx0
j
 gradients_2/pi/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
ฉ
gradients_2/pi/Mean_grad/Prod_1Prod gradients_2/pi/Mean_grad/Shape_2 gradients_2/pi/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
d
"gradients_2/pi/Mean_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0

 gradients_2/pi/Mean_grad/MaximumMaximumgradients_2/pi/Mean_grad/Prod_1"gradients_2/pi/Mean_grad/Maximum/y*
_output_shapes
: *
T0

!gradients_2/pi/Mean_grad/floordivFloorDivgradients_2/pi/Mean_grad/Prod gradients_2/pi/Mean_grad/Maximum*
_output_shapes
: *
T0

gradients_2/pi/Mean_grad/CastCast!gradients_2/pi/Mean_grad/floordiv*

DstT0*
Truncate( *
_output_shapes
: *

SrcT0

 gradients_2/pi/Mean_grad/truedivRealDivgradients_2/pi/Mean_grad/Tilegradients_2/pi/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
g
gradients_2/pi/Sum_2_grad/ShapeShapepi/mul_2*
_output_shapes
:*
out_type0*
T0

gradients_2/pi/Sum_2_grad/SizeConst*
_output_shapes
: *
dtype0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
value	B :
ท
gradients_2/pi/Sum_2_grad/addAddV2pi/Sum_2/reduction_indicesgradients_2/pi/Sum_2_grad/Size*
T0*
_output_shapes
: *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
ฝ
gradients_2/pi/Sum_2_grad/modFloorModgradients_2/pi/Sum_2_grad/addgradients_2/pi/Sum_2_grad/Size*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: *
T0

!gradients_2/pi/Sum_2_grad/Shape_1Const*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
valueB *
dtype0*
_output_shapes
: 

%gradients_2/pi/Sum_2_grad/range/startConst*
_output_shapes
: *
value	B : *
dtype0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

%gradients_2/pi/Sum_2_grad/range/deltaConst*
_output_shapes
: *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
value	B :*
dtype0
๒
gradients_2/pi/Sum_2_grad/rangeRange%gradients_2/pi/Sum_2_grad/range/startgradients_2/pi/Sum_2_grad/Size%gradients_2/pi/Sum_2_grad/range/delta*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:*

Tidx0

$gradients_2/pi/Sum_2_grad/Fill/valueConst*
_output_shapes
: *
value	B :*
dtype0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
ึ
gradients_2/pi/Sum_2_grad/FillFill!gradients_2/pi/Sum_2_grad/Shape_1$gradients_2/pi/Sum_2_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: 

'gradients_2/pi/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/pi/Sum_2_grad/rangegradients_2/pi/Sum_2_grad/modgradients_2/pi/Sum_2_grad/Shapegradients_2/pi/Sum_2_grad/Fill*
T0*
N*
_output_shapes
:*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

#gradients_2/pi/Sum_2_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
ำ
!gradients_2/pi/Sum_2_grad/MaximumMaximum'gradients_2/pi/Sum_2_grad/DynamicStitch#gradients_2/pi/Sum_2_grad/Maximum/y*
_output_shapes
:*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
ห
"gradients_2/pi/Sum_2_grad/floordivFloorDivgradients_2/pi/Sum_2_grad/Shape!gradients_2/pi/Sum_2_grad/Maximum*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:*
T0
ภ
!gradients_2/pi/Sum_2_grad/ReshapeReshape gradients_2/pi/Mean_grad/truediv'gradients_2/pi/Sum_2_grad/DynamicStitch*
T0*0
_output_shapes
:??????????????????*
Tshape0
ฑ
gradients_2/pi/Sum_2_grad/TileTile!gradients_2/pi/Sum_2_grad/Reshape"gradients_2/pi/Sum_2_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:?????????
e
gradients_2/pi/mul_2_grad/ShapeShapepi/Exp*
out_type0*
_output_shapes
:*
T0
g
!gradients_2/pi/mul_2_grad/Shape_1Shapepi/sub*
_output_shapes
:*
T0*
out_type0
ษ
/gradients_2/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_2_grad/Shape!gradients_2/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
~
gradients_2/pi/mul_2_grad/MulMulgradients_2/pi/Sum_2_grad/Tilepi/sub*'
_output_shapes
:?????????*
T0
ด
gradients_2/pi/mul_2_grad/SumSumgradients_2/pi/mul_2_grad/Mul/gradients_2/pi/mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
ฌ
!gradients_2/pi/mul_2_grad/ReshapeReshapegradients_2/pi/mul_2_grad/Sumgradients_2/pi/mul_2_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0

gradients_2/pi/mul_2_grad/Mul_1Mulpi/Expgradients_2/pi/Sum_2_grad/Tile*
T0*'
_output_shapes
:?????????
บ
gradients_2/pi/mul_2_grad/Sum_1Sumgradients_2/pi/mul_2_grad/Mul_11gradients_2/pi/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
ฒ
#gradients_2/pi/mul_2_grad/Reshape_1Reshapegradients_2/pi/mul_2_grad/Sum_1!gradients_2/pi/mul_2_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
k
gradients_2/pi/sub_grad/ShapeShapepi/Placeholder*
T0*
out_type0*
_output_shapes
:
l
gradients_2/pi/sub_grad/Shape_1Shapepi/LogSoftmax*
_output_shapes
:*
T0*
out_type0
ร
-gradients_2/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_grad/Shapegradients_2/pi/sub_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
ถ
gradients_2/pi/sub_grad/SumSum#gradients_2/pi/mul_2_grad/Reshape_1-gradients_2/pi/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
ฆ
gradients_2/pi/sub_grad/ReshapeReshapegradients_2/pi/sub_grad/Sumgradients_2/pi/sub_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
y
gradients_2/pi/sub_grad/NegNeg#gradients_2/pi/mul_2_grad/Reshape_1*
T0*'
_output_shapes
:?????????
ฒ
gradients_2/pi/sub_grad/Sum_1Sumgradients_2/pi/sub_grad/Neg/gradients_2/pi/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ฌ
!gradients_2/pi/sub_grad/Reshape_1Reshapegradients_2/pi/sub_grad/Sum_1gradients_2/pi/sub_grad/Shape_1*'
_output_shapes
:?????????*
Tshape0*
T0
j
"gradients_2/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:?????????

4gradients_2/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
?????????
ั
"gradients_2/pi/LogSoftmax_grad/SumSum!gradients_2/pi/sub_grad/Reshape_14gradients_2/pi/LogSoftmax_grad/Sum/reduction_indices*

Tidx0*
T0*'
_output_shapes
:?????????*
	keep_dims(
ฃ
"gradients_2/pi/LogSoftmax_grad/mulMul"gradients_2/pi/LogSoftmax_grad/Sum"gradients_2/pi/LogSoftmax_grad/Exp*'
_output_shapes
:?????????*
T0
ข
"gradients_2/pi/LogSoftmax_grad/subSub!gradients_2/pi/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/mul*'
_output_shapes
:?????????*
T0

/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_2/pi/LogSoftmax_grad/sub*
data_formatNHWC*
T0*
_output_shapes
:
ว
)gradients_2/pi/dense_2/MatMul_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/subpi/dense_2/kernel/read*
T0*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b(
น
+gradients_2/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh"gradients_2/pi/LogSoftmax_grad/sub*
_output_shapes

:@*
T0*
transpose_b( *
transpose_a(
ฃ
)gradients_2/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_2/pi/dense_2/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@
ฅ
/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*
_output_shapes
:@
ฮ
)gradients_2/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*'
_output_shapes
:?????????@*
T0*
transpose_a( *
transpose_b(
พ
+gradients_2/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
transpose_b( *
_output_shapes

:@@*
T0*
transpose_a(

'gradients_2/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_2/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
ก
-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_2/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes
:@*
data_formatNHWC
ศ
'gradients_2/pi/dense/MatMul_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:?????????*
transpose_b(
ธ
)gradients_2/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_2/pi/dense/Tanh_grad/TanhGrad*
transpose_a(*
T0*
_output_shapes

:@*
transpose_b( 
c
Reshape_30/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_30Reshape)gradients_2/pi/dense/MatMul_grad/MatMul_1Reshape_30/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_31/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_31Reshape-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradReshape_31/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_32/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_32Reshape+gradients_2/pi/dense_1/MatMul_grad/MatMul_1Reshape_32/shape*
Tshape0*
_output_shapes	
: *
T0
c
Reshape_33/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0


Reshape_33Reshape/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_33/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_34/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_34Reshape+gradients_2/pi/dense_2/MatMul_grad/MatMul_1Reshape_34/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_35/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_35Reshape/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_35/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ฆ
concat_3ConcatV2
Reshape_30
Reshape_31
Reshape_32
Reshape_33
Reshape_34
Reshape_35concat_3/axis*
_output_shapes	
:$*

Tidx0*
T0*
N
X
Placeholder_5Placeholder*
dtype0*
shape:$*
_output_shapes	
:$
K
mul_1Mulconcat_3Placeholder_5*
T0*
_output_shapes	
:$
Q
Const_4Const*
_output_shapes
:*
dtype0*
valueB: 
X
SumSummul_1Const_4*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
T
gradients_3/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_3/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
l
"gradients_3/Sum_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0

gradients_3/Sum_grad/ReshapeReshapegradients_3/Fill"gradients_3/Sum_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
e
gradients_3/Sum_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB:$

gradients_3/Sum_grad/TileTilegradients_3/Sum_grad/Reshapegradients_3/Sum_grad/Const*
_output_shapes	
:$*
T0*

Tmultiples0
q
gradients_3/mul_1_grad/MulMulgradients_3/Sum_grad/TilePlaceholder_5*
_output_shapes	
:$*
T0
n
gradients_3/mul_1_grad/Mul_1Mulgradients_3/Sum_grad/Tileconcat_3*
_output_shapes	
:$*
T0
`
gradients_3/concat_3_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
y
gradients_3/concat_3_grad/modFloorModconcat_3/axisgradients_3/concat_3_grad/Rank*
_output_shapes
: *
T0
j
gradients_3/concat_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
k
!gradients_3/concat_3_grad/Shape_1Const*
dtype0*
valueB:@*
_output_shapes
:
l
!gradients_3/concat_3_grad/Shape_2Const*
valueB: *
_output_shapes
:*
dtype0
k
!gradients_3/concat_3_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@
l
!gradients_3/concat_3_grad/Shape_4Const*
valueB:*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_5Const*
valueB:*
dtype0*
_output_shapes
:
่
&gradients_3/concat_3_grad/ConcatOffsetConcatOffsetgradients_3/concat_3_grad/modgradients_3/concat_3_grad/Shape!gradients_3/concat_3_grad/Shape_1!gradients_3/concat_3_grad/Shape_2!gradients_3/concat_3_grad/Shape_3!gradients_3/concat_3_grad/Shape_4!gradients_3/concat_3_grad/Shape_5*8
_output_shapes&
$::::::*
N
ภ
gradients_3/concat_3_grad/SliceSlicegradients_3/mul_1_grad/Mul&gradients_3/concat_3_grad/ConcatOffsetgradients_3/concat_3_grad/Shape*
Index0*
_output_shapes	
:*
T0
ล
!gradients_3/concat_3_grad/Slice_1Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:1!gradients_3/concat_3_grad/Shape_1*
Index0*
_output_shapes
:@*
T0
ฦ
!gradients_3/concat_3_grad/Slice_2Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:2!gradients_3/concat_3_grad/Shape_2*
Index0*
_output_shapes	
: *
T0
ล
!gradients_3/concat_3_grad/Slice_3Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:3!gradients_3/concat_3_grad/Shape_3*
Index0*
T0*
_output_shapes
:@
ฦ
!gradients_3/concat_3_grad/Slice_4Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:4!gradients_3/concat_3_grad/Shape_4*
_output_shapes	
:*
Index0*
T0
ล
!gradients_3/concat_3_grad/Slice_5Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:5!gradients_3/concat_3_grad/Shape_5*
T0*
_output_shapes
:*
Index0
r
!gradients_3/Reshape_30_grad/ShapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
ฉ
#gradients_3/Reshape_30_grad/ReshapeReshapegradients_3/concat_3_grad/Slice!gradients_3/Reshape_30_grad/Shape*
_output_shapes

:@*
T0*
Tshape0
k
!gradients_3/Reshape_31_grad/ShapeConst*
valueB:@*
_output_shapes
:*
dtype0
ง
#gradients_3/Reshape_31_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_1!gradients_3/Reshape_31_grad/Shape*
T0*
Tshape0*
_output_shapes
:@
r
!gradients_3/Reshape_32_grad/ShapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
ซ
#gradients_3/Reshape_32_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_2!gradients_3/Reshape_32_grad/Shape*
_output_shapes

:@@*
T0*
Tshape0
k
!gradients_3/Reshape_33_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@
ง
#gradients_3/Reshape_33_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_3!gradients_3/Reshape_33_grad/Shape*
T0*
_output_shapes
:@*
Tshape0
r
!gradients_3/Reshape_34_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      
ซ
#gradients_3/Reshape_34_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_4!gradients_3/Reshape_34_grad/Shape*
Tshape0*
_output_shapes

:@*
T0
k
!gradients_3/Reshape_35_grad/ShapeConst*
_output_shapes
:*
valueB:*
dtype0
ง
#gradients_3/Reshape_35_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_5!gradients_3/Reshape_35_grad/Shape*
_output_shapes
:*
T0*
Tshape0
๑
Agradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGrad#gradients_3/Reshape_30_grad/Reshape*'
_output_shapes
:?????????*
transpose_a( *
T0*
transpose_b(
ื
Cgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1MatMulPlaceholder#gradients_3/Reshape_30_grad/Reshape*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????@*
T0
ซ
Dgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeShape'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes
:*
out_type0*
T0

Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
dtype0*
valueB:@*
_output_shapes
:

Rgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
ง
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
dtype0*
valueB:
?????????*
_output_shapes
:

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ธ
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeRgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*

begin_mask*
T0*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask *
_output_shapes
:*
new_axis_mask 

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
ง
Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
_output_shapes
:*

index_type0*
T0

Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
้
Egradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
_output_shapes
:*
N*

Tidx0*
T0

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
ฉ
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?????????
?
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ภ
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackVgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
shrink_axis_mask *
Index0*
_output_shapes
:*
end_mask *
new_axis_mask *

begin_mask*
T0*
ellipsis_mask 

Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:

Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ggradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*

Tidx0*
T0*
_output_shapes
:*
N
๔
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_31_grad/ReshapeEgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat*
Tshape0*
T0*
_output_shapes

:@
?
Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/TileTileFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeGgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1*
T0*'
_output_shapes
:?????????@*

Tmultiples0
๕
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGrad#gradients_3/Reshape_32_grad/Reshape*
T0*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b(
?
Egradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense/Tanh#gradients_3/Reshape_32_grad/Reshape*
T0*
transpose_b( *'
_output_shapes
:?????????@*
transpose_a( 
ฏ
Fgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeShape)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes
:*
out_type0*
T0

Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:@*
_output_shapes
:*
dtype0

Tgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
ฉ
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
dtype0*
valueB:
?????????*
_output_shapes
:
?
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ย
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*

begin_mask*
new_axis_mask *
T0*
_output_shapes
:*
Index0*
end_mask *
ellipsis_mask *
shrink_axis_mask 

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
_output_shapes
: *
value	B :*
dtype0
ญ
Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*

index_type0*
T0*
_output_shapes
:

Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
๑
Ggradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
ซ
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?????????
ข
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ส
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *
new_axis_mask *
T0*
end_mask *
_output_shapes
:*

begin_mask*
Index0

Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
dtype0*
valueB:*
_output_shapes
:

Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

Igradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
N*

Tidx0*
T0*
_output_shapes
:
๘
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_33_grad/ReshapeGgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
Tshape0*
_output_shapes

:@
ฆ
Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1*
T0*'
_output_shapes
:?????????@*

Tmultiples0
๎
Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/sub#gradients_3/Reshape_34_grad/Reshape*'
_output_shapes
:?????????@*
T0*
transpose_b(*
transpose_a( 
?
Egradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_3/Reshape_34_grad/Reshape*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????
จ
Fgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/sub*
_output_shapes
:*
out_type0*
T0

Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:

Tgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
ฉ
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ย
Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*

begin_mask*
Index0*
ellipsis_mask *
end_mask *
_output_shapes
:*
T0*
new_axis_mask *
shrink_axis_mask 

Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
_output_shapes
:*
valueB:*
dtype0

Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :
ญ
Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*

index_type0*
T0*
_output_shapes
:

Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
๑
Ggradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
?
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
valueB: *
_output_shapes
:*
dtype0
ซ
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
?????????*
_output_shapes
:*
dtype0
ข
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ส
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
shrink_axis_mask *
new_axis_mask *

begin_mask*
Index0*
T0*
_output_shapes
:*
ellipsis_mask *
end_mask 

Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
valueB:*
_output_shapes
:*
dtype0

Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

Igradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*

Tidx0*
N*
_output_shapes
:
๘
Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_35_grad/ReshapeGgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat*
Tshape0*
T0*
_output_shapes

:
ฆ
Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1*
T0*'
_output_shapes
:?????????*

Tmultiples0
ต
gradients_3/AddNAddNCgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Tile*
N*'
_output_shapes
:?????????@*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1

>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN*
valueB
 *   ภ*
_output_shapes
: *
dtype0
ว
<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/y*'
_output_shapes
:?????????@*
T0
เ
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1Mul<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
ฦ
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2Mul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1pi/dense/Tanh*
T0*'
_output_shapes
:?????????@
?
Agradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN*
T0*'
_output_shapes
:?????????@
?
Agradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMulMatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_1/kernel/read*'
_output_shapes
:?????????@*
T0*
transpose_a( *
transpose_b( 

Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1MatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes

:@@*
transpose_b( *
T0*
transpose_a(

gradients_3/AddN_1AddNEgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul*
N*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1*
T0*'
_output_shapes
:?????????@

@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN_1*
_output_shapes
: *
dtype0*
valueB
 *   ภ
อ
>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN_1@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/y*'
_output_shapes
:?????????@*
T0
ไ
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1Mul>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
ฬ
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2Mul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1pi/dense_1/Tanh*'
_output_shapes
:?????????@*
T0
ฆ
Cgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_1*'
_output_shapes
:?????????@*
T0

Agradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMulMatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_2/kernel/read*'
_output_shapes
:?????????*
transpose_b( *
transpose_a( *
T0

Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1MatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGrad"gradients_2/pi/LogSoftmax_grad/sub*
transpose_b( *
_output_shapes

:@*
T0*
transpose_a(

gradients_3/AddN_2AddNEgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul*
T0*
N*'
_output_shapes
:?????????*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1

9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ShapeShape!gradients_2/pi/sub_grad/Reshape_1*
out_type0*
T0*
_output_shapes
:

;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/mul*
_output_shapes
:*
out_type0*
T0

Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/SumSumgradients_3/AddN_2Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
๚
;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????

7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/NegNeggradients_3/AddN_2*
T0*'
_output_shapes
:?????????

9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1Sum7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/NegKgradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 

=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1Reshape9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????

9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/Sum*
T0*
_output_shapes
:*
out_type0

;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/Exp*
_output_shapes
:*
out_type0*
T0

Igradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
ำ
7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*'
_output_shapes
:?????????*
T0

7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulIgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
๚
;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
ี
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Mul"gradients_2/pi/LogSoftmax_grad/Sum=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1*'
_output_shapes
:?????????*
T0

9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Kgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1Reshape9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
ำ
7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*'
_output_shapes
:?????????*
T0
j
"gradients_3/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*'
_output_shapes
:?????????*
T0

4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
?????????*
_output_shapes
: *
dtype0
็
"gradients_3/pi/LogSoftmax_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*'
_output_shapes
:?????????*
T0*

Tidx0
ฃ
"gradients_3/pi/LogSoftmax_grad/mulMul"gradients_3/pi/LogSoftmax_grad/Sum"gradients_3/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:?????????
ธ
"gradients_3/pi/LogSoftmax_grad/subSub7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul"gradients_3/pi/LogSoftmax_grad/mul*'
_output_shapes
:?????????*
T0

/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_3/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
ว
)gradients_3/pi/dense_2/MatMul_grad/MatMulMatMul"gradients_3/pi/LogSoftmax_grad/subpi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:?????????@*
transpose_b(*
T0
น
+gradients_3/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh"gradients_3/pi/LogSoftmax_grad/sub*
transpose_a(*
transpose_b( *
_output_shapes

:@*
T0
฿
gradients_3/AddN_3AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_2/MatMul_grad/MatMul*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul*
N*'
_output_shapes
:?????????@

)gradients_3/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_3*'
_output_shapes
:?????????@*
T0

gradients_3/AddN_4AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_2/MatMul_grad/MatMul_1*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1*
N*
T0*
_output_shapes

:@
ฅ
/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
T0*
_output_shapes
:@*
data_formatNHWC
ฮ
)gradients_3/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_3/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:?????????@*
transpose_b(*
T0
พ
+gradients_3/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
T0*
transpose_b( *
_output_shapes

:@@*
transpose_a(
?
gradients_3/AddN_5AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul*
N

'gradients_3/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN_5*
T0*'
_output_shapes
:?????????@

gradients_3/AddN_6AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_1/MatMul_grad/MatMul_1*
N*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1*
_output_shapes

:@@*
T0
ก
-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_3/pi/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:@
ศ
'gradients_3/pi/dense/MatMul_grad/MatMulMatMul'gradients_3/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
transpose_a( *
T0*'
_output_shapes
:?????????*
transpose_b(
ธ
)gradients_3/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_3/pi/dense/Tanh_grad/TanhGrad*
_output_shapes

:@*
T0*
transpose_b( *
transpose_a(
c
Reshape_36/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:


Reshape_36Reshape)gradients_3/pi/dense/MatMul_grad/MatMul_1Reshape_36/shape*
Tshape0*
T0*
_output_shapes	
:
c
Reshape_37/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0


Reshape_37Reshape-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradReshape_37/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_38/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
o

Reshape_38Reshapegradients_3/AddN_6Reshape_38/shape*
Tshape0*
T0*
_output_shapes	
: 
c
Reshape_39/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????


Reshape_39Reshape/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_39/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_40/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
o

Reshape_40Reshapegradients_3/AddN_4Reshape_40/shape*
T0*
_output_shapes	
:*
Tshape0
c
Reshape_41/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0


Reshape_41Reshape/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_41/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_4/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ฆ
concat_4ConcatV2
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41concat_4/axis*
N*
T0*
_output_shapes	
:$*

Tidx0
L
mul_2/xConst*
valueB
 *อฬฬ=*
dtype0*
_output_shapes
: 
J
mul_2Mulmul_2/xPlaceholder_5*
_output_shapes	
:$*
T0
C
addAddV2concat_4mul_2*
T0*
_output_shapes	
:$
c
Reshape_42/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
q

Reshape_42Reshapepi/dense/kernel/readReshape_42/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_43/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
n

Reshape_43Reshapepi/dense/bias/readReshape_43/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_44/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
s

Reshape_44Reshapepi/dense_1/kernel/readReshape_44/shape*
_output_shapes	
: *
Tshape0*
T0
c
Reshape_45/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
p

Reshape_45Reshapepi/dense_1/bias/readReshape_45/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_46/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
s

Reshape_46Reshapepi/dense_2/kernel/readReshape_46/shape*
T0*
_output_shapes	
:*
Tshape0
c
Reshape_47/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
p

Reshape_47Reshapepi/dense_2/bias/readReshape_47/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_5/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ฆ
concat_5ConcatV2
Reshape_42
Reshape_43
Reshape_44
Reshape_45
Reshape_46
Reshape_47concat_5/axis*
T0*
_output_shapes	
:$*

Tidx0*
N
h
Const_5Const*
_output_shapes
:*-
value$B""   @      @         *
dtype0
S
split_2/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 

split_2SplitVPlaceholder_5Const_5split_2/split_dim*
T0*

Tlen0*
	num_split*;
_output_shapes)
'::@: :@::
a
Reshape_48/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
g

Reshape_48Reshapesplit_2Reshape_48/shape*
_output_shapes

:@*
Tshape0*
T0
Z
Reshape_49/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
e

Reshape_49Reshape	split_2:1Reshape_49/shape*
_output_shapes
:@*
Tshape0*
T0
a
Reshape_50/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_50Reshape	split_2:2Reshape_50/shape*
_output_shapes

:@@*
T0*
Tshape0
Z
Reshape_51/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_51Reshape	split_2:3Reshape_51/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_52/shapeConst*
_output_shapes
:*
dtype0*
valueB"@      
i

Reshape_52Reshape	split_2:4Reshape_52/shape*
_output_shapes

:@*
Tshape0*
T0
Z
Reshape_53/shapeConst*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_53Reshape	split_2:5Reshape_53/shape*
_output_shapes
:*
T0*
Tshape0
ฅ
Assign_6Assignpi/dense/kernel
Reshape_48*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@

Assign_7Assignpi/dense/bias
Reshape_49*
_output_shapes
:@*
validate_shape(* 
_class
loc:@pi/dense/bias*
use_locking(*
T0
ฉ
Assign_8Assignpi/dense_1/kernel
Reshape_50*
T0*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
ก
Assign_9Assignpi/dense_1/bias
Reshape_51*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
T0
ช
	Assign_10Assignpi/dense_2/kernel
Reshape_52*
_output_shapes

:@*
T0*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_2/kernel
ข
	Assign_11Assignpi/dense_2/bias
Reshape_53*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense_2/bias
X
group_deps_2NoOp
^Assign_10
^Assign_11	^Assign_6	^Assign_7	^Assign_8	^Assign_9
ฬ
initNoOp^beta1_power/Assign^beta2_power/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign^v/dense_2/bias/Adam/Assign^v/dense_2/bias/Adam_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/Adam/Assign^v/dense_2/kernel/Adam_1/Assign^v/dense_2/kernel/Assign
c
Reshape_54/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
q

Reshape_54Reshapepi/dense/kernel/readReshape_54/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_55/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
n

Reshape_55Reshapepi/dense/bias/readReshape_55/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_56/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
s

Reshape_56Reshapepi/dense_1/kernel/readReshape_56/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_57/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
p

Reshape_57Reshapepi/dense_1/bias/readReshape_57/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_58/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
s

Reshape_58Reshapepi/dense_2/kernel/readReshape_58/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_59/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
p

Reshape_59Reshapepi/dense_2/bias/readReshape_59/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_60/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
p

Reshape_60Reshapev/dense/kernel/readReshape_60/shape*
Tshape0*
T0*
_output_shapes	
:
c
Reshape_61/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
m

Reshape_61Reshapev/dense/bias/readReshape_61/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_62/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
r

Reshape_62Reshapev/dense_1/kernel/readReshape_62/shape*
T0*
_output_shapes	
: *
Tshape0
c
Reshape_63/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
o

Reshape_63Reshapev/dense_1/bias/readReshape_63/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_64/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
q

Reshape_64Reshapev/dense_2/kernel/readReshape_64/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_65/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
o

Reshape_65Reshapev/dense_2/bias/readReshape_65/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_66/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
l

Reshape_66Reshapebeta1_power/readReshape_66/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_67/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
l

Reshape_67Reshapebeta2_power/readReshape_67/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_68/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
u

Reshape_68Reshapev/dense/kernel/Adam/readReshape_68/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_69/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
w

Reshape_69Reshapev/dense/kernel/Adam_1/readReshape_69/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_70/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
r

Reshape_70Reshapev/dense/bias/Adam/readReshape_70/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_71/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
t

Reshape_71Reshapev/dense/bias/Adam_1/readReshape_71/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_72/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
w

Reshape_72Reshapev/dense_1/kernel/Adam/readReshape_72/shape*
Tshape0*
T0*
_output_shapes	
: 
c
Reshape_73/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
y

Reshape_73Reshapev/dense_1/kernel/Adam_1/readReshape_73/shape*
_output_shapes	
: *
Tshape0*
T0
c
Reshape_74/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
t

Reshape_74Reshapev/dense_1/bias/Adam/readReshape_74/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_75/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
v

Reshape_75Reshapev/dense_1/bias/Adam_1/readReshape_75/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_76/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
v

Reshape_76Reshapev/dense_2/kernel/Adam/readReshape_76/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_77/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
x

Reshape_77Reshapev/dense_2/kernel/Adam_1/readReshape_77/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_78/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
t

Reshape_78Reshapev/dense_2/bias/Adam/readReshape_78/shape*
_output_shapes
:*
Tshape0*
T0
c
Reshape_79/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
v

Reshape_79Reshapev/dense_2/bias/Adam_1/readReshape_79/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_6ConcatV2
Reshape_54
Reshape_55
Reshape_56
Reshape_57
Reshape_58
Reshape_59
Reshape_60
Reshape_61
Reshape_62
Reshape_63
Reshape_64
Reshape_65
Reshape_66
Reshape_67
Reshape_68
Reshape_69
Reshape_70
Reshape_71
Reshape_72
Reshape_73
Reshape_74
Reshape_75
Reshape_76
Reshape_77
Reshape_78
Reshape_79concat_6/axis*

Tidx0*
T0*
N*
_output_shapes

:ว
h
PyFunc_2PyFuncconcat_6*
Tout
2*
Tin
2*
token
pyfunc_2*
_output_shapes
:
ธ
Const_6Const*
_output_shapes
:*}
valuetBr"h   @      @            @      @   @                  @   @         @   @   @   @         *
dtype0
S
split_3/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
split_3SplitVPyFunc_2Const_6split_3/split_dim*|
_output_shapesj
h::::::::::::::::::::::::::*
T0*

Tlen0*
	num_split
a
Reshape_80/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
g

Reshape_80Reshapesplit_3Reshape_80/shape*
T0*
_output_shapes

:@*
Tshape0
Z
Reshape_81/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_81Reshape	split_3:1Reshape_81/shape*
T0*
_output_shapes
:@*
Tshape0
a
Reshape_82/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_82Reshape	split_3:2Reshape_82/shape*
Tshape0*
T0*
_output_shapes

:@@
Z
Reshape_83/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
e

Reshape_83Reshape	split_3:3Reshape_83/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_84/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_84Reshape	split_3:4Reshape_84/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_85/shapeConst*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_85Reshape	split_3:5Reshape_85/shape*
Tshape0*
_output_shapes
:*
T0
a
Reshape_86/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
i

Reshape_86Reshape	split_3:6Reshape_86/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_87/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_87Reshape	split_3:7Reshape_87/shape*
_output_shapes
:@*
Tshape0*
T0
a
Reshape_88/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
i

Reshape_88Reshape	split_3:8Reshape_88/shape*
_output_shapes

:@@*
T0*
Tshape0
Z
Reshape_89/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
e

Reshape_89Reshape	split_3:9Reshape_89/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_90/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
j

Reshape_90Reshape
split_3:10Reshape_90/shape*
_output_shapes

:@*
Tshape0*
T0
Z
Reshape_91/shapeConst*
valueB:*
_output_shapes
:*
dtype0
f

Reshape_91Reshape
split_3:11Reshape_91/shape*
Tshape0*
_output_shapes
:*
T0
S
Reshape_92/shapeConst*
_output_shapes
: *
dtype0*
valueB 
b

Reshape_92Reshape
split_3:12Reshape_92/shape*
_output_shapes
: *
Tshape0*
T0
S
Reshape_93/shapeConst*
_output_shapes
: *
valueB *
dtype0
b

Reshape_93Reshape
split_3:13Reshape_93/shape*
_output_shapes
: *
Tshape0*
T0
a
Reshape_94/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
j

Reshape_94Reshape
split_3:14Reshape_94/shape*
Tshape0*
_output_shapes

:@*
T0
a
Reshape_95/shapeConst*
dtype0*
valueB"   @   *
_output_shapes
:
j

Reshape_95Reshape
split_3:15Reshape_95/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_96/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
f

Reshape_96Reshape
split_3:16Reshape_96/shape*
T0*
_output_shapes
:@*
Tshape0
Z
Reshape_97/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
f

Reshape_97Reshape
split_3:17Reshape_97/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_98/shapeConst*
valueB"@   @   *
_output_shapes
:*
dtype0
j

Reshape_98Reshape
split_3:18Reshape_98/shape*
Tshape0*
_output_shapes

:@@*
T0
a
Reshape_99/shapeConst*
dtype0*
valueB"@   @   *
_output_shapes
:
j

Reshape_99Reshape
split_3:19Reshape_99/shape*
Tshape0*
_output_shapes

:@@*
T0
[
Reshape_100/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_100Reshape
split_3:20Reshape_100/shape*
Tshape0*
T0*
_output_shapes
:@
[
Reshape_101/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
h
Reshape_101Reshape
split_3:21Reshape_101/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_102/shapeConst*
dtype0*
valueB"@      *
_output_shapes
:
l
Reshape_102Reshape
split_3:22Reshape_102/shape*
T0*
_output_shapes

:@*
Tshape0
b
Reshape_103/shapeConst*
_output_shapes
:*
dtype0*
valueB"@      
l
Reshape_103Reshape
split_3:23Reshape_103/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_104/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_104Reshape
split_3:24Reshape_104/shape*
Tshape0*
_output_shapes
:*
T0
[
Reshape_105/shapeConst*
dtype0*
valueB:*
_output_shapes
:
h
Reshape_105Reshape
split_3:25Reshape_105/shape*
T0*
Tshape0*
_output_shapes
:
ฆ
	Assign_12Assignpi/dense/kernel
Reshape_80*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
T0*
validate_shape(*
use_locking(

	Assign_13Assignpi/dense/bias
Reshape_81*
validate_shape(* 
_class
loc:@pi/dense/bias*
use_locking(*
_output_shapes
:@*
T0
ช
	Assign_14Assignpi/dense_1/kernel
Reshape_82*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel
ข
	Assign_15Assignpi/dense_1/bias
Reshape_83*
validate_shape(*
_output_shapes
:@*
use_locking(*"
_class
loc:@pi/dense_1/bias*
T0
ช
	Assign_16Assignpi/dense_2/kernel
Reshape_84*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0*
validate_shape(*
use_locking(
ข
	Assign_17Assignpi/dense_2/bias
Reshape_85*
use_locking(*
validate_shape(*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
ค
	Assign_18Assignv/dense/kernel
Reshape_86*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
validate_shape(*
T0*
use_locking(

	Assign_19Assignv/dense/bias
Reshape_87*
_class
loc:@v/dense/bias*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(
จ
	Assign_20Assignv/dense_1/kernel
Reshape_88*
_output_shapes

:@@*
use_locking(*
validate_shape(*
T0*#
_class
loc:@v/dense_1/kernel
?
	Assign_21Assignv/dense_1/bias
Reshape_89*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0*
_output_shapes
:@
จ
	Assign_22Assignv/dense_2/kernel
Reshape_90*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes

:@
?
	Assign_23Assignv/dense_2/bias
Reshape_91*
_output_shapes
:*
validate_shape(*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias

	Assign_24Assignbeta1_power
Reshape_92*
use_locking(*
validate_shape(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

	Assign_25Assignbeta2_power
Reshape_93*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@v/dense/bias*
use_locking(
ฉ
	Assign_26Assignv/dense/kernel/Adam
Reshape_94*
use_locking(*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0*
_output_shapes

:@
ซ
	Assign_27Assignv/dense/kernel/Adam_1
Reshape_95*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
validate_shape(*
use_locking(*
T0
ก
	Assign_28Assignv/dense/bias/Adam
Reshape_96*
validate_shape(*
_class
loc:@v/dense/bias*
T0*
use_locking(*
_output_shapes
:@
ฃ
	Assign_29Assignv/dense/bias/Adam_1
Reshape_97*
T0*
validate_shape(*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
:@
ญ
	Assign_30Assignv/dense_1/kernel/Adam
Reshape_98*#
_class
loc:@v/dense_1/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@@
ฏ
	Assign_31Assignv/dense_1/kernel/Adam_1
Reshape_99*
T0*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
use_locking(
ฆ
	Assign_32Assignv/dense_1/bias/AdamReshape_100*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@
จ
	Assign_33Assignv/dense_1/bias/Adam_1Reshape_101*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*!
_class
loc:@v/dense_1/bias
ฎ
	Assign_34Assignv/dense_2/kernel/AdamReshape_102*
use_locking(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
T0*
validate_shape(
ฐ
	Assign_35Assignv/dense_2/kernel/Adam_1Reshape_103*
T0*#
_class
loc:@v/dense_2/kernel*
use_locking(*
_output_shapes

:@*
validate_shape(
ฆ
	Assign_36Assignv/dense_2/bias/AdamReshape_104*
validate_shape(*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
use_locking(*
T0
จ
	Assign_37Assignv/dense_2/bias/Adam_1Reshape_105*
_output_shapes
:*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias*
validate_shape(
ฬ
group_deps_3NoOp
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
Y
save/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_19602025594b42199a2a361abee3c45e/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
า
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1

save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*
_output_shapes
:*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
ี
save/RestoreV2/tensor_namesConst*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0

save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
T0*
validate_shape(*
_class
loc:@v/dense/bias*
_output_shapes
: *
use_locking(
ก
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
T0*
validate_shape(*
use_locking(*
_output_shapes
: *
_class
loc:@v/dense/bias
จ
save/Assign_2Assignpi/dense/biassave/RestoreV2:2*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(* 
_class
loc:@pi/dense/bias
ฐ
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
use_locking(*"
_class
loc:@pi/dense/kernel*
T0*
validate_shape(*
_output_shapes

:@
ฌ
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
_output_shapes
:@*
validate_shape(*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias
ด
save/Assign_5Assignpi/dense_1/kernelsave/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
use_locking(*
_output_shapes

:@@*
validate_shape(
ฌ
save/Assign_6Assignpi/dense_2/biassave/RestoreV2:6*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
T0*
use_locking(*
validate_shape(
ด
save/Assign_7Assignpi/dense_2/kernelsave/RestoreV2:7*
_output_shapes

:@*
validate_shape(*
T0*$
_class
loc:@pi/dense_2/kernel*
use_locking(
ฆ
save/Assign_8Assignv/dense/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@*
validate_shape(
ซ
save/Assign_9Assignv/dense/bias/Adamsave/RestoreV2:9*
_class
loc:@v/dense/bias*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0
ฏ
save/Assign_10Assignv/dense/bias/Adam_1save/RestoreV2:10*
validate_shape(*
_class
loc:@v/dense/bias*
_output_shapes
:@*
use_locking(*
T0
ฐ
save/Assign_11Assignv/dense/kernelsave/RestoreV2:11*
T0*
validate_shape(*
_output_shapes

:@*
use_locking(*!
_class
loc:@v/dense/kernel
ต
save/Assign_12Assignv/dense/kernel/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel
ท
save/Assign_13Assignv/dense/kernel/Adam_1save/RestoreV2:13*
T0*
validate_shape(*!
_class
loc:@v/dense/kernel*
use_locking(*
_output_shapes

:@
ฌ
save/Assign_14Assignv/dense_1/biassave/RestoreV2:14*
validate_shape(*!
_class
loc:@v/dense_1/bias*
use_locking(*
T0*
_output_shapes
:@
ฑ
save/Assign_15Assignv/dense_1/bias/Adamsave/RestoreV2:15*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(*!
_class
loc:@v/dense_1/bias
ณ
save/Assign_16Assignv/dense_1/bias/Adam_1save/RestoreV2:16*
validate_shape(*
_output_shapes
:@*
T0*
use_locking(*!
_class
loc:@v/dense_1/bias
ด
save/Assign_17Assignv/dense_1/kernelsave/RestoreV2:17*
use_locking(*
validate_shape(*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
น
save/Assign_18Assignv/dense_1/kernel/Adamsave/RestoreV2:18*
T0*
_output_shapes

:@@*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_1/kernel
ป
save/Assign_19Assignv/dense_1/kernel/Adam_1save/RestoreV2:19*
T0*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
ฌ
save/Assign_20Assignv/dense_2/biassave/RestoreV2:20*
_output_shapes
:*
validate_shape(*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias
ฑ
save/Assign_21Assignv/dense_2/bias/Adamsave/RestoreV2:21*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
use_locking(*
validate_shape(*
T0
ณ
save/Assign_22Assignv/dense_2/bias/Adam_1save/RestoreV2:22*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
ด
save/Assign_23Assignv/dense_2/kernelsave/RestoreV2:23*
validate_shape(*
use_locking(*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes

:@
น
save/Assign_24Assignv/dense_2/kernel/Adamsave/RestoreV2:24*
_output_shapes

:@*
T0*
validate_shape(*
use_locking(*#
_class
loc:@v/dense_2/kernel
ป
save/Assign_25Assignv/dense_2/kernel/Adam_1save/RestoreV2:25*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
ศ
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 

save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_527d165a4ac24386ba968bc4d48c99d9/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ิ
save_1/SaveV2/tensor_namesConst*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
ฃ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
_output_shapes
:*
N*

axis *
T0

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
ื
save_1/RestoreV2/tensor_namesConst*
_output_shapes
:*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0

!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
ก
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
T0*
validate_shape(*
_output_shapes
: *
_class
loc:@v/dense/bias*
use_locking(
ฅ
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
_output_shapes
: *
validate_shape(*
use_locking(*
T0*
_class
loc:@v/dense/bias
ฌ
save_1/Assign_2Assignpi/dense/biassave_1/RestoreV2:2*
T0*
_output_shapes
:@*
validate_shape(* 
_class
loc:@pi/dense/bias*
use_locking(
ด
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*
validate_shape(*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel*
use_locking(
ฐ
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
T0*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
use_locking(*
_output_shapes
:@
ธ
save_1/Assign_5Assignpi/dense_1/kernelsave_1/RestoreV2:5*
_output_shapes

:@@*
validate_shape(*
use_locking(*$
_class
loc:@pi/dense_1/kernel*
T0
ฐ
save_1/Assign_6Assignpi/dense_2/biassave_1/RestoreV2:6*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(
ธ
save_1/Assign_7Assignpi/dense_2/kernelsave_1/RestoreV2:7*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
ช
save_1/Assign_8Assignv/dense/biassave_1/RestoreV2:8*
validate_shape(*
_output_shapes
:@*
T0*
use_locking(*
_class
loc:@v/dense/bias
ฏ
save_1/Assign_9Assignv/dense/bias/Adamsave_1/RestoreV2:9*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@v/dense/bias
ณ
save_1/Assign_10Assignv/dense/bias/Adam_1save_1/RestoreV2:10*
_class
loc:@v/dense/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
ด
save_1/Assign_11Assignv/dense/kernelsave_1/RestoreV2:11*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
use_locking(
น
save_1/Assign_12Assignv/dense/kernel/Adamsave_1/RestoreV2:12*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0*
validate_shape(*
use_locking(
ป
save_1/Assign_13Assignv/dense/kernel/Adam_1save_1/RestoreV2:13*!
_class
loc:@v/dense/kernel*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(
ฐ
save_1/Assign_14Assignv/dense_1/biassave_1/RestoreV2:14*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@
ต
save_1/Assign_15Assignv/dense_1/bias/Adamsave_1/RestoreV2:15*
use_locking(*
validate_shape(*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias
ท
save_1/Assign_16Assignv/dense_1/bias/Adam_1save_1/RestoreV2:16*
_output_shapes
:@*
T0*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_1/bias
ธ
save_1/Assign_17Assignv/dense_1/kernelsave_1/RestoreV2:17*
use_locking(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(*
T0
ฝ
save_1/Assign_18Assignv/dense_1/kernel/Adamsave_1/RestoreV2:18*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
T0*
use_locking(
ฟ
save_1/Assign_19Assignv/dense_1/kernel/Adam_1save_1/RestoreV2:19*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
T0*
_output_shapes

:@@*
use_locking(
ฐ
save_1/Assign_20Assignv/dense_2/biassave_1/RestoreV2:20*!
_class
loc:@v/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:*
use_locking(
ต
save_1/Assign_21Assignv/dense_2/bias/Adamsave_1/RestoreV2:21*
validate_shape(*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
ท
save_1/Assign_22Assignv/dense_2/bias/Adam_1save_1/RestoreV2:22*!
_class
loc:@v/dense_2/bias*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
ธ
save_1/Assign_23Assignv/dense_2/kernelsave_1/RestoreV2:23*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
use_locking(*
validate_shape(
ฝ
save_1/Assign_24Assignv/dense_2/kernel/Adamsave_1/RestoreV2:24*
use_locking(*
_output_shapes

:@*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
T0
ฟ
save_1/Assign_25Assignv/dense_2/kernel/Adam_1save_1/RestoreV2:25*
use_locking(*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
_output_shapes
: *
dtype0*
shape: 

save_2/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_4e513f2c634c4f48b0435b356ad99f3a/part
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_2/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
ิ
save_2/SaveV2/tensor_namesConst*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0

save_2/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*)
_class
loc:@save_2/ShardedFilename*
T0*
_output_shapes
: 
ฃ
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*

axis *
_output_shapes
:*
N*
T0

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0
ื
save_2/RestoreV2/tensor_namesConst*
_output_shapes
:*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0

!save_2/RestoreV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0

save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
ก
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
_output_shapes
: *
validate_shape(*
T0*
use_locking(*
_class
loc:@v/dense/bias
ฅ
save_2/Assign_1Assignbeta2_powersave_2/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
use_locking(*
_output_shapes
: *
T0
ฌ
save_2/Assign_2Assignpi/dense/biassave_2/RestoreV2:2* 
_class
loc:@pi/dense/bias*
use_locking(*
_output_shapes
:@*
T0*
validate_shape(
ด
save_2/Assign_3Assignpi/dense/kernelsave_2/RestoreV2:3*
T0*
use_locking(*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
validate_shape(
ฐ
save_2/Assign_4Assignpi/dense_1/biassave_2/RestoreV2:4*
T0*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
use_locking(
ธ
save_2/Assign_5Assignpi/dense_1/kernelsave_2/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
ฐ
save_2/Assign_6Assignpi/dense_2/biassave_2/RestoreV2:6*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(
ธ
save_2/Assign_7Assignpi/dense_2/kernelsave_2/RestoreV2:7*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
T0*
validate_shape(
ช
save_2/Assign_8Assignv/dense/biassave_2/RestoreV2:8*
use_locking(*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
T0
ฏ
save_2/Assign_9Assignv/dense/bias/Adamsave_2/RestoreV2:9*
validate_shape(*
T0*
use_locking(*
_output_shapes
:@*
_class
loc:@v/dense/bias
ณ
save_2/Assign_10Assignv/dense/bias/Adam_1save_2/RestoreV2:10*
use_locking(*
validate_shape(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
ด
save_2/Assign_11Assignv/dense/kernelsave_2/RestoreV2:11*
use_locking(*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0*
validate_shape(
น
save_2/Assign_12Assignv/dense/kernel/Adamsave_2/RestoreV2:12*
use_locking(*
validate_shape(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0
ป
save_2/Assign_13Assignv/dense/kernel/Adam_1save_2/RestoreV2:13*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0*
_output_shapes

:@*
use_locking(
ฐ
save_2/Assign_14Assignv/dense_1/biassave_2/RestoreV2:14*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
ต
save_2/Assign_15Assignv/dense_1/bias/Adamsave_2/RestoreV2:15*!
_class
loc:@v/dense_1/bias*
T0*
_output_shapes
:@*
validate_shape(*
use_locking(
ท
save_2/Assign_16Assignv/dense_1/bias/Adam_1save_2/RestoreV2:16*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@*
validate_shape(*
T0
ธ
save_2/Assign_17Assignv/dense_1/kernelsave_2/RestoreV2:17*
_output_shapes

:@@*
validate_shape(*
use_locking(*#
_class
loc:@v/dense_1/kernel*
T0
ฝ
save_2/Assign_18Assignv/dense_1/kernel/Adamsave_2/RestoreV2:18*
use_locking(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(*
T0
ฟ
save_2/Assign_19Assignv/dense_1/kernel/Adam_1save_2/RestoreV2:19*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0*
validate_shape(*
use_locking(
ฐ
save_2/Assign_20Assignv/dense_2/biassave_2/RestoreV2:20*
use_locking(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
validate_shape(*
T0
ต
save_2/Assign_21Assignv/dense_2/bias/Adamsave_2/RestoreV2:21*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ท
save_2/Assign_22Assignv/dense_2/bias/Adam_1save_2/RestoreV2:22*
use_locking(*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
T0*
validate_shape(
ธ
save_2/Assign_23Assignv/dense_2/kernelsave_2/RestoreV2:23*#
_class
loc:@v/dense_2/kernel*
T0*
validate_shape(*
_output_shapes

:@*
use_locking(
ฝ
save_2/Assign_24Assignv/dense_2/kernel/Adamsave_2/RestoreV2:24*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
ฟ
save_2/Assign_25Assignv/dense_2/kernel/Adam_1save_2/RestoreV2:25*
use_locking(*
T0*
validate_shape(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
shape: *
_output_shapes
: *
dtype0
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
_output_shapes
: *
dtype0*
shape: 

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_e6d340e275b54788a4e07a5f69b1f653/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_3/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_3/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
ิ
save_3/SaveV2/tensor_namesConst*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:

save_3/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2

save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
ฃ
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*

axis *
T0*
N*
_output_shapes
:

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
T0*
_output_shapes
: 
ื
save_3/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1

!save_3/RestoreV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0

save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*(
dtypes
2*|
_output_shapesj
h::::::::::::::::::::::::::
ก
save_3/AssignAssignbeta1_powersave_3/RestoreV2*
validate_shape(*
T0*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
: 
ฅ
save_3/Assign_1Assignbeta2_powersave_3/RestoreV2:1*
_output_shapes
: *
_class
loc:@v/dense/bias*
T0*
use_locking(*
validate_shape(
ฌ
save_3/Assign_2Assignpi/dense/biassave_3/RestoreV2:2*
validate_shape(*
_output_shapes
:@*
use_locking(* 
_class
loc:@pi/dense/bias*
T0
ด
save_3/Assign_3Assignpi/dense/kernelsave_3/RestoreV2:3*
T0*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
ฐ
save_3/Assign_4Assignpi/dense_1/biassave_3/RestoreV2:4*
use_locking(*
T0*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
validate_shape(
ธ
save_3/Assign_5Assignpi/dense_1/kernelsave_3/RestoreV2:5*
validate_shape(*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
ฐ
save_3/Assign_6Assignpi/dense_2/biassave_3/RestoreV2:6*
validate_shape(*
use_locking(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
T0
ธ
save_3/Assign_7Assignpi/dense_2/kernelsave_3/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
validate_shape(
ช
save_3/Assign_8Assignv/dense/biassave_3/RestoreV2:8*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(*
T0
ฏ
save_3/Assign_9Assignv/dense/bias/Adamsave_3/RestoreV2:9*
validate_shape(*
use_locking(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0
ณ
save_3/Assign_10Assignv/dense/bias/Adam_1save_3/RestoreV2:10*
_output_shapes
:@*
_class
loc:@v/dense/bias*
validate_shape(*
use_locking(*
T0
ด
save_3/Assign_11Assignv/dense/kernelsave_3/RestoreV2:11*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
น
save_3/Assign_12Assignv/dense/kernel/Adamsave_3/RestoreV2:12*
use_locking(*
_output_shapes

:@*
T0*
validate_shape(*!
_class
loc:@v/dense/kernel
ป
save_3/Assign_13Assignv/dense/kernel/Adam_1save_3/RestoreV2:13*
_output_shapes

:@*
T0*
use_locking(*
validate_shape(*!
_class
loc:@v/dense/kernel
ฐ
save_3/Assign_14Assignv/dense_1/biassave_3/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
ต
save_3/Assign_15Assignv/dense_1/bias/Adamsave_3/RestoreV2:15*
use_locking(*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
validate_shape(
ท
save_3/Assign_16Assignv/dense_1/bias/Adam_1save_3/RestoreV2:16*
_output_shapes
:@*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(
ธ
save_3/Assign_17Assignv/dense_1/kernelsave_3/RestoreV2:17*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(*
use_locking(
ฝ
save_3/Assign_18Assignv/dense_1/kernel/Adamsave_3/RestoreV2:18*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(*
use_locking(
ฟ
save_3/Assign_19Assignv/dense_1/kernel/Adam_1save_3/RestoreV2:19*
T0*
validate_shape(*
_output_shapes

:@@*
use_locking(*#
_class
loc:@v/dense_1/kernel
ฐ
save_3/Assign_20Assignv/dense_2/biassave_3/RestoreV2:20*
T0*
validate_shape(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
use_locking(
ต
save_3/Assign_21Assignv/dense_2/bias/Adamsave_3/RestoreV2:21*
validate_shape(*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
use_locking(
ท
save_3/Assign_22Assignv/dense_2/bias/Adam_1save_3/RestoreV2:22*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
validate_shape(
ธ
save_3/Assign_23Assignv/dense_2/kernelsave_3/RestoreV2:23*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
ฝ
save_3/Assign_24Assignv/dense_2/kernel/Adamsave_3/RestoreV2:24*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes

:@
ฟ
save_3/Assign_25Assignv/dense_2/kernel/Adam_1save_3/RestoreV2:25*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(
?
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
dtype0*
_output_shapes
: *
shape: 

save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_52281f0ce0f4479c9a07cf03e3b66ec0/part*
dtype0*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_4/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_4/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
ิ
save_4/SaveV2/tensor_namesConst*
_output_shapes
:*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0

save_4/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2

save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: *
T0
ฃ
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*
T0*
N*
_output_shapes
:*

axis 

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
T0*
_output_shapes
: 
ื
save_4/RestoreV2/tensor_namesConst*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_4/RestoreV2/shape_and_slicesConst*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*(
dtypes
2*|
_output_shapesj
h::::::::::::::::::::::::::
ก
save_4/AssignAssignbeta1_powersave_4/RestoreV2*
use_locking(*
_output_shapes
: *
T0*
validate_shape(*
_class
loc:@v/dense/bias
ฅ
save_4/Assign_1Assignbeta2_powersave_4/RestoreV2:1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@v/dense/bias
ฌ
save_4/Assign_2Assignpi/dense/biassave_4/RestoreV2:2*
use_locking(*
validate_shape(*
_output_shapes
:@* 
_class
loc:@pi/dense/bias*
T0
ด
save_4/Assign_3Assignpi/dense/kernelsave_4/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
use_locking(*
validate_shape(*
T0
ฐ
save_4/Assign_4Assignpi/dense_1/biassave_4/RestoreV2:4*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias
ธ
save_4/Assign_5Assignpi/dense_1/kernelsave_4/RestoreV2:5*
_output_shapes

:@@*
use_locking(*$
_class
loc:@pi/dense_1/kernel*
T0*
validate_shape(
ฐ
save_4/Assign_6Assignpi/dense_2/biassave_4/RestoreV2:6*
T0*
use_locking(*
_output_shapes
:*
validate_shape(*"
_class
loc:@pi/dense_2/bias
ธ
save_4/Assign_7Assignpi/dense_2/kernelsave_4/RestoreV2:7*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
validate_shape(*
use_locking(*
T0
ช
save_4/Assign_8Assignv/dense/biassave_4/RestoreV2:8*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@*
validate_shape(*
use_locking(
ฏ
save_4/Assign_9Assignv/dense/bias/Adamsave_4/RestoreV2:9*
_output_shapes
:@*
use_locking(*
_class
loc:@v/dense/bias*
validate_shape(*
T0
ณ
save_4/Assign_10Assignv/dense/bias/Adam_1save_4/RestoreV2:10*
validate_shape(*
_class
loc:@v/dense/bias*
_output_shapes
:@*
use_locking(*
T0
ด
save_4/Assign_11Assignv/dense/kernelsave_4/RestoreV2:11*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
use_locking(*
validate_shape(
น
save_4/Assign_12Assignv/dense/kernel/Adamsave_4/RestoreV2:12*
use_locking(*
validate_shape(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0
ป
save_4/Assign_13Assignv/dense/kernel/Adam_1save_4/RestoreV2:13*
validate_shape(*
use_locking(*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
ฐ
save_4/Assign_14Assignv/dense_1/biassave_4/RestoreV2:14*
validate_shape(*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@*
T0
ต
save_4/Assign_15Assignv/dense_1/bias/Adamsave_4/RestoreV2:15*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(*!
_class
loc:@v/dense_1/bias
ท
save_4/Assign_16Assignv/dense_1/bias/Adam_1save_4/RestoreV2:16*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0*
_output_shapes
:@*
use_locking(
ธ
save_4/Assign_17Assignv/dense_1/kernelsave_4/RestoreV2:17*
T0*
use_locking(*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ฝ
save_4/Assign_18Assignv/dense_1/kernel/Adamsave_4/RestoreV2:18*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0*
use_locking(*
validate_shape(
ฟ
save_4/Assign_19Assignv/dense_1/kernel/Adam_1save_4/RestoreV2:19*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(*
use_locking(*
T0
ฐ
save_4/Assign_20Assignv/dense_2/biassave_4/RestoreV2:20*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:
ต
save_4/Assign_21Assignv/dense_2/bias/Adamsave_4/RestoreV2:21*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:
ท
save_4/Assign_22Assignv/dense_2/bias/Adam_1save_4/RestoreV2:22*
validate_shape(*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
ธ
save_4/Assign_23Assignv/dense_2/kernelsave_4/RestoreV2:23*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
ฝ
save_4/Assign_24Assignv/dense_2/kernel/Adamsave_4/RestoreV2:24*
T0*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
ฟ
save_4/Assign_25Assignv/dense_2/kernel/Adam_1save_4/RestoreV2:25*
use_locking(*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
T0*
_output_shapes

:@
?
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
1
save_4/restore_allNoOp^save_4/restore_shard
[
save_5/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
r
save_5/filenamePlaceholderWithDefaultsave_5/filename/input*
dtype0*
shape: *
_output_shapes
: 
i
save_5/ConstPlaceholderWithDefaultsave_5/filename*
_output_shapes
: *
dtype0*
shape: 

save_5/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_9dd1c699c51e45f1a02d060d5e532906/part
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
S
save_5/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_5/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards*
_output_shapes
: 
ิ
save_5/SaveV2/tensor_namesConst*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:

save_5/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0

save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2

save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_5/ShardedFilename
ฃ
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency*
_output_shapes
:*
N*

axis *
T0

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const*
delete_old_dirs(

save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency*
T0*
_output_shapes
: 
ื
save_5/RestoreV2/tensor_namesConst*
value๛B๘Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0

!save_5/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
ก
save_5/AssignAssignbeta1_powersave_5/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
ฅ
save_5/Assign_1Assignbeta2_powersave_5/RestoreV2:1*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@v/dense/bias*
T0
ฌ
save_5/Assign_2Assignpi/dense/biassave_5/RestoreV2:2* 
_class
loc:@pi/dense/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
ด
save_5/Assign_3Assignpi/dense/kernelsave_5/RestoreV2:3*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
use_locking(*
_output_shapes

:@
ฐ
save_5/Assign_4Assignpi/dense_1/biassave_5/RestoreV2:4*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
use_locking(*
T0*
_output_shapes
:@
ธ
save_5/Assign_5Assignpi/dense_1/kernelsave_5/RestoreV2:5*
_output_shapes

:@@*
T0*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_1/kernel
ฐ
save_5/Assign_6Assignpi/dense_2/biassave_5/RestoreV2:6*
_output_shapes
:*
T0*
use_locking(*"
_class
loc:@pi/dense_2/bias*
validate_shape(
ธ
save_5/Assign_7Assignpi/dense_2/kernelsave_5/RestoreV2:7*
T0*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
ช
save_5/Assign_8Assignv/dense/biassave_5/RestoreV2:8*
validate_shape(*
use_locking(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
ฏ
save_5/Assign_9Assignv/dense/bias/Adamsave_5/RestoreV2:9*
use_locking(*
validate_shape(*
_class
loc:@v/dense/bias*
_output_shapes
:@*
T0
ณ
save_5/Assign_10Assignv/dense/bias/Adam_1save_5/RestoreV2:10*
_output_shapes
:@*
validate_shape(*
use_locking(*
T0*
_class
loc:@v/dense/bias
ด
save_5/Assign_11Assignv/dense/kernelsave_5/RestoreV2:11*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
validate_shape(*
T0*
use_locking(
น
save_5/Assign_12Assignv/dense/kernel/Adamsave_5/RestoreV2:12*
T0*
use_locking(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
validate_shape(
ป
save_5/Assign_13Assignv/dense/kernel/Adam_1save_5/RestoreV2:13*
use_locking(*!
_class
loc:@v/dense/kernel*
T0*
_output_shapes

:@*
validate_shape(
ฐ
save_5/Assign_14Assignv/dense_1/biassave_5/RestoreV2:14*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@
ต
save_5/Assign_15Assignv/dense_1/bias/Adamsave_5/RestoreV2:15*
_output_shapes
:@*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(
ท
save_5/Assign_16Assignv/dense_1/bias/Adam_1save_5/RestoreV2:16*!
_class
loc:@v/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes
:@*
T0
ธ
save_5/Assign_17Assignv/dense_1/kernelsave_5/RestoreV2:17*
validate_shape(*
_output_shapes

:@@*
use_locking(*#
_class
loc:@v/dense_1/kernel*
T0
ฝ
save_5/Assign_18Assignv/dense_1/kernel/Adamsave_5/RestoreV2:18*
use_locking(*
_output_shapes

:@@*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
T0
ฟ
save_5/Assign_19Assignv/dense_1/kernel/Adam_1save_5/RestoreV2:19*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
ฐ
save_5/Assign_20Assignv/dense_2/biassave_5/RestoreV2:20*
T0*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
use_locking(*
validate_shape(
ต
save_5/Assign_21Assignv/dense_2/bias/Adamsave_5/RestoreV2:21*!
_class
loc:@v/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:*
T0
ท
save_5/Assign_22Assignv/dense_2/bias/Adam_1save_5/RestoreV2:22*
validate_shape(*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:*
use_locking(
ธ
save_5/Assign_23Assignv/dense_2/kernelsave_5/RestoreV2:23*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
ฝ
save_5/Assign_24Assignv/dense_2/kernel/Adamsave_5/RestoreV2:24*
T0*
validate_shape(*
_output_shapes

:@*
use_locking(*#
_class
loc:@v/dense_2/kernel
ฟ
save_5/Assign_25Assignv/dense_2/kernel/Adam_1save_5/RestoreV2:25*
_output_shapes

:@*
validate_shape(*
T0*
use_locking(*#
_class
loc:@v/dense_2/kernel
?
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_21^save_5/Assign_22^save_5/Assign_23^save_5/Assign_24^save_5/Assign_25^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard "B
save_5/Const:0save_5/Identity:0save_5/restore_all (5 @F8"
train_op

Adam"๚
	variables์้
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
x
v/dense/kernel/Adam:0v/dense/kernel/Adam/Assignv/dense/kernel/Adam/read:02'v/dense/kernel/Adam/Initializer/zeros:0

v/dense/kernel/Adam_1:0v/dense/kernel/Adam_1/Assignv/dense/kernel/Adam_1/read:02)v/dense/kernel/Adam_1/Initializer/zeros:0
p
v/dense/bias/Adam:0v/dense/bias/Adam/Assignv/dense/bias/Adam/read:02%v/dense/bias/Adam/Initializer/zeros:0
x
v/dense/bias/Adam_1:0v/dense/bias/Adam_1/Assignv/dense/bias/Adam_1/read:02'v/dense/bias/Adam_1/Initializer/zeros:0

v/dense_1/kernel/Adam:0v/dense_1/kernel/Adam/Assignv/dense_1/kernel/Adam/read:02)v/dense_1/kernel/Adam/Initializer/zeros:0

v/dense_1/kernel/Adam_1:0v/dense_1/kernel/Adam_1/Assignv/dense_1/kernel/Adam_1/read:02+v/dense_1/kernel/Adam_1/Initializer/zeros:0
x
v/dense_1/bias/Adam:0v/dense_1/bias/Adam/Assignv/dense_1/bias/Adam/read:02'v/dense_1/bias/Adam/Initializer/zeros:0

v/dense_1/bias/Adam_1:0v/dense_1/bias/Adam_1/Assignv/dense_1/bias/Adam_1/read:02)v/dense_1/bias/Adam_1/Initializer/zeros:0

v/dense_2/kernel/Adam:0v/dense_2/kernel/Adam/Assignv/dense_2/kernel/Adam/read:02)v/dense_2/kernel/Adam/Initializer/zeros:0

v/dense_2/kernel/Adam_1:0v/dense_2/kernel/Adam_1/Assignv/dense_2/kernel/Adam_1/read:02+v/dense_2/kernel/Adam_1/Initializer/zeros:0
x
v/dense_2/bias/Adam:0v/dense_2/bias/Adam/Assignv/dense_2/bias/Adam/read:02'v/dense_2/bias/Adam/Initializer/zeros:0

v/dense_2/bias/Adam_1:0v/dense_2/bias/Adam_1/Assignv/dense_2/bias/Adam_1/read:02)v/dense_2/bias/Adam_1/Initializer/zeros:0"ู

trainable_variablesม
พ

s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08*ง
serving_default
)
x$
Placeholder:0?????????#
v
v/Squeeze:0?????????%
pi
pi/Squeeze:0	?????????tensorflow/serving/predict