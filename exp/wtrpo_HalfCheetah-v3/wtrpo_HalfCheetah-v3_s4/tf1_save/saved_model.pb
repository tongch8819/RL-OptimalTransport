??
?(?'
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
2	??
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
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
?
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
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
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
?
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
list(type)(?
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
:
SqrtGrad
y"T
dy"T
z"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
?
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
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.52v1.15.4-39-g3db52be??
n
PlaceholderPlaceholder*
shape:?????????*'
_output_shapes
:?????????*
dtype0
p
Placeholder_1Placeholder*
dtype0*
shape:?????????*'
_output_shapes
:?????????
h
Placeholder_2Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
h
Placeholder_3Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
h
Placeholder_4Placeholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
?
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@pi/dense/kernel*
valueB"   @   *
_output_shapes
:
?
.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: *
valueB
 *HY??
?
.pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *HY?>*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
dtype0
?
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
seed2*
T0*
dtype0*"
_class
loc:@pi/dense/kernel*

seed*
_output_shapes

:@
?
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
T0
?
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
?
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel
?
pi/dense/kernel
VariableV2*
shape
:@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
_output_shapes

:@*
dtype0
?
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
validate_shape(
~
pi/dense/kernel/readIdentitypi/dense/kernel*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes

:@
?
pi/dense/bias/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@* 
_class
loc:@pi/dense/bias*
dtype0
?
pi/dense/bias
VariableV2*
	container *
dtype0*
shape:@*
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias
?
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
T0* 
_class
loc:@pi/dense/bias*
use_locking(*
validate_shape(*
_output_shapes
:@
t
pi/dense/bias/readIdentitypi/dense/bias* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes
:@
?
pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*'
_output_shapes
:?????????@*
transpose_a( *
T0*
transpose_b( 
?
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*'
_output_shapes
:?????????@*
data_formatNHWC
Y
pi/dense/TanhTanhpi/dense/BiasAdd*'
_output_shapes
:?????????@*
T0
?
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"@   @   *
_output_shapes
:*
dtype0
?
0pi/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *׳]?*$
_class
loc:@pi/dense_1/kernel
?
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *׳]>*$
_class
loc:@pi/dense_1/kernel
?
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*$
_class
loc:@pi/dense_1/kernel*
dtype0*
T0*

seed*
seed2*
_output_shapes

:@@
?
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: *
T0
?
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
?
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel*
T0
?
pi/dense_1/kernel
VariableV2*
	container *
shared_name *
dtype0*
shape
:@@*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel
?
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*$
_class
loc:@pi/dense_1/kernel*
T0*
_output_shapes

:@@*
validate_shape(*
use_locking(
?
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
?
!pi/dense_1/bias/Initializer/zerosConst*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:@
?
pi/dense_1/bias
VariableV2*
shared_name *
_output_shapes
:@*
dtype0*"
_class
loc:@pi/dense_1/bias*
	container *
shape:@
?
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias*
use_locking(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes
:@
?
pi/dense_1/MatMulMatMulpi/dense/Tanhpi/dense_1/kernel/read*
transpose_a( *'
_output_shapes
:?????????@*
T0*
transpose_b( 
?
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*'
_output_shapes
:?????????@*
data_formatNHWC*
T0
]
pi/dense_1/TanhTanhpi/dense_1/BiasAdd*'
_output_shapes
:?????????@*
T0
?
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:*
valueB"@      *
dtype0
?
0pi/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *?啾*$
_class
loc:@pi/dense_2/kernel
?
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *???>*
_output_shapes
: *
dtype0*$
_class
loc:@pi/dense_2/kernel
?
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
T0*
dtype0*

seed*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
seed2*
?
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
T0*
_output_shapes
: 
?
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
T0
?
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
?
pi/dense_2/kernel
VariableV2*
shared_name *
	container *
shape
:@*
dtype0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
?
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
use_locking(*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
T0
?
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
?
!pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*
valueB*    *"
_class
loc:@pi/dense_2/bias
?
pi/dense_2/bias
VariableV2*"
_class
loc:@pi/dense_2/bias*
	container *
shared_name *
dtype0*
shape:*
_output_shapes
:
?
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
use_locking(*
_output_shapes
:*
T0*
validate_shape(*"
_class
loc:@pi/dense_2/bias
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
?
pi/dense_2/MatMulMatMulpi/dense_1/Tanhpi/dense_2/kernel/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:?????????
?
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:?????????*
T0
y
pi/log_std/initial_valueConst*-
value$B""   ?   ?   ?   ?   ?   ?*
_output_shapes
:*
dtype0
v

pi/log_std
VariableV2*
	container *
dtype0*
shared_name *
_output_shapes
:*
shape:
?
pi/log_std/AssignAssign
pi/log_stdpi/log_std/initial_value*
use_locking(*
T0*
_output_shapes
:*
_class
loc:@pi/log_std*
validate_shape(
k
pi/log_std/readIdentity
pi/log_std*
_output_shapes
:*
T0*
_class
loc:@pi/log_std
C
pi/ExpExppi/log_std/read*
_output_shapes
:*
T0
Z
pi/ShapeShapepi/dense_2/BiasAdd*
_output_shapes
:*
out_type0*
T0
Z
pi/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
\
pi/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*
T0*
dtype0*
seed2?*

seed*'
_output_shapes
:?????????
?
pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*'
_output_shapes
:?????????*
T0
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*'
_output_shapes
:?????????*
T0
Y
pi/mulMulpi/random_normalpi/Exp*
T0*'
_output_shapes
:?????????
]
pi/addAddV2pi/dense_2/BiasAddpi/mul*'
_output_shapes
:?????????*
T0
b
pi/subSubPlaceholder_1pi/dense_2/BiasAdd*
T0*'
_output_shapes
:?????????
E
pi/Exp_1Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_1/yConst*
valueB
 *w?+2*
_output_shapes
: *
dtype0
L
pi/add_1AddV2pi/Exp_1
pi/add_1/y*
_output_shapes
:*
T0
Y

pi/truedivRealDivpi/subpi/add_1*'
_output_shapes
:?????????*
T0
M
pi/pow/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
U
pi/powPow
pi/truedivpi/pow/y*
T0*'
_output_shapes
:?????????
O

pi/mul_1/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Q
pi/mul_1Mul
pi/mul_1/xpi/log_std/read*
T0*
_output_shapes
:
U
pi/add_2AddV2pi/powpi/mul_1*
T0*'
_output_shapes
:?????????
O

pi/add_3/yConst*
valueB
 *????*
_output_shapes
: *
dtype0
Y
pi/add_3AddV2pi/add_2
pi/add_3/y*
T0*'
_output_shapes
:?????????
O

pi/mul_2/xConst*
valueB
 *   ?*
_output_shapes
: *
dtype0
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*'
_output_shapes
:?????????*
T0
Z
pi/Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:?????????*

Tidx0
]
pi/sub_1Subpi/addpi/dense_2/BiasAdd*
T0*'
_output_shapes
:?????????
E
pi/Exp_2Exppi/log_std/read*
_output_shapes
:*
T0
O

pi/add_4/yConst*
valueB
 *w?+2*
dtype0*
_output_shapes
: 
L
pi/add_4AddV2pi/Exp_2
pi/add_4/y*
_output_shapes
:*
T0
]
pi/truediv_1RealDivpi/sub_1pi/add_4*'
_output_shapes
:?????????*
T0
O

pi/pow_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *   @
[
pi/pow_1Powpi/truediv_1
pi/pow_1/y*'
_output_shapes
:?????????*
T0
O

pi/mul_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
Q
pi/mul_3Mul
pi/mul_3/xpi/log_std/read*
T0*
_output_shapes
:
W
pi/add_5AddV2pi/pow_1pi/mul_3*
T0*'
_output_shapes
:?????????
O

pi/add_6/yConst*
_output_shapes
: *
valueB
 *????*
dtype0
Y
pi/add_6AddV2pi/add_5
pi/add_6/y*
T0*'
_output_shapes
:?????????
O

pi/mul_4/xConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*'
_output_shapes
:?????????*
T0
\
pi/Sum_1/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
?
pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*#
_output_shapes
:?????????*

Tidx0*
T0*
	keep_dims( 
q
pi/PlaceholderPlaceholder*'
_output_shapes
:?????????*
shape:?????????*
dtype0
s
pi/Placeholder_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
E
pi/Exp_3Exppi/log_std/read*
T0*
_output_shapes
:
S
pi/Exp_4Exppi/Placeholder_1*
T0*'
_output_shapes
:?????????
e
pi/sub_2Subpi/dense_2/BiasAddpi/Placeholder*
T0*'
_output_shapes
:?????????
O

pi/pow_2/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0
W
pi/pow_2Powpi/sub_2
pi/pow_2/y*
T0*'
_output_shapes
:?????????
W
pi/add_7AddV2pi/Exp_3pi/Exp_4*
T0*'
_output_shapes
:?????????
U
pi/mul_5Mulpi/Exp_3pi/Exp_4*
T0*'
_output_shapes
:?????????
K
pi/SqrtSqrtpi/mul_5*
T0*'
_output_shapes
:?????????
O

pi/mul_6/xConst*
valueB
 *   @*
_output_shapes
: *
dtype0
V
pi/mul_6Mul
pi/mul_6/xpi/Sqrt*'
_output_shapes
:?????????*
T0
W
pi/add_8AddV2pi/add_7pi/mul_6*
T0*'
_output_shapes
:?????????
W
pi/add_9AddV2pi/pow_2pi/add_8*
T0*'
_output_shapes
:?????????
Y
pi/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
a
pi/Sum_2Sumpi/add_9pi/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
?
/v/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0*!
_class
loc:@v/dense/kernel
?
-v/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *HY??*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
dtype0
?
-v/dense/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@v/dense/kernel*
valueB
 *HY?>*
dtype0*
_output_shapes
: 
?
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
dtype0*
T0*
seed2w*

seed
?
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
T0
?
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*!
_class
loc:@v/dense/kernel*
T0*
_output_shapes

:@
?
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel
?
v/dense/kernel
VariableV2*
dtype0*
	container *
shared_name *!
_class
loc:@v/dense/kernel*
shape
:@*
_output_shapes

:@
?
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*!
_class
loc:@v/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes

:@*
T0
{
v/dense/kernel/readIdentityv/dense/kernel*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
?
v/dense/bias/Initializer/zerosConst*
_class
loc:@v/dense/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
v/dense/bias
VariableV2*
	container *
_output_shapes
:@*
_class
loc:@v/dense/bias*
shape:@*
shared_name *
dtype0
?
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
T0*
validate_shape(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(
q
v/dense/bias/readIdentityv/dense/bias*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0
?
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b( 
?
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*'
_output_shapes
:?????????@*
T0*
data_formatNHWC
W
v/dense/TanhTanhv/dense/BiasAdd*'
_output_shapes
:?????????@*
T0
?
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
_output_shapes
:
?
/v/dense_1/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *׳]?*
dtype0*
_output_shapes
: 
?
/v/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *׳]>*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
?
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

:@@*
seed2?*
dtype0*

seed*
T0*#
_class
loc:@v/dense_1/kernel
?
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
?
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel
?
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
?
v/dense_1/kernel
VariableV2*#
_class
loc:@v/dense_1/kernel*
shape
:@@*
dtype0*
	container *
shared_name *
_output_shapes

:@@
?
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
v/dense_1/kernel/readIdentityv/dense_1/kernel*
T0*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
 v/dense_1/bias/Initializer/zerosConst*
valueB@*    *
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
dtype0
?
v/dense_1/bias
VariableV2*
_output_shapes
:@*
dtype0*
shape:@*
shared_name *
	container *!
_class
loc:@v/dense_1/bias
?
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
w
v/dense_1/bias/readIdentityv/dense_1/bias*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0
?
v/dense_1/MatMulMatMulv/dense/Tanhv/dense_1/kernel/read*
transpose_b( *'
_output_shapes
:?????????@*
T0*
transpose_a( 
?
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:?????????@*
T0
[
v/dense_1/TanhTanhv/dense_1/BiasAdd*
T0*'
_output_shapes
:?????????@
?
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_2/kernel
?
/v/dense_2/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
: *
valueB
 *????
?
/v/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *???>*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel
?
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
seed2?*

seed*
T0
?
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 
?
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes

:@
?
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
v/dense_2/kernel
VariableV2*#
_class
loc:@v/dense_2/kernel*
	container *
shared_name *
_output_shapes

:@*
dtype0*
shape
:@
?
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
T0*#
_class
loc:@v/dense_2/kernel*
use_locking(*
_output_shapes

:@
?
v/dense_2/kernel/readIdentityv/dense_2/kernel*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
 v/dense_2/bias/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:*
valueB*    
?
v/dense_2/bias
VariableV2*!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:*
shared_name *
	container *
shape:
?
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*
_output_shapes
:*
T0*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_2/bias
w
v/dense_2/bias/readIdentityv/dense_2/bias*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
?
v/dense_2/MatMulMatMulv/dense_1/Tanhv/dense_2/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*'
_output_shapes
:?????????*
data_formatNHWC*
T0
l
	v/SqueezeSqueezev/dense_2/BiasAdd*
T0*#
_output_shapes
:?????????*
squeeze_dims

O
subSubpi/SumPlaceholder_4*
T0*#
_output_shapes
:?????????
=
ExpExpsub*
T0*#
_output_shapes
:?????????
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
MeanMeanmulConst*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
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
Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Z
Mean_1MeanpowConst_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ??
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
m
#gradients/Mean_1_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?
gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
^
gradients/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:
?
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:?????????
`
gradients/Mean_1_grad/Shape_1Shapepow*
T0*
_output_shapes
:*
out_type0
`
gradients/Mean_1_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
e
gradients/Mean_1_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
?
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
g
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
a
gradients/Mean_1_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
?
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0
?
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
_output_shapes
: *
T0
?
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0*
Truncate( 
?
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0*#
_output_shapes
:?????????
]
gradients/pow_grad/ShapeShapesub_1*
_output_shapes
:*
out_type0*
T0
]
gradients/pow_grad/Shape_1Shapepow/y*
T0*
out_type0*
_output_shapes
: 
?
(gradients/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_grad/Shapegradients/pow_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
q
gradients/pow_grad/mulMulgradients/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:?????????
]
gradients/pow_grad/sub/yConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
_
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
_output_shapes
: *
T0
j
gradients/pow_grad/PowPowsub_1gradients/pow_grad/sub*#
_output_shapes
:?????????*
T0
}
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*#
_output_shapes
:?????????*
T0
?
gradients/pow_grad/SumSumgradients/pow_grad/mul_1(gradients/pow_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
?
gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sumgradients/pow_grad/Shape*
Tshape0*
T0*#
_output_shapes
:?????????
a
gradients/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
x
gradients/pow_grad/GreaterGreatersub_1gradients/pow_grad/Greater/y*
T0*#
_output_shapes
:?????????
g
"gradients/pow_grad/ones_like/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
g
"gradients/pow_grad/ones_like/ConstConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
gradients/pow_grad/ones_likeFill"gradients/pow_grad/ones_like/Shape"gradients/pow_grad/ones_like/Const*#
_output_shapes
:?????????*
T0*

index_type0
?
gradients/pow_grad/SelectSelectgradients/pow_grad/Greatersub_1gradients/pow_grad/ones_like*#
_output_shapes
:?????????*
T0
f
gradients/pow_grad/LogLoggradients/pow_grad/Select*#
_output_shapes
:?????????*
T0
_
gradients/pow_grad/zeros_like	ZerosLikesub_1*
T0*#
_output_shapes
:?????????
?
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*#
_output_shapes
:?????????*
T0
q
gradients/pow_grad/mul_2Mulgradients/Mean_1_grad/truedivpow*#
_output_shapes
:?????????*
T0
?
gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select_1*#
_output_shapes
:?????????*
T0
?
gradients/pow_grad/Sum_1Sumgradients/pow_grad/mul_3*gradients/pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
gradients/pow_grad/Reshape_1Reshapegradients/pow_grad/Sum_1gradients/pow_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
g
#gradients/pow_grad/tuple/group_depsNoOp^gradients/pow_grad/Reshape^gradients/pow_grad/Reshape_1
?
+gradients/pow_grad/tuple/control_dependencyIdentitygradients/pow_grad/Reshape$^gradients/pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_grad/Reshape*#
_output_shapes
:?????????
?
-gradients/pow_grad/tuple/control_dependency_1Identitygradients/pow_grad/Reshape_1$^gradients/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients/pow_grad/Reshape_1*
_output_shapes
: *
T0
g
gradients/sub_1_grad/ShapeShapePlaceholder_3*
_output_shapes
:*
T0*
out_type0
e
gradients/sub_1_grad/Shape_1Shape	v/Squeeze*
out_type0*
_output_shapes
:*
T0
?
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients/sub_1_grad/SumSum+gradients/pow_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
?
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*#
_output_shapes
:?????????*
Tshape0
z
gradients/sub_1_grad/NegNeg+gradients/pow_grad/tuple/control_dependency*
T0*#
_output_shapes
:?????????
?
gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
?
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
T0*#
_output_shapes
:?????????*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
?
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*#
_output_shapes
:?????????*
T0
?
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*#
_output_shapes
:?????????*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
o
gradients/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
 gradients/v/Squeeze_grad/ReshapeReshape/gradients/sub_1_grad/tuple/control_dependency_1gradients/v/Squeeze_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0
?
,gradients/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
?
1gradients/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp!^gradients/v/Squeeze_grad/Reshape-^gradients/v/dense_2/BiasAdd_grad/BiasAddGrad
?
9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity gradients/v/Squeeze_grad/Reshape2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:?????????*3
_class)
'%loc:@gradients/v/Squeeze_grad/Reshape*
T0
?
;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_2/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients/v/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
?
&gradients/v/dense_2/MatMul_grad/MatMulMatMul9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*
transpose_b(*'
_output_shapes
:?????????@*
T0*
transpose_a( 
?
(gradients/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Tanh9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:@*
transpose_a(*
T0*
transpose_b( 
?
0gradients/v/dense_2/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_2/MatMul_grad/MatMul)^gradients/v/dense_2/MatMul_grad/MatMul_1
?
8gradients/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_2/MatMul_grad/MatMul1^gradients/v/dense_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:?????????@*9
_class/
-+loc:@gradients/v/dense_2/MatMul_grad/MatMul*
T0
?
:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_2/MatMul_grad/MatMul_11^gradients/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*;
_class1
/-loc:@gradients/v/dense_2/MatMul_grad/MatMul_1
?
&gradients/v/dense_1/Tanh_grad/TanhGradTanhGradv/dense_1/Tanh8gradients/v/dense_2/MatMul_grad/tuple/control_dependency*
T0*'
_output_shapes
:?????????@
?
,gradients/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/v/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:@*
T0
?
1gradients/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/v/dense_1/BiasAdd_grad/BiasAddGrad'^gradients/v/dense_1/Tanh_grad/TanhGrad
?
9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/Tanh_grad/TanhGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:?????????@*9
_class/
-+loc:@gradients/v/dense_1/Tanh_grad/TanhGrad
?
;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_1/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*?
_class5
31loc:@gradients/v/dense_1/BiasAdd_grad/BiasAddGrad*
T0
?
&gradients/v/dense_1/MatMul_grad/MatMulMatMul9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
transpose_b(*'
_output_shapes
:?????????@*
T0*
transpose_a( 
?
(gradients/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Tanh9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:@@*
transpose_a(
?
0gradients/v/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_1/MatMul_grad/MatMul)^gradients/v/dense_1/MatMul_grad/MatMul_1
?
8gradients/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/MatMul_grad/MatMul1^gradients/v/dense_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/v/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@
?
:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_1/MatMul_grad/MatMul_11^gradients/v/dense_1/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:@@*;
_class1
/-loc:@gradients/v/dense_1/MatMul_grad/MatMul_1
?
$gradients/v/dense/Tanh_grad/TanhGradTanhGradv/dense/Tanh8gradients/v/dense_1/MatMul_grad/tuple/control_dependency*
T0*'
_output_shapes
:?????????@
?
*gradients/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/v/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:@*
T0
?
/gradients/v/dense/BiasAdd_grad/tuple/group_depsNoOp+^gradients/v/dense/BiasAdd_grad/BiasAddGrad%^gradients/v/dense/Tanh_grad/TanhGrad
?
7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/v/dense/Tanh_grad/TanhGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*7
_class-
+)loc:@gradients/v/dense/Tanh_grad/TanhGrad*'
_output_shapes
:?????????@*
T0
?
9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/v/dense/BiasAdd_grad/BiasAddGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
?
$gradients/v/dense/MatMul_grad/MatMulMatMul7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*'
_output_shapes
:?????????*
transpose_b(*
T0*
transpose_a( 
?
&gradients/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder7gradients/v/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:@*
transpose_b( *
T0*
transpose_a(
?
.gradients/v/dense/MatMul_grad/tuple/group_depsNoOp%^gradients/v/dense/MatMul_grad/MatMul'^gradients/v/dense/MatMul_grad/MatMul_1
?
6gradients/v/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients/v/dense/MatMul_grad/MatMul/^gradients/v/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/v/dense/MatMul_grad/MatMul*'
_output_shapes
:?????????*
T0
?
8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients/v/dense/MatMul_grad/MatMul_1/^gradients/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/v/dense/MatMul_grad/MatMul_1*
_output_shapes

:@
`
Reshape/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?
ReshapeReshape8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
_output_shapes	
:?*
Tshape0
b
Reshape_1/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?
	Reshape_1Reshape9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_2/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?
	Reshape_2Reshape:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:? 
b
Reshape_3/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?
	Reshape_3Reshape;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_4/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?
	Reshape_4Reshape:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_5/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?
	Reshape_5Reshape;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
_output_shapes
:*
Tshape0*
T0
M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5concat/axis*

Tidx0*
N*
T0*
_output_shapes	
:?*
g
PyFuncPyFuncconcat*
Tout
2*
Tin
2*
_output_shapes	
:?**
token
pyfunc_0
h
Const_2Const*
dtype0*
_output_shapes
:*-
value$B""@  @      @   @      
Q
split/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
splitSplitVPyFuncConst_2split/split_dim*:
_output_shapes(
&:?:@:? :@:@:*
T0*

Tlen0*
	num_split
`
Reshape_6/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
c
	Reshape_6ReshapesplitReshape_6/shape*
_output_shapes

:@*
Tshape0*
T0
Y
Reshape_7/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
a
	Reshape_7Reshapesplit:1Reshape_7/shape*
_output_shapes
:@*
T0*
Tshape0
`
Reshape_8/shapeConst*
dtype0*
valueB"@   @   *
_output_shapes
:
e
	Reshape_8Reshapesplit:2Reshape_8/shape*
T0*
Tshape0*
_output_shapes

:@@
Y
Reshape_9/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
a
	Reshape_9Reshapesplit:3Reshape_9/shape*
Tshape0*
T0*
_output_shapes
:@
a
Reshape_10/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
g

Reshape_10Reshapesplit:4Reshape_10/shape*
Tshape0*
T0*
_output_shapes

:@
Z
Reshape_11/shapeConst*
_output_shapes
:*
valueB:*
dtype0
c

Reshape_11Reshapesplit:5Reshape_11/shape*
_output_shapes
:*
T0*
Tshape0

beta1_power/initial_valueConst*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB
 *fff?*
dtype0
?
beta1_power
VariableV2*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: *
_class
loc:@v/dense/bias
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_class
loc:@v/dense/bias*
T0*
_output_shapes
: *
use_locking(
k
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias

beta2_power/initial_valueConst*
dtype0*
valueB
 *w??*
_output_shapes
: *
_class
loc:@v/dense/bias
?
beta2_power
VariableV2*
_class
loc:@v/dense/bias*
dtype0*
	container *
_output_shapes
: *
shared_name *
shape: 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_class
loc:@v/dense/bias*
T0*
validate_shape(*
_output_shapes
: *
use_locking(
k
beta2_power/readIdentitybeta2_power*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
?
5v/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:*
valueB"   @   
?
+v/dense/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
%v/dense/kernel/Adam/Initializer/zerosFill5v/dense/kernel/Adam/Initializer/zeros/shape_as_tensor+v/dense/kernel/Adam/Initializer/zeros/Const*

index_type0*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel
?
v/dense/kernel/Adam
VariableV2*
	container *
_output_shapes

:@*
dtype0*
shape
:@*
shared_name *!
_class
loc:@v/dense/kernel
?
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
?
v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
?
7v/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   @   *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:
?
-v/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0*!
_class
loc:@v/dense/kernel
?
'v/dense/kernel/Adam_1/Initializer/zerosFill7v/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor-v/dense/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*

index_type0*
T0
?
v/dense/kernel/Adam_1
VariableV2*
shape
:@*!
_class
loc:@v/dense/kernel*
	container *
_output_shapes

:@*
shared_name *
dtype0
?
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0*
validate_shape(*
use_locking(
?
v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
?
#v/dense/bias/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
_output_shapes
:@*
dtype0
?
v/dense/bias/Adam
VariableV2*
dtype0*
shape:@*
_output_shapes
:@*
	container *
_class
loc:@v/dense/bias*
shared_name 
?
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
_class
loc:@v/dense/bias*
T0*
_output_shapes
:@
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
?
%v/dense/bias/Adam_1/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
v/dense/bias/Adam_1
VariableV2*
shape:@*
_output_shapes
:@*
	container *
_class
loc:@v/dense/bias*
dtype0*
shared_name 
?
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@v/dense/bias*
use_locking(*
_output_shapes
:@*
validate_shape(

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
T0*
_output_shapes
:@*
_class
loc:@v/dense/bias
?
7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0
?
-v/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *    
?
'v/dense_1/kernel/Adam/Initializer/zerosFill7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_1/kernel/Adam/Initializer/zeros/Const*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0*

index_type0
?
v/dense_1/kernel/Adam
VariableV2*#
_class
loc:@v/dense_1/kernel*
dtype0*
shape
:@@*
	container *
_output_shapes

:@@*
shared_name 
?
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_1/kernel*
use_locking(*
_output_shapes

:@@*
T0*
validate_shape(
?
v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*
T0*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel
?
/v/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *    
?
)v/dense_1/kernel/Adam_1/Initializer/zerosFill9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_1/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel*

index_type0
?
v/dense_1/kernel/Adam_1
VariableV2*
shape
:@@*
	container *#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
dtype0*
shared_name 
?
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
use_locking(*
T0
?
v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
?
%v/dense_1/bias/Adam/Initializer/zerosConst*
dtype0*
valueB@*    *
_output_shapes
:@*!
_class
loc:@v/dense_1/bias
?
v/dense_1/bias/Adam
VariableV2*
	container *
dtype0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
shape:@*
shared_name 
?
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(*!
_class
loc:@v/dense_1/bias
?
v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
?
'v/dense_1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:@*
valueB@*    
?
v/dense_1/bias/Adam_1
VariableV2*
shared_name *
	container *
dtype0*
_output_shapes
:@*
shape:@*!
_class
loc:@v/dense_1/bias
?
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
validate_shape(*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
?
v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0
?
'v/dense_2/kernel/Adam/Initializer/zerosConst*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
dtype0*
valueB@*    
?
v/dense_2/kernel/Adam
VariableV2*#
_class
loc:@v/dense_2/kernel*
dtype0*
shared_name *
_output_shapes

:@*
shape
:@*
	container 
?
v/dense_2/kernel/Adam/AssignAssignv/dense_2/kernel/Adam'v/dense_2/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes

:@*
T0
?
v/dense_2/kernel/Adam/readIdentityv/dense_2/kernel/Adam*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
)v/dense_2/kernel/Adam_1/Initializer/zerosConst*#
_class
loc:@v/dense_2/kernel*
dtype0*
valueB@*    *
_output_shapes

:@
?
v/dense_2/kernel/Adam_1
VariableV2*
_output_shapes

:@*
shape
:@*#
_class
loc:@v/dense_2/kernel*
	container *
dtype0*
shared_name 
?
v/dense_2/kernel/Adam_1/AssignAssignv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
T0*#
_class
loc:@v/dense_2/kernel*
use_locking(*
_output_shapes

:@
?
v/dense_2/kernel/Adam_1/readIdentityv/dense_2/kernel/Adam_1*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
?
%v/dense_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
dtype0*
valueB*    *!
_class
loc:@v/dense_2/bias
?
v/dense_2/bias/Adam
VariableV2*!
_class
loc:@v/dense_2/bias*
	container *
shared_name *
shape:*
dtype0*
_output_shapes
:
?
v/dense_2/bias/Adam/AssignAssignv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
use_locking(*
_output_shapes
:*
T0*
validate_shape(
?
v/dense_2/bias/Adam/readIdentityv/dense_2/bias/Adam*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
T0
?
'v/dense_2/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:*
valueB*    
?
v/dense_2/bias/Adam_1
VariableV2*!
_class
loc:@v/dense_2/bias*
shape:*
shared_name *
_output_shapes
:*
dtype0*
	container 
?
v/dense_2/bias/Adam_1/AssignAssignv/dense_2/bias/Adam_1'v/dense_2/bias/Adam_1/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
?
v/dense_2/bias/Adam_1/readIdentityv/dense_2/bias/Adam_1*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
T0
W
Adam/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *o?:
O

Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
O

Adam/beta2Const*
dtype0*
valueB
 *w??*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w?+2*
dtype0*
_output_shapes
: 
?
$Adam/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*
use_nesterov( *
_output_shapes

:@*
T0*
use_locking( *!
_class
loc:@v/dense/kernel
?
"Adam/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7*
use_locking( *
_class
loc:@v/dense/bias*
use_nesterov( *
T0*
_output_shapes
:@
?
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
?
$Adam/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_9*
use_locking( *
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
T0*
use_nesterov( 
?
&Adam/update_v/dense_2/kernel/ApplyAdam	ApplyAdamv/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_10*
use_nesterov( *
use_locking( *
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
?
$Adam/update_v/dense_2/bias/ApplyAdam	ApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_11*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
T0*
use_nesterov( *
use_locking( 
?
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
?
Adam/AssignAssignbeta1_powerAdam/mul*
_class
loc:@v/dense/bias*
use_locking( *
_output_shapes
: *
T0*
validate_shape(
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
?
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_class
loc:@v/dense/bias*
T0*
_output_shapes
: *
use_locking( *
validate_shape(
?
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam
j
Reshape_12/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
?????????
p

Reshape_12Reshapev/dense/kernel/readReshape_12/shape*
Tshape0*
_output_shapes	
:?*
T0
j
Reshape_13/shapeConst^Adam*
valueB:
?????????*
dtype0*
_output_shapes
:
m

Reshape_13Reshapev/dense/bias/readReshape_13/shape*
_output_shapes
:@*
Tshape0*
T0
j
Reshape_14/shapeConst^Adam*
valueB:
?????????*
dtype0*
_output_shapes
:
r

Reshape_14Reshapev/dense_1/kernel/readReshape_14/shape*
Tshape0*
T0*
_output_shapes	
:? 
j
Reshape_15/shapeConst^Adam*
dtype0*
valueB:
?????????*
_output_shapes
:
o

Reshape_15Reshapev/dense_1/bias/readReshape_15/shape*
Tshape0*
T0*
_output_shapes
:@
j
Reshape_16/shapeConst^Adam*
dtype0*
valueB:
?????????*
_output_shapes
:
q

Reshape_16Reshapev/dense_2/kernel/readReshape_16/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_17/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
?????????
o

Reshape_17Reshapev/dense_2/bias/readReshape_17/shape*
T0*
_output_shapes
:*
Tshape0
V
concat_1/axisConst^Adam*
_output_shapes
: *
value	B : *
dtype0
?
concat_1ConcatV2
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17concat_1/axis*
N*

Tidx0*
_output_shapes	
:?**
T0
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
value$B""@  @      @   @      *
_output_shapes
:
Z
split_1/split_dimConst^Adam*
value	B : *
_output_shapes
: *
dtype0
?
split_1SplitVPyFunc_1Const_3split_1/split_dim*
T0*

Tlen0*,
_output_shapes
::::::*
	num_split
h
Reshape_18/shapeConst^Adam*
dtype0*
valueB"   @   *
_output_shapes
:
g

Reshape_18Reshapesplit_1Reshape_18/shape*
Tshape0*
T0*
_output_shapes

:@
a
Reshape_19/shapeConst^Adam*
valueB:@*
_output_shapes
:*
dtype0
e

Reshape_19Reshape	split_1:1Reshape_19/shape*
_output_shapes
:@*
Tshape0*
T0
h
Reshape_20/shapeConst^Adam*
dtype0*
valueB"@   @   *
_output_shapes
:
i

Reshape_20Reshape	split_1:2Reshape_20/shape*
_output_shapes

:@@*
Tshape0*
T0
a
Reshape_21/shapeConst^Adam*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_21Reshape	split_1:3Reshape_21/shape*
_output_shapes
:@*
T0*
Tshape0
h
Reshape_22/shapeConst^Adam*
dtype0*
valueB"@      *
_output_shapes
:
i

Reshape_22Reshape	split_1:4Reshape_22/shape*
T0*
_output_shapes

:@*
Tshape0
a
Reshape_23/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_23Reshape	split_1:5Reshape_23/shape*
_output_shapes
:*
Tshape0*
T0
?
AssignAssignv/dense/kernel
Reshape_18*
T0*
validate_shape(*!
_class
loc:@v/dense/kernel*
use_locking(*
_output_shapes

:@
?
Assign_1Assignv/dense/bias
Reshape_19*
_output_shapes
:@*
validate_shape(*
_class
loc:@v/dense/bias*
T0*
use_locking(
?
Assign_2Assignv/dense_1/kernel
Reshape_20*
validate_shape(*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0
?
Assign_3Assignv/dense_1/bias
Reshape_21*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
use_locking(
?
Assign_4Assignv/dense_2/kernel
Reshape_22*
use_locking(*
_output_shapes

:@*
validate_shape(*
T0*#
_class
loc:@v/dense_2/kernel
?
Assign_5Assignv/dense_2/bias
Reshape_23*
T0*!
_class
loc:@v/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:
Y

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_1/grad_ys_0Const*
dtype0*
valueB
 *  ??*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
R
gradients_1/Neg_grad/NegNeggradients_1/Fill*
T0*
_output_shapes
: 
m
#gradients_1/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
gradients_1/Mean_grad/ReshapeReshapegradients_1/Neg_grad/Neg#gradients_1/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
^
gradients_1/Mean_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
?
gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Shape*#
_output_shapes
:?????????*

Tmultiples0*
T0
`
gradients_1/Mean_grad/Shape_1Shapemul*
_output_shapes
:*
out_type0*
T0
`
gradients_1/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
e
gradients_1/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
?
gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
g
gradients_1/Mean_grad/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
?
gradients_1/Mean_grad/Prod_1Prodgradients_1/Mean_grad/Shape_2gradients_1/Mean_grad/Const_1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
a
gradients_1/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
?
gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
_output_shapes
: *
T0
?
gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0
?
gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
]
gradients_1/mul_grad/ShapeShapeExp*
_output_shapes
:*
T0*
out_type0
i
gradients_1/mul_grad/Shape_1ShapePlaceholder_2*
T0*
_output_shapes
:*
out_type0
?
*gradients_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_grad/Shapegradients_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
{
gradients_1/mul_grad/MulMulgradients_1/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:?????????
?
gradients_1/mul_grad/SumSumgradients_1/mul_grad/Mul*gradients_1/mul_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
?
gradients_1/mul_grad/ReshapeReshapegradients_1/mul_grad/Sumgradients_1/mul_grad/Shape*#
_output_shapes
:?????????*
Tshape0*
T0
s
gradients_1/mul_grad/Mul_1MulExpgradients_1/Mean_grad/truediv*
T0*#
_output_shapes
:?????????
?
gradients_1/mul_grad/Sum_1Sumgradients_1/mul_grad/Mul_1,gradients_1/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
gradients_1/mul_grad/Reshape_1Reshapegradients_1/mul_grad/Sum_1gradients_1/mul_grad/Shape_1*
Tshape0*#
_output_shapes
:?????????*
T0
p
gradients_1/Exp_grad/mulMulgradients_1/mul_grad/ReshapeExp*
T0*#
_output_shapes
:?????????
`
gradients_1/sub_grad/ShapeShapepi/Sum*
T0*
_output_shapes
:*
out_type0
i
gradients_1/sub_grad/Shape_1ShapePlaceholder_4*
T0*
out_type0*
_output_shapes
:
?
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients_1/sub_grad/SumSumgradients_1/Exp_grad/mul*gradients_1/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
Tshape0*
T0*#
_output_shapes
:?????????
g
gradients_1/sub_grad/NegNeggradients_1/Exp_grad/mul*
T0*#
_output_shapes
:?????????
?
gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*
Tshape0*#
_output_shapes
:?????????*
T0
e
gradients_1/pi/Sum_grad/ShapeShapepi/mul_2*
out_type0*
_output_shapes
:*
T0
?
gradients_1/pi/Sum_grad/SizeConst*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :*
dtype0
?
gradients_1/pi/Sum_grad/addAddV2pi/Sum/reduction_indicesgradients_1/pi/Sum_grad/Size*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
?
gradients_1/pi/Sum_grad/modFloorModgradients_1/pi/Sum_grad/addgradients_1/pi/Sum_grad/Size*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
?
gradients_1/pi/Sum_grad/Shape_1Const*
valueB *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
?
#gradients_1/pi/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
value	B : 
?
#gradients_1/pi/Sum_grad/range/deltaConst*
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :
?
gradients_1/pi/Sum_grad/rangeRange#gradients_1/pi/Sum_grad/range/startgradients_1/pi/Sum_grad/Size#gradients_1/pi/Sum_grad/range/delta*
_output_shapes
:*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*

Tidx0
?
"gradients_1/pi/Sum_grad/Fill/valueConst*
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :
?
gradients_1/pi/Sum_grad/FillFillgradients_1/pi/Sum_grad/Shape_1"gradients_1/pi/Sum_grad/Fill/value*
T0*

index_type0*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
?
%gradients_1/pi/Sum_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_grad/rangegradients_1/pi/Sum_grad/modgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Fill*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0*
N*
_output_shapes
:
?
!gradients_1/pi/Sum_grad/Maximum/yConst*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
value	B :*
dtype0
?
gradients_1/pi/Sum_grad/MaximumMaximum%gradients_1/pi/Sum_grad/DynamicStitch!gradients_1/pi/Sum_grad/Maximum/y*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:*
T0
?
 gradients_1/pi/Sum_grad/floordivFloorDivgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Maximum*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0*
_output_shapes
:
?
gradients_1/pi/Sum_grad/ReshapeReshapegradients_1/sub_grad/Reshape%gradients_1/pi/Sum_grad/DynamicStitch*
Tshape0*
T0*0
_output_shapes
:??????????????????
?
gradients_1/pi/Sum_grad/TileTilegradients_1/pi/Sum_grad/Reshape gradients_1/pi/Sum_grad/floordiv*'
_output_shapes
:?????????*
T0*

Tmultiples0
g
gradients_1/pi/mul_2_grad/ShapeShape
pi/mul_2/x*
_output_shapes
: *
out_type0*
T0
i
!gradients_1/pi/mul_2_grad/Shape_1Shapepi/add_3*
out_type0*
_output_shapes
:*
T0
?
/gradients_1/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_2_grad/Shape!gradients_1/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
~
gradients_1/pi/mul_2_grad/MulMulgradients_1/pi/Sum_grad/Tilepi/add_3*'
_output_shapes
:?????????*
T0
?
gradients_1/pi/mul_2_grad/SumSumgradients_1/pi/mul_2_grad/Mul/gradients_1/pi/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
?
!gradients_1/pi/mul_2_grad/ReshapeReshapegradients_1/pi/mul_2_grad/Sumgradients_1/pi/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
?
gradients_1/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients_1/pi/Sum_grad/Tile*'
_output_shapes
:?????????*
T0
?
gradients_1/pi/mul_2_grad/Sum_1Sumgradients_1/pi/mul_2_grad/Mul_11gradients_1/pi/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
#gradients_1/pi/mul_2_grad/Reshape_1Reshapegradients_1/pi/mul_2_grad/Sum_1!gradients_1/pi/mul_2_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
g
gradients_1/pi/add_3_grad/ShapeShapepi/add_2*
out_type0*
T0*
_output_shapes
:
i
!gradients_1/pi/add_3_grad/Shape_1Shape
pi/add_3/y*
out_type0*
T0*
_output_shapes
: 
?
/gradients_1/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_3_grad/Shape!gradients_1/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_1/pi/add_3_grad/SumSum#gradients_1/pi/mul_2_grad/Reshape_1/gradients_1/pi/add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
!gradients_1/pi/add_3_grad/ReshapeReshapegradients_1/pi/add_3_grad/Sumgradients_1/pi/add_3_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/add_3_grad/Sum_1Sum#gradients_1/pi/mul_2_grad/Reshape_11gradients_1/pi/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
?
#gradients_1/pi/add_3_grad/Reshape_1Reshapegradients_1/pi/add_3_grad/Sum_1!gradients_1/pi/add_3_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
e
gradients_1/pi/add_2_grad/ShapeShapepi/pow*
_output_shapes
:*
T0*
out_type0
i
!gradients_1/pi/add_2_grad/Shape_1Shapepi/mul_1*
out_type0*
T0*
_output_shapes
:
?
/gradients_1/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_2_grad/Shape!gradients_1/pi/add_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients_1/pi/add_2_grad/SumSum!gradients_1/pi/add_3_grad/Reshape/gradients_1/pi/add_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
?
!gradients_1/pi/add_2_grad/ReshapeReshapegradients_1/pi/add_2_grad/Sumgradients_1/pi/add_2_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
?
gradients_1/pi/add_2_grad/Sum_1Sum!gradients_1/pi/add_3_grad/Reshape1gradients_1/pi/add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
#gradients_1/pi/add_2_grad/Reshape_1Reshapegradients_1/pi/add_2_grad/Sum_1!gradients_1/pi/add_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:
g
gradients_1/pi/pow_grad/ShapeShape
pi/truediv*
_output_shapes
:*
T0*
out_type0
e
gradients_1/pi/pow_grad/Shape_1Shapepi/pow/y*
T0*
out_type0*
_output_shapes
: 
?
-gradients_1/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/pow_grad/Shapegradients_1/pi/pow_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_1/pi/pow_grad/mulMul!gradients_1/pi/add_2_grad/Reshapepi/pow/y*'
_output_shapes
:?????????*
T0
b
gradients_1/pi/pow_grad/sub/yConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
l
gradients_1/pi/pow_grad/subSubpi/pow/ygradients_1/pi/pow_grad/sub/y*
T0*
_output_shapes
: 
}
gradients_1/pi/pow_grad/PowPow
pi/truedivgradients_1/pi/pow_grad/sub*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/pow_grad/mul_1Mulgradients_1/pi/pow_grad/mulgradients_1/pi/pow_grad/Pow*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/pow_grad/SumSumgradients_1/pi/pow_grad/mul_1-gradients_1/pi/pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
?
gradients_1/pi/pow_grad/ReshapeReshapegradients_1/pi/pow_grad/Sumgradients_1/pi/pow_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
f
!gradients_1/pi/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
gradients_1/pi/pow_grad/GreaterGreater
pi/truediv!gradients_1/pi/pow_grad/Greater/y*'
_output_shapes
:?????????*
T0
q
'gradients_1/pi/pow_grad/ones_like/ShapeShape
pi/truediv*
T0*
out_type0*
_output_shapes
:
l
'gradients_1/pi/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
!gradients_1/pi/pow_grad/ones_likeFill'gradients_1/pi/pow_grad/ones_like/Shape'gradients_1/pi/pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:?????????
?
gradients_1/pi/pow_grad/SelectSelectgradients_1/pi/pow_grad/Greater
pi/truediv!gradients_1/pi/pow_grad/ones_like*'
_output_shapes
:?????????*
T0
t
gradients_1/pi/pow_grad/LogLoggradients_1/pi/pow_grad/Select*'
_output_shapes
:?????????*
T0
m
"gradients_1/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*
T0*'
_output_shapes
:?????????
?
 gradients_1/pi/pow_grad/Select_1Selectgradients_1/pi/pow_grad/Greatergradients_1/pi/pow_grad/Log"gradients_1/pi/pow_grad/zeros_like*'
_output_shapes
:?????????*
T0
?
gradients_1/pi/pow_grad/mul_2Mul!gradients_1/pi/add_2_grad/Reshapepi/pow*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/pow_grad/mul_3Mulgradients_1/pi/pow_grad/mul_2 gradients_1/pi/pow_grad/Select_1*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/pow_grad/Sum_1Sumgradients_1/pi/pow_grad/mul_3/gradients_1/pi/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
!gradients_1/pi/pow_grad/Reshape_1Reshapegradients_1/pi/pow_grad/Sum_1gradients_1/pi/pow_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
u
2gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s0Const*
valueB *
dtype0*
_output_shapes
: 
|
2gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s1Const*
valueB:*
_output_shapes
:*
dtype0
?
/gradients_1/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s02gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s1*
T0*2
_output_shapes 
:?????????:?????????

gradients_1/pi/mul_1_grad/MulMul#gradients_1/pi/add_2_grad/Reshape_1pi/log_std/read*
T0*
_output_shapes
:
y
/gradients_1/pi/mul_1_grad/Sum/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
?
gradients_1/pi/mul_1_grad/SumSumgradients_1/pi/mul_1_grad/Mul/gradients_1/pi/mul_1_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
j
'gradients_1/pi/mul_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
?
!gradients_1/pi/mul_1_grad/ReshapeReshapegradients_1/pi/mul_1_grad/Sum'gradients_1/pi/mul_1_grad/Reshape/shape*
_output_shapes
: *
Tshape0*
T0
|
gradients_1/pi/mul_1_grad/Mul_1Mul
pi/mul_1/x#gradients_1/pi/add_2_grad/Reshape_1*
T0*
_output_shapes
:
g
!gradients_1/pi/truediv_grad/ShapeShapepi/sub*
T0*
out_type0*
_output_shapes
:
m
#gradients_1/pi/truediv_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
?
1gradients_1/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/pi/truediv_grad/Shape#gradients_1/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
#gradients_1/pi/truediv_grad/RealDivRealDivgradients_1/pi/pow_grad/Reshapepi/add_1*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/truediv_grad/SumSum#gradients_1/pi/truediv_grad/RealDiv1gradients_1/pi/truediv_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
?
#gradients_1/pi/truediv_grad/ReshapeReshapegradients_1/pi/truediv_grad/Sum!gradients_1/pi/truediv_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
`
gradients_1/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:?????????*
T0
?
%gradients_1/pi/truediv_grad/RealDiv_1RealDivgradients_1/pi/truediv_grad/Negpi/add_1*
T0*'
_output_shapes
:?????????
?
%gradients_1/pi/truediv_grad/RealDiv_2RealDiv%gradients_1/pi/truediv_grad/RealDiv_1pi/add_1*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/truediv_grad/mulMulgradients_1/pi/pow_grad/Reshape%gradients_1/pi/truediv_grad/RealDiv_2*'
_output_shapes
:?????????*
T0
?
!gradients_1/pi/truediv_grad/Sum_1Sumgradients_1/pi/truediv_grad/mul3gradients_1/pi/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
?
%gradients_1/pi/truediv_grad/Reshape_1Reshape!gradients_1/pi/truediv_grad/Sum_1#gradients_1/pi/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
j
gradients_1/pi/sub_grad/ShapeShapePlaceholder_1*
T0*
_output_shapes
:*
out_type0
q
gradients_1/pi/sub_grad/Shape_1Shapepi/dense_2/BiasAdd*
_output_shapes
:*
out_type0*
T0
?
-gradients_1/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_grad/Shapegradients_1/pi/sub_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients_1/pi/sub_grad/SumSum#gradients_1/pi/truediv_grad/Reshape-gradients_1/pi/sub_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
?
gradients_1/pi/sub_grad/ReshapeReshapegradients_1/pi/sub_grad/Sumgradients_1/pi/sub_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0
y
gradients_1/pi/sub_grad/NegNeg#gradients_1/pi/truediv_grad/Reshape*
T0*'
_output_shapes
:?????????
?
gradients_1/pi/sub_grad/Sum_1Sumgradients_1/pi/sub_grad/Neg/gradients_1/pi/sub_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
?
!gradients_1/pi/sub_grad/Reshape_1Reshapegradients_1/pi/sub_grad/Sum_1gradients_1/pi/sub_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
|
2gradients_1/pi/add_1_grad/BroadcastGradientArgs/s0Const*
valueB:*
dtype0*
_output_shapes
:
u
2gradients_1/pi/add_1_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 
?
/gradients_1/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients_1/pi/add_1_grad/BroadcastGradientArgs/s02gradients_1/pi/add_1_grad/BroadcastGradientArgs/s1*
T0*2
_output_shapes 
:?????????:?????????
y
/gradients_1/pi/add_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
valueB: *
dtype0
?
gradients_1/pi/add_1_grad/SumSum%gradients_1/pi/truediv_grad/Reshape_1/gradients_1/pi/add_1_grad/Sum/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
j
'gradients_1/pi/add_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
!gradients_1/pi/add_1_grad/ReshapeReshapegradients_1/pi/add_1_grad/Sum'gradients_1/pi/add_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
: 
?
/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad!gradients_1/pi/sub_grad/Reshape_1*
_output_shapes
:*
T0*
data_formatNHWC
z
gradients_1/pi/Exp_1_grad/mulMul%gradients_1/pi/truediv_grad/Reshape_1pi/Exp_1*
_output_shapes
:*
T0
?
)gradients_1/pi/dense_2/MatMul_grad/MatMulMatMul!gradients_1/pi/sub_grad/Reshape_1pi/dense_2/kernel/read*'
_output_shapes
:?????????@*
transpose_a( *
T0*
transpose_b(
?
+gradients_1/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh!gradients_1/pi/sub_grad/Reshape_1*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
?
gradients_1/AddNAddNgradients_1/pi/mul_1_grad/Mul_1gradients_1/pi/Exp_1_grad/mul*
T0*
N*2
_class(
&$loc:@gradients_1/pi/mul_1_grad/Mul_1*
_output_shapes
:
?
)gradients_1/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_1/pi/dense_2/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@
?
/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:@*
T0
?
)gradients_1/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_1/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*
T0*
transpose_a( *
transpose_b(*'
_output_shapes
:?????????@
?
+gradients_1/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
T0*
_output_shapes

:@@*
transpose_b( *
transpose_a(
?
'gradients_1/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_1/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
?
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:@*
T0
?
'gradients_1/pi/dense/MatMul_grad/MatMulMatMul'gradients_1/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
T0*
transpose_a( *
transpose_b(*'
_output_shapes
:?????????
?
)gradients_1/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_1/pi/dense/Tanh_grad/TanhGrad*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
c
Reshape_24/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?

Reshape_24Reshape)gradients_1/pi/dense/MatMul_grad/MatMul_1Reshape_24/shape*
Tshape0*
_output_shapes	
:?*
T0
c
Reshape_25/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?

Reshape_25Reshape-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradReshape_25/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_26/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?

Reshape_26Reshape+gradients_1/pi/dense_1/MatMul_grad/MatMul_1Reshape_26/shape*
Tshape0*
_output_shapes	
:? *
T0
c
Reshape_27/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?

Reshape_27Reshape/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_27/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_28/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?

Reshape_28Reshape+gradients_1/pi/dense_2/MatMul_grad/MatMul_1Reshape_28/shape*
Tshape0*
T0*
_output_shapes	
:?
c
Reshape_29/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?

Reshape_29Reshape/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_29/shape*
T0*
_output_shapes
:*
Tshape0
c
Reshape_30/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
l

Reshape_30Reshapegradients_1/AddNReshape_30/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
concat_2ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27
Reshape_28
Reshape_29
Reshape_30concat_2/axis*
N*
_output_shapes	
:?,*

Tidx0*
T0
T
gradients_2/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_2/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ??*
dtype0
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
x
'gradients_2/pi/Sum_2_grad/Reshape/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
?
!gradients_2/pi/Sum_2_grad/ReshapeReshapegradients_2/Fill'gradients_2/pi/Sum_2_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes

:
g
gradients_2/pi/Sum_2_grad/ShapeShapepi/add_9*
_output_shapes
:*
T0*
out_type0
?
gradients_2/pi/Sum_2_grad/TileTile!gradients_2/pi/Sum_2_grad/Reshapegradients_2/pi/Sum_2_grad/Shape*
T0*'
_output_shapes
:?????????*

Tmultiples0
g
gradients_2/pi/add_9_grad/ShapeShapepi/pow_2*
_output_shapes
:*
out_type0*
T0
i
!gradients_2/pi/add_9_grad/Shape_1Shapepi/add_8*
T0*
out_type0*
_output_shapes
:
?
/gradients_2/pi/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/add_9_grad/Shape!gradients_2/pi/add_9_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_2/pi/add_9_grad/SumSumgradients_2/pi/Sum_2_grad/Tile/gradients_2/pi/add_9_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
?
!gradients_2/pi/add_9_grad/ReshapeReshapegradients_2/pi/add_9_grad/Sumgradients_2/pi/add_9_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0
?
gradients_2/pi/add_9_grad/Sum_1Sumgradients_2/pi/Sum_2_grad/Tile1gradients_2/pi/add_9_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
?
#gradients_2/pi/add_9_grad/Reshape_1Reshapegradients_2/pi/add_9_grad/Sum_1!gradients_2/pi/add_9_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
g
gradients_2/pi/pow_2_grad/ShapeShapepi/sub_2*
_output_shapes
:*
out_type0*
T0
i
!gradients_2/pi/pow_2_grad/Shape_1Shape
pi/pow_2/y*
T0*
_output_shapes
: *
out_type0
?
/gradients_2/pi/pow_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/pow_2_grad/Shape!gradients_2/pi/pow_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_2/pi/pow_2_grad/mulMul!gradients_2/pi/add_9_grad/Reshape
pi/pow_2/y*
T0*'
_output_shapes
:?????????
d
gradients_2/pi/pow_2_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
r
gradients_2/pi/pow_2_grad/subSub
pi/pow_2/ygradients_2/pi/pow_2_grad/sub/y*
T0*
_output_shapes
: 

gradients_2/pi/pow_2_grad/PowPowpi/sub_2gradients_2/pi/pow_2_grad/sub*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/pow_2_grad/mul_1Mulgradients_2/pi/pow_2_grad/mulgradients_2/pi/pow_2_grad/Pow*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/pow_2_grad/SumSumgradients_2/pi/pow_2_grad/mul_1/gradients_2/pi/pow_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
?
!gradients_2/pi/pow_2_grad/ReshapeReshapegradients_2/pi/pow_2_grad/Sumgradients_2/pi/pow_2_grad/Shape*'
_output_shapes
:?????????*
Tshape0*
T0
h
#gradients_2/pi/pow_2_grad/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
!gradients_2/pi/pow_2_grad/GreaterGreaterpi/sub_2#gradients_2/pi/pow_2_grad/Greater/y*'
_output_shapes
:?????????*
T0
q
)gradients_2/pi/pow_2_grad/ones_like/ShapeShapepi/sub_2*
_output_shapes
:*
out_type0*
T0
n
)gradients_2/pi/pow_2_grad/ones_like/ConstConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
#gradients_2/pi/pow_2_grad/ones_likeFill)gradients_2/pi/pow_2_grad/ones_like/Shape)gradients_2/pi/pow_2_grad/ones_like/Const*'
_output_shapes
:?????????*
T0*

index_type0
?
 gradients_2/pi/pow_2_grad/SelectSelect!gradients_2/pi/pow_2_grad/Greaterpi/sub_2#gradients_2/pi/pow_2_grad/ones_like*'
_output_shapes
:?????????*
T0
x
gradients_2/pi/pow_2_grad/LogLog gradients_2/pi/pow_2_grad/Select*
T0*'
_output_shapes
:?????????
m
$gradients_2/pi/pow_2_grad/zeros_like	ZerosLikepi/sub_2*'
_output_shapes
:?????????*
T0
?
"gradients_2/pi/pow_2_grad/Select_1Select!gradients_2/pi/pow_2_grad/Greatergradients_2/pi/pow_2_grad/Log$gradients_2/pi/pow_2_grad/zeros_like*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/pow_2_grad/mul_2Mul!gradients_2/pi/add_9_grad/Reshapepi/pow_2*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/pow_2_grad/mul_3Mulgradients_2/pi/pow_2_grad/mul_2"gradients_2/pi/pow_2_grad/Select_1*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/pow_2_grad/Sum_1Sumgradients_2/pi/pow_2_grad/mul_31gradients_2/pi/pow_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
#gradients_2/pi/pow_2_grad/Reshape_1Reshapegradients_2/pi/pow_2_grad/Sum_1!gradients_2/pi/pow_2_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
gradients_2/pi/add_8_grad/ShapeShapepi/add_7*
_output_shapes
:*
out_type0*
T0
i
!gradients_2/pi/add_8_grad/Shape_1Shapepi/mul_6*
out_type0*
_output_shapes
:*
T0
?
/gradients_2/pi/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/add_8_grad/Shape!gradients_2/pi/add_8_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_2/pi/add_8_grad/SumSum#gradients_2/pi/add_9_grad/Reshape_1/gradients_2/pi/add_8_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
!gradients_2/pi/add_8_grad/ReshapeReshapegradients_2/pi/add_8_grad/Sumgradients_2/pi/add_8_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0
?
gradients_2/pi/add_8_grad/Sum_1Sum#gradients_2/pi/add_9_grad/Reshape_11gradients_2/pi/add_8_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
#gradients_2/pi/add_8_grad/Reshape_1Reshapegradients_2/pi/add_8_grad/Sum_1!gradients_2/pi/add_8_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
q
gradients_2/pi/sub_2_grad/ShapeShapepi/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
o
!gradients_2/pi/sub_2_grad/Shape_1Shapepi/Placeholder*
out_type0*
T0*
_output_shapes
:
?
/gradients_2/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_2_grad/Shape!gradients_2/pi/sub_2_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients_2/pi/sub_2_grad/SumSum!gradients_2/pi/pow_2_grad/Reshape/gradients_2/pi/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
?
!gradients_2/pi/sub_2_grad/ReshapeReshapegradients_2/pi/sub_2_grad/Sumgradients_2/pi/sub_2_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
y
gradients_2/pi/sub_2_grad/NegNeg!gradients_2/pi/pow_2_grad/Reshape*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/sub_2_grad/Sum_1Sumgradients_2/pi/sub_2_grad/Neg1gradients_2/pi/sub_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
#gradients_2/pi/sub_2_grad/Reshape_1Reshapegradients_2/pi/sub_2_grad/Sum_1!gradients_2/pi/sub_2_grad/Shape_1*'
_output_shapes
:?????????*
T0*
Tshape0
g
gradients_2/pi/add_7_grad/ShapeShapepi/Exp_3*
out_type0*
T0*
_output_shapes
:
i
!gradients_2/pi/add_7_grad/Shape_1Shapepi/Exp_4*
T0*
out_type0*
_output_shapes
:
?
/gradients_2/pi/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/add_7_grad/Shape!gradients_2/pi/add_7_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients_2/pi/add_7_grad/SumSum!gradients_2/pi/add_8_grad/Reshape/gradients_2/pi/add_7_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
?
!gradients_2/pi/add_7_grad/ReshapeReshapegradients_2/pi/add_7_grad/Sumgradients_2/pi/add_7_grad/Shape*
Tshape0*
_output_shapes
:*
T0
?
gradients_2/pi/add_7_grad/Sum_1Sum!gradients_2/pi/add_8_grad/Reshape1gradients_2/pi/add_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
#gradients_2/pi/add_7_grad/Reshape_1Reshapegradients_2/pi/add_7_grad/Sum_1!gradients_2/pi/add_7_grad/Shape_1*
T0*'
_output_shapes
:?????????*
Tshape0
g
gradients_2/pi/mul_6_grad/ShapeShape
pi/mul_6/x*
out_type0*
_output_shapes
: *
T0
h
!gradients_2/pi/mul_6_grad/Shape_1Shapepi/Sqrt*
T0*
out_type0*
_output_shapes
:
?
/gradients_2/pi/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_6_grad/Shape!gradients_2/pi/mul_6_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients_2/pi/mul_6_grad/MulMul#gradients_2/pi/add_8_grad/Reshape_1pi/Sqrt*'
_output_shapes
:?????????*
T0
?
gradients_2/pi/mul_6_grad/SumSumgradients_2/pi/mul_6_grad/Mul/gradients_2/pi/mul_6_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
!gradients_2/pi/mul_6_grad/ReshapeReshapegradients_2/pi/mul_6_grad/Sumgradients_2/pi/mul_6_grad/Shape*
T0*
_output_shapes
: *
Tshape0
?
gradients_2/pi/mul_6_grad/Mul_1Mul
pi/mul_6/x#gradients_2/pi/add_8_grad/Reshape_1*'
_output_shapes
:?????????*
T0
?
gradients_2/pi/mul_6_grad/Sum_1Sumgradients_2/pi/mul_6_grad/Mul_11gradients_2/pi/mul_6_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
?
#gradients_2/pi/mul_6_grad/Reshape_1Reshapegradients_2/pi/mul_6_grad/Sum_1!gradients_2/pi/mul_6_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
?
/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad!gradients_2/pi/sub_2_grad/Reshape*
_output_shapes
:*
data_formatNHWC*
T0
?
!gradients_2/pi/Sqrt_grad/SqrtGradSqrtGradpi/Sqrt#gradients_2/pi/mul_6_grad/Reshape_1*'
_output_shapes
:?????????*
T0
?
)gradients_2/pi/dense_2/MatMul_grad/MatMulMatMul!gradients_2/pi/sub_2_grad/Reshapepi/dense_2/kernel/read*'
_output_shapes
:?????????@*
T0*
transpose_b(*
transpose_a( 
?
+gradients_2/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh!gradients_2/pi/sub_2_grad/Reshape*
transpose_b( *
transpose_a(*
T0*
_output_shapes

:@
g
gradients_2/pi/mul_5_grad/ShapeShapepi/Exp_3*
_output_shapes
:*
out_type0*
T0
i
!gradients_2/pi/mul_5_grad/Shape_1Shapepi/Exp_4*
out_type0*
T0*
_output_shapes
:
?
/gradients_2/pi/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_5_grad/Shape!gradients_2/pi/mul_5_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients_2/pi/mul_5_grad/MulMul!gradients_2/pi/Sqrt_grad/SqrtGradpi/Exp_4*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/mul_5_grad/SumSumgradients_2/pi/mul_5_grad/Mul/gradients_2/pi/mul_5_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
?
!gradients_2/pi/mul_5_grad/ReshapeReshapegradients_2/pi/mul_5_grad/Sumgradients_2/pi/mul_5_grad/Shape*
Tshape0*
T0*
_output_shapes
:
?
gradients_2/pi/mul_5_grad/Mul_1Mulpi/Exp_3!gradients_2/pi/Sqrt_grad/SqrtGrad*
T0*'
_output_shapes
:?????????
?
gradients_2/pi/mul_5_grad/Sum_1Sumgradients_2/pi/mul_5_grad/Mul_11gradients_2/pi/mul_5_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
?
#gradients_2/pi/mul_5_grad/Reshape_1Reshapegradients_2/pi/mul_5_grad/Sum_1!gradients_2/pi/mul_5_grad/Shape_1*'
_output_shapes
:?????????*
Tshape0*
T0
?
)gradients_2/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_2/pi/dense_2/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@
?
gradients_2/AddNAddN!gradients_2/pi/add_7_grad/Reshape!gradients_2/pi/mul_5_grad/Reshape*4
_class*
(&loc:@gradients_2/pi/add_7_grad/Reshape*
T0*
N*
_output_shapes
:
e
gradients_2/pi/Exp_3_grad/mulMulgradients_2/AddNpi/Exp_3*
T0*
_output_shapes
:
?
/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes
:@*
data_formatNHWC*
T0
?
)gradients_2/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*'
_output_shapes
:?????????@*
T0*
transpose_b(*
transpose_a( 
?
+gradients_2/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes

:@@*
transpose_a(*
T0*
transpose_b( 
?
'gradients_2/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_2/pi/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@
?
-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes
:@*
data_formatNHWC*
T0
?
'gradients_2/pi/dense/MatMul_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
transpose_a( *
T0*
transpose_b(*'
_output_shapes
:?????????
?
)gradients_2/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_2/pi/dense/Tanh_grad/TanhGrad*
T0*
transpose_b( *
transpose_a(*
_output_shapes

:@
c
Reshape_31/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?

Reshape_31Reshape)gradients_2/pi/dense/MatMul_grad/MatMul_1Reshape_31/shape*
_output_shapes	
:?*
Tshape0*
T0
c
Reshape_32/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?

Reshape_32Reshape-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradReshape_32/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_33/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?

Reshape_33Reshape+gradients_2/pi/dense_1/MatMul_grad/MatMul_1Reshape_33/shape*
_output_shapes	
:? *
Tshape0*
T0
c
Reshape_34/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?

Reshape_34Reshape/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_34/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_35/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?

Reshape_35Reshape+gradients_2/pi/dense_2/MatMul_grad/MatMul_1Reshape_35/shape*
_output_shapes	
:?*
Tshape0*
T0
c
Reshape_36/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
?

Reshape_36Reshape/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_36/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_37/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
y

Reshape_37Reshapegradients_2/pi/Exp_3_grad/mulReshape_37/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_3/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
concat_3ConcatV2
Reshape_31
Reshape_32
Reshape_33
Reshape_34
Reshape_35
Reshape_36
Reshape_37concat_3/axis*

Tidx0*
T0*
N*
_output_shapes	
:?,
X
Placeholder_5Placeholder*
_output_shapes	
:?,*
dtype0*
shape:?,
K
mul_1Mulconcat_3Placeholder_5*
T0*
_output_shapes	
:?,
Q
Const_4Const*
dtype0*
_output_shapes
:*
valueB: 
X
SumSummul_1Const_4*
	keep_dims( *
_output_shapes
: *
T0*

Tidx0
T
gradients_3/ShapeConst*
valueB *
_output_shapes
: *
dtype0
Z
gradients_3/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
l
"gradients_3/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?
gradients_3/Sum_grad/ReshapeReshapegradients_3/Fill"gradients_3/Sum_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
e
gradients_3/Sum_grad/ConstConst*
_output_shapes
:*
valueB:?,*
dtype0
?
gradients_3/Sum_grad/TileTilegradients_3/Sum_grad/Reshapegradients_3/Sum_grad/Const*

Tmultiples0*
T0*
_output_shapes	
:?,
q
gradients_3/mul_1_grad/MulMulgradients_3/Sum_grad/TilePlaceholder_5*
T0*
_output_shapes	
:?,
n
gradients_3/mul_1_grad/Mul_1Mulgradients_3/Sum_grad/Tileconcat_3*
T0*
_output_shapes	
:?,
`
gradients_3/concat_3_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
gradients_3/concat_3_grad/modFloorModconcat_3/axisgradients_3/concat_3_grad/Rank*
_output_shapes
: *
T0
j
gradients_3/concat_3_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:@
l
!gradients_3/concat_3_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:? 
k
!gradients_3/concat_3_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@
l
!gradients_3/concat_3_grad/Shape_4Const*
dtype0*
_output_shapes
:*
valueB:?
k
!gradients_3/concat_3_grad/Shape_5Const*
dtype0*
valueB:*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_6Const*
valueB:*
dtype0*
_output_shapes
:
?
&gradients_3/concat_3_grad/ConcatOffsetConcatOffsetgradients_3/concat_3_grad/modgradients_3/concat_3_grad/Shape!gradients_3/concat_3_grad/Shape_1!gradients_3/concat_3_grad/Shape_2!gradients_3/concat_3_grad/Shape_3!gradients_3/concat_3_grad/Shape_4!gradients_3/concat_3_grad/Shape_5!gradients_3/concat_3_grad/Shape_6*
N*>
_output_shapes,
*:::::::
?
gradients_3/concat_3_grad/SliceSlicegradients_3/mul_1_grad/Mul&gradients_3/concat_3_grad/ConcatOffsetgradients_3/concat_3_grad/Shape*
T0*
_output_shapes	
:?*
Index0
?
!gradients_3/concat_3_grad/Slice_1Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:1!gradients_3/concat_3_grad/Shape_1*
Index0*
_output_shapes
:@*
T0
?
!gradients_3/concat_3_grad/Slice_2Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:2!gradients_3/concat_3_grad/Shape_2*
T0*
_output_shapes	
:? *
Index0
?
!gradients_3/concat_3_grad/Slice_3Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:3!gradients_3/concat_3_grad/Shape_3*
Index0*
T0*
_output_shapes
:@
?
!gradients_3/concat_3_grad/Slice_4Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:4!gradients_3/concat_3_grad/Shape_4*
_output_shapes	
:?*
T0*
Index0
?
!gradients_3/concat_3_grad/Slice_5Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:5!gradients_3/concat_3_grad/Shape_5*
Index0*
_output_shapes
:*
T0
?
!gradients_3/concat_3_grad/Slice_6Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:6!gradients_3/concat_3_grad/Shape_6*
Index0*
T0*
_output_shapes
:
r
!gradients_3/Reshape_31_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
?
#gradients_3/Reshape_31_grad/ReshapeReshapegradients_3/concat_3_grad/Slice!gradients_3/Reshape_31_grad/Shape*
_output_shapes

:@*
Tshape0*
T0
k
!gradients_3/Reshape_32_grad/ShapeConst*
dtype0*
valueB:@*
_output_shapes
:
?
#gradients_3/Reshape_32_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_1!gradients_3/Reshape_32_grad/Shape*
_output_shapes
:@*
T0*
Tshape0
r
!gradients_3/Reshape_33_grad/ShapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
?
#gradients_3/Reshape_33_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_2!gradients_3/Reshape_33_grad/Shape*
Tshape0*
_output_shapes

:@@*
T0
k
!gradients_3/Reshape_34_grad/ShapeConst*
valueB:@*
_output_shapes
:*
dtype0
?
#gradients_3/Reshape_34_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_3!gradients_3/Reshape_34_grad/Shape*
_output_shapes
:@*
Tshape0*
T0
r
!gradients_3/Reshape_35_grad/ShapeConst*
valueB"@      *
_output_shapes
:*
dtype0
?
#gradients_3/Reshape_35_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_4!gradients_3/Reshape_35_grad/Shape*
T0*
Tshape0*
_output_shapes

:@
k
!gradients_3/Reshape_36_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
?
#gradients_3/Reshape_36_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_5!gradients_3/Reshape_36_grad/Shape*
_output_shapes
:*
T0*
Tshape0
k
!gradients_3/Reshape_37_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
?
#gradients_3/Reshape_37_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_6!gradients_3/Reshape_37_grad/Shape*
Tshape0*
_output_shapes
:*
T0
?
Agradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGrad#gradients_3/Reshape_31_grad/Reshape*
T0*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????
?
Cgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1MatMulPlaceholder#gradients_3/Reshape_31_grad/Reshape*
T0*
transpose_a( *'
_output_shapes
:?????????@*
transpose_b( 
?
Dgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeShape'gradients_2/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
out_type0
?
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
?
Rgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
?
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?????????
?
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
?
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeRgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
Index0*
new_axis_mask *

begin_mask*
ellipsis_mask *
shrink_axis_mask *
T0*
_output_shapes
:*
end_mask 
?
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
?
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :
?
Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*

index_type0*
_output_shapes
:*
T0
?
Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
Egradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
T0*
_output_shapes
:*
N*

Tidx0
?
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:
?
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
?
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackVgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
ellipsis_mask *
shrink_axis_mask *
end_mask *
Index0*
_output_shapes
:*
new_axis_mask *

begin_mask*
T0
?
Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ggradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
_output_shapes
:*

Tidx0*
N*
T0
?
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_32_grad/ReshapeEgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
Tshape0*
_output_shapes

:@
?
Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/TileTileFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeGgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1*

Tmultiples0*
T0*'
_output_shapes
:?????????@
?
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGrad#gradients_3/Reshape_33_grad/Reshape*
transpose_b(*
transpose_a( *'
_output_shapes
:?????????@*
T0
?
Egradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense/Tanh#gradients_3/Reshape_33_grad/Reshape*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????@*
T0
?
Fgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeShape)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes
:*
out_type0*
T0
?
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:@*
_output_shapes
:*
dtype0
?
Tgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
?????????*
_output_shapes
:*
dtype0
?
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
ellipsis_mask *
T0*
new_axis_mask *
end_mask *

begin_mask*
Index0*
shrink_axis_mask *
_output_shapes
:
?
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
?
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
_output_shapes
:*

index_type0*
T0
?
Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Ggradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
?
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
dtype0*
valueB:
?????????*
_output_shapes
:
?
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*

begin_mask*
new_axis_mask *
Index0*
ellipsis_mask *
T0*
shrink_axis_mask *
_output_shapes
:*
end_mask 
?
Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
valueB:*
dtype0
?
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
Igradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
_output_shapes
:*
N*

Tidx0*
T0
?
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_34_grad/ReshapeGgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
_output_shapes

:@*
Tshape0
?
Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1*'
_output_shapes
:?????????@*
T0*

Tmultiples0
?
Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMulMatMul!gradients_2/pi/sub_2_grad/Reshape#gradients_3/Reshape_35_grad/Reshape*'
_output_shapes
:?????????@*
transpose_b(*
transpose_a( *
T0
?
Egradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_3/Reshape_35_grad/Reshape*
transpose_a( *
transpose_b( *'
_output_shapes
:?????????*
T0
?
Fgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeShape!gradients_2/pi/sub_2_grad/Reshape*
T0*
out_type0*
_output_shapes
:
?
Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Tgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
?
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
end_mask *
T0*
new_axis_mask *
ellipsis_mask *

begin_mask*
shrink_axis_mask *
Index0*
_output_shapes
:
?
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
?
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
?
Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
T0*
_output_shapes
:*

index_type0
?
Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
Ggradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axis*

Tidx0*
_output_shapes
:*
N*
T0
?
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
?????????*
_output_shapes
:*
dtype0
?
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
?
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
Index0*
end_mask *
shrink_axis_mask *
_output_shapes
:*
T0*

begin_mask*
ellipsis_mask *
new_axis_mask 
?
Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
dtype0*
_output_shapes
:*
valueB:
?
Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Igradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
?
Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_36_grad/ReshapeGgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
Tshape0*
_output_shapes

:
?
Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1*
T0*

Tmultiples0*'
_output_shapes
:?????????
?
2gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/MulMul#gradients_3/Reshape_37_grad/Reshapepi/Exp_3*
T0*
_output_shapes
:
?
4gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul_1Mul#gradients_3/Reshape_37_grad/Reshapegradients_2/AddN*
T0*
_output_shapes
:
?
gradients_3/AddNAddNCgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Tile*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1*
T0*
N*'
_output_shapes
:?????????@
?
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN*
dtype0*
valueB
 *   ?*
_output_shapes
: 
?
<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/y*
T0*'
_output_shapes
:?????????@
?
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1Mul<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
?
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2Mul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1pi/dense/Tanh*'
_output_shapes
:?????????@*
T0
?
Agradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN*'
_output_shapes
:?????????@*
T0
?
Agradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMulMatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_1/kernel/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:?????????@
?
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1MatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
T0*
_output_shapes

:@@*
transpose_b( *
transpose_a(
?
8gradients_3/gradients_2/pi/mul_5_grad/Reshape_grad/ShapeShapegradients_2/pi/mul_5_grad/Sum*
T0*
out_type0*#
_output_shapes
:?????????
?
:gradients_3/gradients_2/pi/mul_5_grad/Reshape_grad/ReshapeReshape2gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul8gradients_3/gradients_2/pi/mul_5_grad/Reshape_grad/Shape*
_output_shapes
:*
T0*
Tshape0
?
gradients_3/AddN_1AddNEgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul*
N*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1*
T0*'
_output_shapes
:?????????@
?
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN_1*
_output_shapes
: *
dtype0*
valueB
 *   ?
?
>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN_1@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/y*'
_output_shapes
:?????????@*
T0
?
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1Mul>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:?????????@*
T0
?
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2Mul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1pi/dense_1/Tanh*'
_output_shapes
:?????????@*
T0
?
Cgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_1*
T0*'
_output_shapes
:?????????@
?
4gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/ShapeShapegradients_2/pi/mul_5_grad/Mul*
out_type0*
_output_shapes
:*
T0
?
3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape
?
2gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/addAddV2/gradients_2/pi/mul_5_grad/BroadcastGradientArgs3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Size*#
_output_shapes
:?????????*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*
T0
?
2gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/modFloorMod2gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/add3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Size*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*#
_output_shapes
:?????????*
T0
?
6gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape_1Shape2gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/mod*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*
_output_shapes
:*
out_type0*
T0
?
:gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/range/startConst*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
?
:gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/range/deltaConst*
_output_shapes
: *
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*
value	B :
?
4gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/rangeRange:gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/range/start3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Size:gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/range/delta*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*

Tidx0*
_output_shapes
:
?
9gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape
?
3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/FillFill6gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape_19gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Fill/value*
T0*

index_type0*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*#
_output_shapes
:?????????
?
<gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/DynamicStitchDynamicStitch4gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/range2gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/mod4gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Fill*#
_output_shapes
:?????????*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*
N
?
8gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Maximum/yConst*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*
value	B :*
_output_shapes
: *
dtype0
?
6gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/MaximumMaximum<gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/DynamicStitch8gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Maximum/y*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape*#
_output_shapes
:?????????
?
7gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/floordivFloorDiv4gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape6gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Maximum*
T0*
_output_shapes
:*G
_class=
;9loc:@gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Shape
?
6gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/ReshapeReshape:gradients_3/gradients_2/pi/mul_5_grad/Reshape_grad/Reshape<gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/DynamicStitch*
Tshape0*
T0*
_output_shapes
:
?
3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/TileTile6gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Reshape7gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/floordiv*
T0*'
_output_shapes
:?????????*

Tmultiples0
?
Agradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMulMatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_2/kernel/read*'
_output_shapes
:?????????*
transpose_a( *
T0*
transpose_b( 
?
Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1MatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGrad!gradients_2/pi/sub_2_grad/Reshape*
_output_shapes

:@*
transpose_a(*
T0*
transpose_b( 
?
4gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/ShapeShape!gradients_2/pi/Sqrt_grad/SqrtGrad*
_output_shapes
:*
T0*
out_type0
~
6gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Shape_1Shapepi/Exp_4*
out_type0*
_output_shapes
:*
T0
?
Dgradients_3/gradients_2/pi/mul_5_grad/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Shape6gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
2gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/MulMul3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Tilepi/Exp_4*'
_output_shapes
:?????????*
T0
?
2gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/SumSum2gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/MulDgradients_3/gradients_2/pi/mul_5_grad/Mul_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
?
6gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/ReshapeReshape2gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Sum4gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
4gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Mul_1Mul!gradients_2/pi/Sqrt_grad/SqrtGrad3gradients_3/gradients_2/pi/mul_5_grad/Sum_grad/Tile*
T0*'
_output_shapes
:?????????
?
4gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Sum_1Sum4gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Mul_1Fgradients_3/gradients_2/pi/mul_5_grad/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
?
8gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Reshape_1Reshape4gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Sum_16gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Shape_1*'
_output_shapes
:?????????*
Tshape0*
T0
?
gradients_3/AddN_2AddNEgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul*
N*
T0*'
_output_shapes
:?????????*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1
?
8gradients_3/gradients_2/pi/sub_2_grad/Reshape_grad/ShapeShapegradients_2/pi/sub_2_grad/Sum*
T0*
out_type0*#
_output_shapes
:?????????
?
:gradients_3/gradients_2/pi/sub_2_grad/Reshape_grad/ReshapeReshapegradients_3/AddN_28gradients_3/gradients_2/pi/sub_2_grad/Reshape_grad/Shape*
Tshape0*
T0*
_output_shapes
:
?
:gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/truedivRealDiv6gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Reshapepi/Sqrt*'
_output_shapes
:?????????*
T0
?
6gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/NegNeg:gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/truediv*
T0*'
_output_shapes
:?????????
?
6gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/mulMul6gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/Neg!gradients_2/pi/Sqrt_grad/SqrtGrad*
T0*'
_output_shapes
:?????????
?
:gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/mul_1/xConst7^gradients_3/gradients_2/pi/mul_5_grad/Mul_grad/Reshape*
dtype0*
_output_shapes
: *
valueB
 *   ?
?
8gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/mul_1Mul:gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/mul_1/x:gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/truediv*
T0*'
_output_shapes
:?????????
?
4gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/ShapeShape!gradients_2/pi/pow_2_grad/Reshape*
T0*
out_type0*
_output_shapes
:
?
3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/SizeConst*
_output_shapes
: *
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape*
value	B :
?
2gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/addAddV2/gradients_2/pi/sub_2_grad/BroadcastGradientArgs3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Size*
T0*#
_output_shapes
:?????????*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape
?
2gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/modFloorMod2gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/add3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Size*#
_output_shapes
:?????????*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape
?
6gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape_1Shape2gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/mod*
T0*
out_type0*
_output_shapes
:*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape
?
:gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/range/startConst*
_output_shapes
: *G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape*
dtype0*
value	B : 
?
:gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: *G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape
?
4gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/rangeRange:gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/range/start3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Size:gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/range/delta*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape*
_output_shapes
:*

Tidx0
?
9gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape
?
3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/FillFill6gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape_19gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Fill/value*#
_output_shapes
:?????????*

index_type0*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape*
T0
?
<gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/DynamicStitchDynamicStitch4gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/range2gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/mod4gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Fill*
N*#
_output_shapes
:?????????*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape
?
8gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Maximum/yConst*
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape*
value	B :*
_output_shapes
: 
?
6gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/MaximumMaximum<gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/DynamicStitch8gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Maximum/y*#
_output_shapes
:?????????*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape
?
7gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/floordivFloorDiv4gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape6gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Maximum*
_output_shapes
:*G
_class=
;9loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Shape*
T0
?
6gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/ReshapeReshape:gradients_3/gradients_2/pi/sub_2_grad/Reshape_grad/Reshape<gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/DynamicStitch*
Tshape0*
T0*
_output_shapes
:
?
3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/TileTile6gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Reshape7gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/floordiv*
T0*

Tmultiples0*'
_output_shapes
:?????????
?
!gradients_3/pi/Sqrt_grad/SqrtGradSqrtGradpi/Sqrt6gradients_3/gradients_2/pi/Sqrt_grad/SqrtGrad_grad/mul*
T0*'
_output_shapes
:?????????
?
8gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/ShapeShapegradients_2/pi/pow_2_grad/Sum*
T0*
out_type0*#
_output_shapes
:?????????
?
:gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/ReshapeReshape3gradients_3/gradients_2/pi/sub_2_grad/Sum_grad/Tile8gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/Shape*
T0*
_output_shapes
:*
Tshape0
g
gradients_3/pi/mul_5_grad/ShapeShapepi/Exp_3*
T0*
_output_shapes
:*
out_type0
i
!gradients_3/pi/mul_5_grad/Shape_1Shapepi/Exp_4*
_output_shapes
:*
T0*
out_type0
?
/gradients_3/pi/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/pi/mul_5_grad/Shape!gradients_3/pi/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_3/pi/mul_5_grad/MulMul!gradients_3/pi/Sqrt_grad/SqrtGradpi/Exp_4*'
_output_shapes
:?????????*
T0
?
gradients_3/pi/mul_5_grad/SumSumgradients_3/pi/mul_5_grad/Mul/gradients_3/pi/mul_5_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
?
!gradients_3/pi/mul_5_grad/ReshapeReshapegradients_3/pi/mul_5_grad/Sumgradients_3/pi/mul_5_grad/Shape*
_output_shapes
:*
T0*
Tshape0
?
gradients_3/pi/mul_5_grad/Mul_1Mulpi/Exp_3!gradients_3/pi/Sqrt_grad/SqrtGrad*'
_output_shapes
:?????????*
T0
?
gradients_3/pi/mul_5_grad/Sum_1Sumgradients_3/pi/mul_5_grad/Mul_11gradients_3/pi/mul_5_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
?
#gradients_3/pi/mul_5_grad/Reshape_1Reshapegradients_3/pi/mul_5_grad/Sum_1!gradients_3/pi/mul_5_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
?
4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/ShapeShapegradients_2/pi/pow_2_grad/mul_1*
out_type0*
_output_shapes
:*
T0
?
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
?
2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/addAddV2/gradients_2/pi/pow_2_grad/BroadcastGradientArgs3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*#
_output_shapes
:?????????
?
2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/modFloorMod2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/add3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size*#
_output_shapes
:?????????*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
T0
?
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape_1Shape2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/mod*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
:*
out_type0*
T0
?
:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : *G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
?
:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/deltaConst*
value	B :*
_output_shapes
: *G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
dtype0
?
4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/rangeRange:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/start3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/delta*

Tidx0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
:
?
9gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill/valueConst*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
: *
value	B :*
dtype0
?
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/FillFill6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape_19gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill/value*#
_output_shapes
:?????????*

index_type0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
T0
?
<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitchDynamicStitch4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/mod4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill*
T0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
N*#
_output_shapes
:?????????
?
8gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: *G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
?
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/MaximumMaximum<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitch8gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum/y*
T0*#
_output_shapes
:?????????*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
?
7gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/floordivFloorDiv4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum*
T0*
_output_shapes
:*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
?
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/ReshapeReshape:gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/Reshape<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
?
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/TileTile6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Reshape7gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/floordiv*'
_output_shapes
:?????????*

Tmultiples0*
T0
?
gradients_3/AddN_3AddN4gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul_1!gradients_3/pi/mul_5_grad/Reshape*
T0*
_output_shapes
:*
N*G
_class=
;9loc:@gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul_1
g
gradients_3/pi/Exp_3_grad/mulMulgradients_3/AddN_3pi/Exp_3*
T0*
_output_shapes
:
?
6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/ShapeShapegradients_2/pi/pow_2_grad/mul*
out_type0*
T0*
_output_shapes
:
?
8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1Shapegradients_2/pi/pow_2_grad/Pow*
_output_shapes
:*
T0*
out_type0
?
Fgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/MulMul3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Tilegradients_2/pi/pow_2_grad/Pow*'
_output_shapes
:?????????*
T0
?
4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/SumSum4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/MulFgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
?
8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/ReshapeReshape4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
?
6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Mul_1Mulgradients_2/pi/pow_2_grad/mul3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Tile*
T0*'
_output_shapes
:?????????
?
6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum_1Sum6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Mul_1Hgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1Reshape6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum_18gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1*
T0*'
_output_shapes
:?????????*
Tshape0
|
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ShapeShapepi/sub_2*
_output_shapes
:*
out_type0*
T0
?
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1Shapegradients_2/pi/pow_2_grad/sub*
T0*
_output_shapes
: *
out_type0
?
Dgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mulMul:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1gradients_2/pi/pow_2_grad/sub*'
_output_shapes
:?????????*
T0
y
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub/yConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/subSubgradients_2/pi/pow_2_grad/sub4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub/y*
_output_shapes
: *
T0
?
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/PowPowpi/sub_22gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub*
T0*'
_output_shapes
:?????????
?
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_1Mul2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Pow*
T0*'
_output_shapes
:?????????
?
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/SumSum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_1Dgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
?
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ReshapeReshape2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
}
8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/GreaterGreaterpi/sub_28gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater/y*
T0*'
_output_shapes
:?????????
?
>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/ShapeShapepi/sub_2*
T0*
out_type0*
_output_shapes
:
?
>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/ConstConst*
dtype0*
valueB
 *  ??*
_output_shapes
: 
?
8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_likeFill>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/Shape>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:?????????
?
5gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/SelectSelect6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greaterpi/sub_28gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like*
T0*'
_output_shapes
:?????????
?
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/LogLog5gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select*
T0*'
_output_shapes
:?????????
?
9gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/zeros_like	ZerosLikepi/sub_2*
T0*'
_output_shapes
:?????????
?
7gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select_1Select6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Log9gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/zeros_like*
T0*'
_output_shapes
:?????????
?
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_2Mul:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1gradients_2/pi/pow_2_grad/Pow*
T0*'
_output_shapes
:?????????
?
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_3Mul4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_27gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select_1*'
_output_shapes
:?????????*
T0
?
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum_1Sum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_3Fgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
?
8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape_1Reshape4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum_16gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
q
gradients_3/pi/sub_2_grad/ShapeShapepi/dense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
o
!gradients_3/pi/sub_2_grad/Shape_1Shapepi/Placeholder*
_output_shapes
:*
out_type0*
T0
?
/gradients_3/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/pi/sub_2_grad/Shape!gradients_3/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_3/pi/sub_2_grad/SumSum6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape/gradients_3/pi/sub_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
?
!gradients_3/pi/sub_2_grad/ReshapeReshapegradients_3/pi/sub_2_grad/Sumgradients_3/pi/sub_2_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
?
gradients_3/pi/sub_2_grad/NegNeg6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape*
T0*'
_output_shapes
:?????????
?
gradients_3/pi/sub_2_grad/Sum_1Sumgradients_3/pi/sub_2_grad/Neg1gradients_3/pi/sub_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
#gradients_3/pi/sub_2_grad/Reshape_1Reshapegradients_3/pi/sub_2_grad/Sum_1!gradients_3/pi/sub_2_grad/Shape_1*
Tshape0*'
_output_shapes
:?????????*
T0
?
/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad!gradients_3/pi/sub_2_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0
?
)gradients_3/pi/dense_2/MatMul_grad/MatMulMatMul!gradients_3/pi/sub_2_grad/Reshapepi/dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:?????????@
?
+gradients_3/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh!gradients_3/pi/sub_2_grad/Reshape*
_output_shapes

:@*
T0*
transpose_a(*
transpose_b( 
?
gradients_3/AddN_4AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_2/MatMul_grad/MatMul*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul*'
_output_shapes
:?????????@*
N*
T0
?
)gradients_3/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_4*
T0*'
_output_shapes
:?????????@
?
gradients_3/AddN_5AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@*
N*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1
?
/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes
:@*
T0*
data_formatNHWC
?
)gradients_3/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_3/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*'
_output_shapes
:?????????@*
transpose_b(*
transpose_a( *
T0
?
+gradients_3/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
T0*
transpose_b( *
_output_shapes

:@@*
transpose_a(
?
gradients_3/AddN_6AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul*
N
?
'gradients_3/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN_6*
T0*'
_output_shapes
:?????????@
?
gradients_3/AddN_7AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_1/MatMul_grad/MatMul_1*
T0*
N*
_output_shapes

:@@*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1
?
-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_3/pi/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*
_output_shapes
:@
?
'gradients_3/pi/dense/MatMul_grad/MatMulMatMul'gradients_3/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:?????????*
transpose_b(
?
)gradients_3/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_3/pi/dense/Tanh_grad/TanhGrad*
_output_shapes

:@*
transpose_b( *
T0*
transpose_a(
c
Reshape_38/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?

Reshape_38Reshape)gradients_3/pi/dense/MatMul_grad/MatMul_1Reshape_38/shape*
T0*
_output_shapes	
:?*
Tshape0
c
Reshape_39/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?

Reshape_39Reshape-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradReshape_39/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_40/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
o

Reshape_40Reshapegradients_3/AddN_7Reshape_40/shape*
_output_shapes	
:? *
Tshape0*
T0
c
Reshape_41/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?

Reshape_41Reshape/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_41/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_42/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
o

Reshape_42Reshapegradients_3/AddN_5Reshape_42/shape*
Tshape0*
_output_shapes	
:?*
T0
c
Reshape_43/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?

Reshape_43Reshape/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_43/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_44/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
y

Reshape_44Reshapegradients_3/pi/Exp_3_grad/mulReshape_44/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_4/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
concat_4ConcatV2
Reshape_38
Reshape_39
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44concat_4/axis*
_output_shapes	
:?,*
N*
T0*

Tidx0
L
mul_2/xConst*
_output_shapes
: *
valueB
 *???=*
dtype0
J
mul_2Mulmul_2/xPlaceholder_5*
T0*
_output_shapes	
:?,
C
addAddV2concat_4mul_2*
_output_shapes	
:?,*
T0
c
Reshape_45/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
q

Reshape_45Reshapepi/dense/kernel/readReshape_45/shape*
_output_shapes	
:?*
T0*
Tshape0
c
Reshape_46/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
n

Reshape_46Reshapepi/dense/bias/readReshape_46/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_47/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
s

Reshape_47Reshapepi/dense_1/kernel/readReshape_47/shape*
T0*
_output_shapes	
:? *
Tshape0
c
Reshape_48/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
p

Reshape_48Reshapepi/dense_1/bias/readReshape_48/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_49/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
s

Reshape_49Reshapepi/dense_2/kernel/readReshape_49/shape*
T0*
_output_shapes	
:?*
Tshape0
c
Reshape_50/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
p

Reshape_50Reshapepi/dense_2/bias/readReshape_50/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_51/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
k

Reshape_51Reshapepi/log_std/readReshape_51/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 
?
concat_5ConcatV2
Reshape_45
Reshape_46
Reshape_47
Reshape_48
Reshape_49
Reshape_50
Reshape_51concat_5/axis*
_output_shapes	
:?,*
T0*
N*

Tidx0
l
Const_5Const*
_output_shapes
:*1
value(B&"@  @      @   ?        *
dtype0
S
split_2/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
?
split_2SplitVPlaceholder_5Const_5split_2/split_dim*A
_output_shapes/
-:?:@:? :@:?::*

Tlen0*
	num_split*
T0
a
Reshape_52/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
g

Reshape_52Reshapesplit_2Reshape_52/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_53/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
e

Reshape_53Reshape	split_2:1Reshape_53/shape*
T0*
_output_shapes
:@*
Tshape0
a
Reshape_54/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
i

Reshape_54Reshape	split_2:2Reshape_54/shape*
Tshape0*
_output_shapes

:@@*
T0
Z
Reshape_55/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
e

Reshape_55Reshape	split_2:3Reshape_55/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_56/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
i

Reshape_56Reshape	split_2:4Reshape_56/shape*
T0*
_output_shapes

:@*
Tshape0
Z
Reshape_57/shapeConst*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_57Reshape	split_2:5Reshape_57/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_58/shapeConst*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_58Reshape	split_2:6Reshape_58/shape*
_output_shapes
:*
T0*
Tshape0
?
Assign_6Assignpi/dense/kernel
Reshape_52*
use_locking(*"
_class
loc:@pi/dense/kernel*
T0*
validate_shape(*
_output_shapes

:@
?
Assign_7Assignpi/dense/bias
Reshape_53*
use_locking(*
_output_shapes
:@*
validate_shape(*
T0* 
_class
loc:@pi/dense/bias
?
Assign_8Assignpi/dense_1/kernel
Reshape_54*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel
?
Assign_9Assignpi/dense_1/bias
Reshape_55*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes
:@
?
	Assign_10Assignpi/dense_2/kernel
Reshape_56*
T0*
validate_shape(*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
_output_shapes

:@
?
	Assign_11Assignpi/dense_2/bias
Reshape_57*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:*
use_locking(
?
	Assign_12Assign
pi/log_std
Reshape_58*
T0*
use_locking(*
_output_shapes
:*
_class
loc:@pi/log_std*
validate_shape(
d
group_deps_2NoOp
^Assign_10
^Assign_11
^Assign_12	^Assign_6	^Assign_7	^Assign_8	^Assign_9
?
initNoOp^beta1_power/Assign^beta2_power/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Assign^pi/log_std/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign^v/dense_2/bias/Adam/Assign^v/dense_2/bias/Adam_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/Adam/Assign^v/dense_2/kernel/Adam_1/Assign^v/dense_2/kernel/Assign
c
Reshape_59/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
q

Reshape_59Reshapepi/dense/kernel/readReshape_59/shape*
T0*
Tshape0*
_output_shapes	
:?
c
Reshape_60/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
n

Reshape_60Reshapepi/dense/bias/readReshape_60/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_61/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
s

Reshape_61Reshapepi/dense_1/kernel/readReshape_61/shape*
T0*
_output_shapes	
:? *
Tshape0
c
Reshape_62/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
p

Reshape_62Reshapepi/dense_1/bias/readReshape_62/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_63/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
s

Reshape_63Reshapepi/dense_2/kernel/readReshape_63/shape*
Tshape0*
_output_shapes	
:?*
T0
c
Reshape_64/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
p

Reshape_64Reshapepi/dense_2/bias/readReshape_64/shape*
T0*
_output_shapes
:*
Tshape0
c
Reshape_65/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
k

Reshape_65Reshapepi/log_std/readReshape_65/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_66/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
p

Reshape_66Reshapev/dense/kernel/readReshape_66/shape*
Tshape0*
_output_shapes	
:?*
T0
c
Reshape_67/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
m

Reshape_67Reshapev/dense/bias/readReshape_67/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_68/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
r

Reshape_68Reshapev/dense_1/kernel/readReshape_68/shape*
_output_shapes	
:? *
T0*
Tshape0
c
Reshape_69/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
o

Reshape_69Reshapev/dense_1/bias/readReshape_69/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_70/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
q

Reshape_70Reshapev/dense_2/kernel/readReshape_70/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_71/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
o

Reshape_71Reshapev/dense_2/bias/readReshape_71/shape*
_output_shapes
:*
Tshape0*
T0
c
Reshape_72/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
l

Reshape_72Reshapebeta1_power/readReshape_72/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_73/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
l

Reshape_73Reshapebeta2_power/readReshape_73/shape*
T0*
_output_shapes
:*
Tshape0
c
Reshape_74/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
u

Reshape_74Reshapev/dense/kernel/Adam/readReshape_74/shape*
Tshape0*
T0*
_output_shapes	
:?
c
Reshape_75/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
w

Reshape_75Reshapev/dense/kernel/Adam_1/readReshape_75/shape*
T0*
_output_shapes	
:?*
Tshape0
c
Reshape_76/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
r

Reshape_76Reshapev/dense/bias/Adam/readReshape_76/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_77/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
t

Reshape_77Reshapev/dense/bias/Adam_1/readReshape_77/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_78/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
w

Reshape_78Reshapev/dense_1/kernel/Adam/readReshape_78/shape*
Tshape0*
_output_shapes	
:? *
T0
c
Reshape_79/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
y

Reshape_79Reshapev/dense_1/kernel/Adam_1/readReshape_79/shape*
_output_shapes	
:? *
Tshape0*
T0
c
Reshape_80/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
t

Reshape_80Reshapev/dense_1/bias/Adam/readReshape_80/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_81/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
v

Reshape_81Reshapev/dense_1/bias/Adam_1/readReshape_81/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_82/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
v

Reshape_82Reshapev/dense_2/kernel/Adam/readReshape_82/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_83/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
x

Reshape_83Reshapev/dense_2/kernel/Adam_1/readReshape_83/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_84/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
t

Reshape_84Reshapev/dense_2/bias/Adam/readReshape_84/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_85/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
v

Reshape_85Reshapev/dense_2/bias/Adam_1/readReshape_85/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_6/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
concat_6ConcatV2
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
Reshape_79
Reshape_80
Reshape_81
Reshape_82
Reshape_83
Reshape_84
Reshape_85concat_6/axis*
N*
_output_shapes

:Ѫ*
T0*

Tidx0
h
PyFunc_2PyFuncconcat_6*
Tout
2*
token
pyfunc_2*
Tin
2*
_output_shapes
:
?
Const_6Const*
dtype0*
_output_shapes
:*?
valuexBv"l@  @      @   ?        @  @      @   @            @  @  @   @         @   @   @   @         
S
split_3/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
?
split_3SplitVPyFunc_2Const_6split_3/split_dim*?
_output_shapesn
l:::::::::::::::::::::::::::*
	num_split*
T0*

Tlen0
a
Reshape_86/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
g

Reshape_86Reshapesplit_3Reshape_86/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_87/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
e

Reshape_87Reshape	split_3:1Reshape_87/shape*
T0*
_output_shapes
:@*
Tshape0
a
Reshape_88/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   @   
i

Reshape_88Reshape	split_3:2Reshape_88/shape*
Tshape0*
_output_shapes

:@@*
T0
Z
Reshape_89/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_89Reshape	split_3:3Reshape_89/shape*
Tshape0*
T0*
_output_shapes
:@
a
Reshape_90/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
i

Reshape_90Reshape	split_3:4Reshape_90/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_91/shapeConst*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_91Reshape	split_3:5Reshape_91/shape*
T0*
Tshape0*
_output_shapes
:
Z
Reshape_92/shapeConst*
_output_shapes
:*
valueB:*
dtype0
e

Reshape_92Reshape	split_3:6Reshape_92/shape*
Tshape0*
_output_shapes
:*
T0
a
Reshape_93/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
i

Reshape_93Reshape	split_3:7Reshape_93/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_94/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
e

Reshape_94Reshape	split_3:8Reshape_94/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_95/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_95Reshape	split_3:9Reshape_95/shape*
_output_shapes

:@@*
Tshape0*
T0
Z
Reshape_96/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
f

Reshape_96Reshape
split_3:10Reshape_96/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_97/shapeConst*
_output_shapes
:*
dtype0*
valueB"@      
j

Reshape_97Reshape
split_3:11Reshape_97/shape*
T0*
_output_shapes

:@*
Tshape0
Z
Reshape_98/shapeConst*
dtype0*
valueB:*
_output_shapes
:
f

Reshape_98Reshape
split_3:12Reshape_98/shape*
T0*
Tshape0*
_output_shapes
:
S
Reshape_99/shapeConst*
_output_shapes
: *
valueB *
dtype0
b

Reshape_99Reshape
split_3:13Reshape_99/shape*
Tshape0*
T0*
_output_shapes
: 
T
Reshape_100/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_100Reshape
split_3:14Reshape_100/shape*
Tshape0*
T0*
_output_shapes
: 
b
Reshape_101/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
l
Reshape_101Reshape
split_3:15Reshape_101/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_102/shapeConst*
dtype0*
valueB"   @   *
_output_shapes
:
l
Reshape_102Reshape
split_3:16Reshape_102/shape*
Tshape0*
_output_shapes

:@*
T0
[
Reshape_103/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_103Reshape
split_3:17Reshape_103/shape*
_output_shapes
:@*
Tshape0*
T0
[
Reshape_104/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
h
Reshape_104Reshape
split_3:18Reshape_104/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_105/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
l
Reshape_105Reshape
split_3:19Reshape_105/shape*
Tshape0*
_output_shapes

:@@*
T0
b
Reshape_106/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
l
Reshape_106Reshape
split_3:20Reshape_106/shape*
_output_shapes

:@@*
T0*
Tshape0
[
Reshape_107/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
h
Reshape_107Reshape
split_3:21Reshape_107/shape*
Tshape0*
_output_shapes
:@*
T0
[
Reshape_108/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
h
Reshape_108Reshape
split_3:22Reshape_108/shape*
_output_shapes
:@*
Tshape0*
T0
b
Reshape_109/shapeConst*
dtype0*
valueB"@      *
_output_shapes
:
l
Reshape_109Reshape
split_3:23Reshape_109/shape*
_output_shapes

:@*
Tshape0*
T0
b
Reshape_110/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_110Reshape
split_3:24Reshape_110/shape*
T0*
_output_shapes

:@*
Tshape0
[
Reshape_111/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_111Reshape
split_3:25Reshape_111/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_112/shapeConst*
valueB:*
_output_shapes
:*
dtype0
h
Reshape_112Reshape
split_3:26Reshape_112/shape*
T0*
Tshape0*
_output_shapes
:
?
	Assign_13Assignpi/dense/kernel
Reshape_86*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes

:@
?
	Assign_14Assignpi/dense/bias
Reshape_87* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
	Assign_15Assignpi/dense_1/kernel
Reshape_88*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel*
use_locking(*
validate_shape(
?
	Assign_16Assignpi/dense_1/bias
Reshape_89*
T0*
use_locking(*
_output_shapes
:@*
validate_shape(*"
_class
loc:@pi/dense_1/bias
?
	Assign_17Assignpi/dense_2/kernel
Reshape_90*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
?
	Assign_18Assignpi/dense_2/bias
Reshape_91*
use_locking(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0
?
	Assign_19Assign
pi/log_std
Reshape_92*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@pi/log_std*
validate_shape(
?
	Assign_20Assignv/dense/kernel
Reshape_93*
_output_shapes

:@*
T0*
validate_shape(*
use_locking(*!
_class
loc:@v/dense/kernel
?
	Assign_21Assignv/dense/bias
Reshape_94*
_class
loc:@v/dense/bias*
_output_shapes
:@*
use_locking(*
T0*
validate_shape(
?
	Assign_22Assignv/dense_1/kernel
Reshape_95*
T0*
validate_shape(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
use_locking(
?
	Assign_23Assignv/dense_1/bias
Reshape_96*
validate_shape(*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
use_locking(
?
	Assign_24Assignv/dense_2/kernel
Reshape_97*
validate_shape(*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel*
use_locking(
?
	Assign_25Assignv/dense_2/bias
Reshape_98*
validate_shape(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
T0*
use_locking(
?
	Assign_26Assignbeta1_power
Reshape_99*
use_locking(*
validate_shape(*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
?
	Assign_27Assignbeta2_powerReshape_100*
_output_shapes
: *
use_locking(*
validate_shape(*
T0*
_class
loc:@v/dense/bias
?
	Assign_28Assignv/dense/kernel/AdamReshape_101*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0*
validate_shape(*
use_locking(
?
	Assign_29Assignv/dense/kernel/Adam_1Reshape_102*
T0*
validate_shape(*!
_class
loc:@v/dense/kernel*
use_locking(*
_output_shapes

:@
?
	Assign_30Assignv/dense/bias/AdamReshape_103*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
T0*
use_locking(
?
	Assign_31Assignv/dense/bias/Adam_1Reshape_104*
_class
loc:@v/dense/bias*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0
?
	Assign_32Assignv/dense_1/kernel/AdamReshape_105*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
	Assign_33Assignv/dense_1/kernel/Adam_1Reshape_106*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@@
?
	Assign_34Assignv/dense_1/bias/AdamReshape_107*
use_locking(*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
validate_shape(
?
	Assign_35Assignv/dense_1/bias/Adam_1Reshape_108*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes
:@
?
	Assign_36Assignv/dense_2/kernel/AdamReshape_109*
use_locking(*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
validate_shape(
?
	Assign_37Assignv/dense_2/kernel/Adam_1Reshape_110*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
use_locking(*
_output_shapes

:@*
T0
?
	Assign_38Assignv/dense_2/bias/AdamReshape_111*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(*
T0
?
	Assign_39Assignv/dense_2/bias/Adam_1Reshape_112*
_output_shapes
:*
use_locking(*!
_class
loc:@v/dense_2/bias*
T0*
validate_shape(
?
group_deps_3NoOp
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
^Assign_37
^Assign_38
^Assign_39
Y
save/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
_output_shapes
: *
dtype0
?
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_716d024c6c4e4e4996734d9411cb3d8b/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1
?
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
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
?
save/RestoreV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*)
dtypes
2*?
_output_shapesn
l:::::::::::::::::::::::::::
?
save/AssignAssignbeta1_powersave/RestoreV2*
_class
loc:@v/dense/bias*
_output_shapes
: *
validate_shape(*
use_locking(*
T0
?
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
validate_shape(*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias*
use_locking(
?
save/Assign_2Assignpi/dense/biassave/RestoreV2:2*
_output_shapes
:@*
use_locking(*
T0*
validate_shape(* 
_class
loc:@pi/dense/bias
?
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
T0*
_output_shapes

:@*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense/kernel
?
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*"
_class
loc:@pi/dense_1/bias*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(
?
save/Assign_5Assignpi/dense_1/kernelsave/RestoreV2:5*
validate_shape(*
T0*$
_class
loc:@pi/dense_1/kernel*
use_locking(*
_output_shapes

:@@
?
save/Assign_6Assignpi/dense_2/biassave/RestoreV2:6*
T0*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
?
save/Assign_7Assignpi/dense_2/kernelsave/RestoreV2:7*$
_class
loc:@pi/dense_2/kernel*
T0*
validate_shape(*
_output_shapes

:@*
use_locking(
?
save/Assign_8Assign
pi/log_stdsave/RestoreV2:8*
use_locking(*
validate_shape(*
T0*
_class
loc:@pi/log_std*
_output_shapes
:
?
save/Assign_9Assignv/dense/biassave/RestoreV2:9*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(*
_output_shapes
:@*
T0
?
save/Assign_10Assignv/dense/bias/Adamsave/RestoreV2:10*
_class
loc:@v/dense/bias*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(
?
save/Assign_11Assignv/dense/bias/Adam_1save/RestoreV2:11*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(*
_class
loc:@v/dense/bias
?
save/Assign_12Assignv/dense/kernelsave/RestoreV2:12*
validate_shape(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
use_locking(*
T0
?
save/Assign_13Assignv/dense/kernel/Adamsave/RestoreV2:13*
validate_shape(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0*
use_locking(
?
save/Assign_14Assignv/dense/kernel/Adam_1save/RestoreV2:14*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel
?
save/Assign_15Assignv/dense_1/biassave/RestoreV2:15*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0*
_output_shapes
:@
?
save/Assign_16Assignv/dense_1/bias/Adamsave/RestoreV2:16*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
validate_shape(*
use_locking(
?
save/Assign_17Assignv/dense_1/bias/Adam_1save/RestoreV2:17*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
use_locking(
?
save/Assign_18Assignv/dense_1/kernelsave/RestoreV2:18*
use_locking(*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
T0
?
save/Assign_19Assignv/dense_1/kernel/Adamsave/RestoreV2:19*
use_locking(*
T0*
validate_shape(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
save/Assign_20Assignv/dense_1/kernel/Adam_1save/RestoreV2:20*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
use_locking(*
validate_shape(
?
save/Assign_21Assignv/dense_2/biassave/RestoreV2:21*
_output_shapes
:*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias*
validate_shape(
?
save/Assign_22Assignv/dense_2/bias/Adamsave/RestoreV2:22*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*!
_class
loc:@v/dense_2/bias
?
save/Assign_23Assignv/dense_2/bias/Adam_1save/RestoreV2:23*!
_class
loc:@v/dense_2/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:
?
save/Assign_24Assignv/dense_2/kernelsave/RestoreV2:24*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
T0*
_output_shapes

:@*
use_locking(
?
save/Assign_25Assignv/dense_2/kernel/Adamsave/RestoreV2:25*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
T0*
use_locking(
?
save/Assign_26Assignv/dense_2/kernel/Adam_1save/RestoreV2:26*#
_class
loc:@v/dense_2/kernel*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
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
dtype0*
shape: *
_output_shapes
: 
?
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_490c40e1eb5e4fafa48bf2a5b44d99b8/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
?
save_1/SaveV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0
?
save_1/SaveV2/shape_and_slicesConst*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*
N*
_output_shapes
:*

axis 
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
?
save_1/RestoreV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0
?
!save_1/RestoreV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*)
dtypes
2*?
_output_shapesn
l:::::::::::::::::::::::::::
?
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
: *
validate_shape(*
T0
?
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
_class
loc:@v/dense/bias*
T0*
use_locking(*
_output_shapes
: *
validate_shape(
?
save_1/Assign_2Assignpi/dense/biassave_1/RestoreV2:2*
validate_shape(*
_output_shapes
:@*
T0* 
_class
loc:@pi/dense/bias*
use_locking(
?
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel*
use_locking(*
validate_shape(
?
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
_output_shapes
:@*
use_locking(*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
T0
?
save_1/Assign_5Assignpi/dense_1/kernelsave_1/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel
?
save_1/Assign_6Assignpi/dense_2/biassave_1/RestoreV2:6*
T0*"
_class
loc:@pi/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(
?
save_1/Assign_7Assignpi/dense_2/kernelsave_1/RestoreV2:7*$
_class
loc:@pi/dense_2/kernel*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(
?
save_1/Assign_8Assign
pi/log_stdsave_1/RestoreV2:8*
_output_shapes
:*
_class
loc:@pi/log_std*
validate_shape(*
T0*
use_locking(
?
save_1/Assign_9Assignv/dense/biassave_1/RestoreV2:9*
_class
loc:@v/dense/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:@
?
save_1/Assign_10Assignv/dense/bias/Adamsave_1/RestoreV2:10*
_class
loc:@v/dense/bias*
T0*
use_locking(*
_output_shapes
:@*
validate_shape(
?
save_1/Assign_11Assignv/dense/bias/Adam_1save_1/RestoreV2:11*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save_1/Assign_12Assignv/dense/kernelsave_1/RestoreV2:12*
use_locking(*
validate_shape(*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
?
save_1/Assign_13Assignv/dense/kernel/Adamsave_1/RestoreV2:13*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel
?
save_1/Assign_14Assignv/dense/kernel/Adam_1save_1/RestoreV2:14*!
_class
loc:@v/dense/kernel*
validate_shape(*
T0*
_output_shapes

:@*
use_locking(
?
save_1/Assign_15Assignv/dense_1/biassave_1/RestoreV2:15*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
use_locking(*
validate_shape(*
T0
?
save_1/Assign_16Assignv/dense_1/bias/Adamsave_1/RestoreV2:16*
use_locking(*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
T0
?
save_1/Assign_17Assignv/dense_1/bias/Adam_1save_1/RestoreV2:17*
use_locking(*
_output_shapes
:@*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0
?
save_1/Assign_18Assignv/dense_1/kernelsave_1/RestoreV2:18*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0*
validate_shape(
?
save_1/Assign_19Assignv/dense_1/kernel/Adamsave_1/RestoreV2:19*
validate_shape(*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel*
use_locking(
?
save_1/Assign_20Assignv/dense_1/kernel/Adam_1save_1/RestoreV2:20*
validate_shape(*
T0*
_output_shapes

:@@*
use_locking(*#
_class
loc:@v/dense_1/kernel
?
save_1/Assign_21Assignv/dense_2/biassave_1/RestoreV2:21*!
_class
loc:@v/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:*
use_locking(
?
save_1/Assign_22Assignv/dense_2/bias/Adamsave_1/RestoreV2:22*
validate_shape(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
use_locking(*
T0
?
save_1/Assign_23Assignv/dense_2/bias/Adam_1save_1/RestoreV2:23*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:*
use_locking(*
validate_shape(
?
save_1/Assign_24Assignv/dense_2/kernelsave_1/RestoreV2:24*#
_class
loc:@v/dense_2/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@
?
save_1/Assign_25Assignv/dense_2/kernel/Adamsave_1/RestoreV2:25*#
_class
loc:@v/dense_2/kernel*
use_locking(*
_output_shapes

:@*
T0*
validate_shape(
?
save_1/Assign_26Assignv/dense_2/kernel/Adam_1save_1/RestoreV2:26*#
_class
loc:@v/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes

:@*
T0
?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
shape: *
_output_shapes
: *
dtype0
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
_output_shapes
: *
shape: *
dtype0
?
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_10e854319b7349598713b605638dd989/part*
_output_shapes
: *
dtype0
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
?
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
?
save_2/SaveV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0
?
save_2/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2
?
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
_output_shapes
: *)
_class
loc:@save_2/ShardedFilename*
T0
?
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*

axis *
N*
_output_shapes
:*
T0
?
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
?
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0
?
save_2/RestoreV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:
?
!save_2/RestoreV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*)
dtypes
2*?
_output_shapesn
l:::::::::::::::::::::::::::
?
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
validate_shape(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: *
use_locking(
?
save_2/Assign_1Assignbeta2_powersave_2/RestoreV2:1*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
?
save_2/Assign_2Assignpi/dense/biassave_2/RestoreV2:2*
_output_shapes
:@*
use_locking(* 
_class
loc:@pi/dense/bias*
validate_shape(*
T0
?
save_2/Assign_3Assignpi/dense/kernelsave_2/RestoreV2:3*
validate_shape(*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
use_locking(
?
save_2/Assign_4Assignpi/dense_1/biassave_2/RestoreV2:4*
T0*"
_class
loc:@pi/dense_1/bias*
use_locking(*
validate_shape(*
_output_shapes
:@
?
save_2/Assign_5Assignpi/dense_1/kernelsave_2/RestoreV2:5*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
validate_shape(*
use_locking(
?
save_2/Assign_6Assignpi/dense_2/biassave_2/RestoreV2:6*
validate_shape(*
use_locking(*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
?
save_2/Assign_7Assignpi/dense_2/kernelsave_2/RestoreV2:7*
_output_shapes

:@*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_2/kernel*
T0
?
save_2/Assign_8Assign
pi/log_stdsave_2/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*
_class
loc:@pi/log_std
?
save_2/Assign_9Assignv/dense/biassave_2/RestoreV2:9*
T0*
validate_shape(*
_class
loc:@v/dense/bias*
use_locking(*
_output_shapes
:@
?
save_2/Assign_10Assignv/dense/bias/Adamsave_2/RestoreV2:10*
use_locking(*
validate_shape(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
?
save_2/Assign_11Assignv/dense/bias/Adam_1save_2/RestoreV2:11*
validate_shape(*
_class
loc:@v/dense/bias*
use_locking(*
_output_shapes
:@*
T0
?
save_2/Assign_12Assignv/dense/kernelsave_2/RestoreV2:12*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
validate_shape(*
use_locking(*
T0
?
save_2/Assign_13Assignv/dense/kernel/Adamsave_2/RestoreV2:13*!
_class
loc:@v/dense/kernel*
use_locking(*
T0*
validate_shape(*
_output_shapes

:@
?
save_2/Assign_14Assignv/dense/kernel/Adam_1save_2/RestoreV2:14*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
T0*
use_locking(
?
save_2/Assign_15Assignv/dense_1/biassave_2/RestoreV2:15*
use_locking(*
_output_shapes
:@*
T0*
validate_shape(*!
_class
loc:@v/dense_1/bias
?
save_2/Assign_16Assignv/dense_1/bias/Adamsave_2/RestoreV2:16*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(*
validate_shape(
?
save_2/Assign_17Assignv/dense_1/bias/Adam_1save_2/RestoreV2:17*
_output_shapes
:@*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(
?
save_2/Assign_18Assignv/dense_1/kernelsave_2/RestoreV2:18*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
T0
?
save_2/Assign_19Assignv/dense_1/kernel/Adamsave_2/RestoreV2:19*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
T0*
use_locking(*
_output_shapes

:@@
?
save_2/Assign_20Assignv/dense_1/kernel/Adam_1save_2/RestoreV2:20*
_output_shapes

:@@*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
use_locking(*
T0
?
save_2/Assign_21Assignv/dense_2/biassave_2/RestoreV2:21*
use_locking(*
validate_shape(*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
?
save_2/Assign_22Assignv/dense_2/bias/Adamsave_2/RestoreV2:22*
use_locking(*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0
?
save_2/Assign_23Assignv/dense_2/bias/Adam_1save_2/RestoreV2:23*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias
?
save_2/Assign_24Assignv/dense_2/kernelsave_2/RestoreV2:24*
validate_shape(*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel*
use_locking(
?
save_2/Assign_25Assignv/dense_2/kernel/Adamsave_2/RestoreV2:25*
validate_shape(*
use_locking(*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
?
save_2/Assign_26Assignv/dense_2/kernel/Adam_1save_2/RestoreV2:26*
validate_shape(*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
use_locking(
?
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
_output_shapes
: *
shape: *
dtype0
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
shape: *
dtype0*
_output_shapes
: 
?
save_3/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_5afcfc5094254e67bb6b7cb497dd8c4d/part
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
S
save_3/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_3/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
?
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
?
save_3/SaveV2/tensor_namesConst*
dtype0*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:
?
save_3/SaveV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2
?
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*)
_class
loc:@save_3/ShardedFilename*
T0*
_output_shapes
: 
?
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*
_output_shapes
:*
N*

axis *
T0
?
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(
?
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
T0*
_output_shapes
: 
?
save_3/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1
?
!save_3/RestoreV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*)
dtypes
2*?
_output_shapesn
l:::::::::::::::::::::::::::
?
save_3/AssignAssignbeta1_powersave_3/RestoreV2*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: *
validate_shape(*
use_locking(
?
save_3/Assign_1Assignbeta2_powersave_3/RestoreV2:1*
validate_shape(*
T0*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
: 
?
save_3/Assign_2Assignpi/dense/biassave_3/RestoreV2:2*
use_locking(*
T0*
_output_shapes
:@* 
_class
loc:@pi/dense/bias*
validate_shape(
?
save_3/Assign_3Assignpi/dense/kernelsave_3/RestoreV2:3*
T0*
_output_shapes

:@*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense/kernel
?
save_3/Assign_4Assignpi/dense_1/biassave_3/RestoreV2:4*
validate_shape(*
T0*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
use_locking(
?
save_3/Assign_5Assignpi/dense_1/kernelsave_3/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
T0*
_output_shapes

:@@*
validate_shape(*
use_locking(
?
save_3/Assign_6Assignpi/dense_2/biassave_3/RestoreV2:6*
_output_shapes
:*
use_locking(*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
T0
?
save_3/Assign_7Assignpi/dense_2/kernelsave_3/RestoreV2:7*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
use_locking(*
validate_shape(*
T0
?
save_3/Assign_8Assign
pi/log_stdsave_3/RestoreV2:8*
use_locking(*
_output_shapes
:*
validate_shape(*
T0*
_class
loc:@pi/log_std
?
save_3/Assign_9Assignv/dense/biassave_3/RestoreV2:9*
T0*
_class
loc:@v/dense/bias*
use_locking(*
_output_shapes
:@*
validate_shape(
?
save_3/Assign_10Assignv/dense/bias/Adamsave_3/RestoreV2:10*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
T0*
use_locking(
?
save_3/Assign_11Assignv/dense/bias/Adam_1save_3/RestoreV2:11*
use_locking(*
validate_shape(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0
?
save_3/Assign_12Assignv/dense/kernelsave_3/RestoreV2:12*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0*
use_locking(*
validate_shape(
?
save_3/Assign_13Assignv/dense/kernel/Adamsave_3/RestoreV2:13*
T0*
validate_shape(*
_output_shapes

:@*
use_locking(*!
_class
loc:@v/dense/kernel
?
save_3/Assign_14Assignv/dense/kernel/Adam_1save_3/RestoreV2:14*
validate_shape(*
use_locking(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0
?
save_3/Assign_15Assignv/dense_1/biassave_3/RestoreV2:15*!
_class
loc:@v/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:@
?
save_3/Assign_16Assignv/dense_1/bias/Adamsave_3/RestoreV2:16*!
_class
loc:@v/dense_1/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:@
?
save_3/Assign_17Assignv/dense_1/bias/Adam_1save_3/RestoreV2:17*
T0*
validate_shape(*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@
?
save_3/Assign_18Assignv/dense_1/kernelsave_3/RestoreV2:18*
T0*
use_locking(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(
?
save_3/Assign_19Assignv/dense_1/kernel/Adamsave_3/RestoreV2:19*
validate_shape(*
T0*
use_locking(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
?
save_3/Assign_20Assignv/dense_1/kernel/Adam_1save_3/RestoreV2:20*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
T0*
use_locking(
?
save_3/Assign_21Assignv/dense_2/biassave_3/RestoreV2:21*
_output_shapes
:*
use_locking(*!
_class
loc:@v/dense_2/bias*
validate_shape(*
T0
?
save_3/Assign_22Assignv/dense_2/bias/Adamsave_3/RestoreV2:22*
use_locking(*!
_class
loc:@v/dense_2/bias*
T0*
validate_shape(*
_output_shapes
:
?
save_3/Assign_23Assignv/dense_2/bias/Adam_1save_3/RestoreV2:23*!
_class
loc:@v/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
?
save_3/Assign_24Assignv/dense_2/kernelsave_3/RestoreV2:24*#
_class
loc:@v/dense_2/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes

:@
?
save_3/Assign_25Assignv/dense_2/kernel/Adamsave_3/RestoreV2:25*
use_locking(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
validate_shape(*
T0
?
save_3/Assign_26Assignv/dense_2/kernel/Adam_1save_3/RestoreV2:26*#
_class
loc:@v/dense_2/kernel*
T0*
validate_shape(*
_output_shapes

:@*
use_locking(
?
save_3/restore_shardNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
shape: *
_output_shapes
: *
dtype0
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
shape: *
_output_shapes
: *
dtype0
?
save_4/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_27f48a5d9c984619943fe0d50143dedc/part*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_4/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_4/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
?
save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
?
save_4/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1
?
save_4/SaveV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2
?
save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*)
_class
loc:@save_4/ShardedFilename*
T0*
_output_shapes
: 
?
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*

axis *
N*
_output_shapes
:*
T0
?
save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(
?
save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
_output_shapes
: *
T0
?
save_4/RestoreV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:
?
!save_4/RestoreV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*?
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2
?
save_4/AssignAssignbeta1_powersave_4/RestoreV2*
validate_shape(*
_class
loc:@v/dense/bias*
T0*
use_locking(*
_output_shapes
: 
?
save_4/Assign_1Assignbeta2_powersave_4/RestoreV2:1*
validate_shape(*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias*
use_locking(
?
save_4/Assign_2Assignpi/dense/biassave_4/RestoreV2:2* 
_class
loc:@pi/dense/bias*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(
?
save_4/Assign_3Assignpi/dense/kernelsave_4/RestoreV2:3*
T0*
validate_shape(*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
use_locking(
?
save_4/Assign_4Assignpi/dense_1/biassave_4/RestoreV2:4*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
use_locking(*
T0
?
save_4/Assign_5Assignpi/dense_1/kernelsave_4/RestoreV2:5*
T0*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
use_locking(
?
save_4/Assign_6Assignpi/dense_2/biassave_4/RestoreV2:6*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
?
save_4/Assign_7Assignpi/dense_2/kernelsave_4/RestoreV2:7*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
T0*
_output_shapes

:@
?
save_4/Assign_8Assign
pi/log_stdsave_4/RestoreV2:8*
_class
loc:@pi/log_std*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
?
save_4/Assign_9Assignv/dense/biassave_4/RestoreV2:9*
_class
loc:@v/dense/bias*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(
?
save_4/Assign_10Assignv/dense/bias/Adamsave_4/RestoreV2:10*
use_locking(*
_class
loc:@v/dense/bias*
validate_shape(*
T0*
_output_shapes
:@
?
save_4/Assign_11Assignv/dense/bias/Adam_1save_4/RestoreV2:11*
use_locking(*
_class
loc:@v/dense/bias*
T0*
validate_shape(*
_output_shapes
:@
?
save_4/Assign_12Assignv/dense/kernelsave_4/RestoreV2:12*
use_locking(*
validate_shape(*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
?
save_4/Assign_13Assignv/dense/kernel/Adamsave_4/RestoreV2:13*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
validate_shape(*
T0*
use_locking(
?
save_4/Assign_14Assignv/dense/kernel/Adam_1save_4/RestoreV2:14*
validate_shape(*
T0*
_output_shapes

:@*
use_locking(*!
_class
loc:@v/dense/kernel
?
save_4/Assign_15Assignv/dense_1/biassave_4/RestoreV2:15*
_output_shapes
:@*
validate_shape(*
T0*
use_locking(*!
_class
loc:@v/dense_1/bias
?
save_4/Assign_16Assignv/dense_1/bias/Adamsave_4/RestoreV2:16*
_output_shapes
:@*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0*
use_locking(
?
save_4/Assign_17Assignv/dense_1/bias/Adam_1save_4/RestoreV2:17*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias
?
save_4/Assign_18Assignv/dense_1/kernelsave_4/RestoreV2:18*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
?
save_4/Assign_19Assignv/dense_1/kernel/Adamsave_4/RestoreV2:19*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
?
save_4/Assign_20Assignv/dense_1/kernel/Adam_1save_4/RestoreV2:20*
_output_shapes

:@@*
validate_shape(*
T0*
use_locking(*#
_class
loc:@v/dense_1/kernel
?
save_4/Assign_21Assignv/dense_2/biassave_4/RestoreV2:21*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
validate_shape(*
use_locking(*
T0
?
save_4/Assign_22Assignv/dense_2/bias/Adamsave_4/RestoreV2:22*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
save_4/Assign_23Assignv/dense_2/bias/Adam_1save_4/RestoreV2:23*!
_class
loc:@v/dense_2/bias*
T0*
use_locking(*
validate_shape(*
_output_shapes
:
?
save_4/Assign_24Assignv/dense_2/kernelsave_4/RestoreV2:24*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
validate_shape(*
use_locking(
?
save_4/Assign_25Assignv/dense_2/kernel/Adamsave_4/RestoreV2:25*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
?
save_4/Assign_26Assignv/dense_2/kernel/Adam_1save_4/RestoreV2:26*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
?
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_3^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
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
shape: *
dtype0*
_output_shapes
: 
i
save_5/ConstPlaceholderWithDefaultsave_5/filename*
dtype0*
shape: *
_output_shapes
: 
?
save_5/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_213b3141ae624c7dac88e9009d0c0b3b/part*
dtype0
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_5/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_5/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0
?
save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards*
_output_shapes
: 
?
save_5/SaveV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:
?
save_5/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2
?
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2*)
_class
loc:@save_5/ShardedFilename*
T0*
_output_shapes
: 
?
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency*
T0*
N*
_output_shapes
:*

axis 
?
save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const*
delete_old_dirs(
?
save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency*
_output_shapes
: *
T0
?
save_5/RestoreV2/tensor_namesConst*?
value?B?Bbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0
?
!save_5/RestoreV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*)
dtypes
2*?
_output_shapesn
l:::::::::::::::::::::::::::
?
save_5/AssignAssignbeta1_powersave_5/RestoreV2*
_class
loc:@v/dense/bias*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
?
save_5/Assign_1Assignbeta2_powersave_5/RestoreV2:1*
T0*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(*
_output_shapes
: 
?
save_5/Assign_2Assignpi/dense/biassave_5/RestoreV2:2* 
_class
loc:@pi/dense/bias*
use_locking(*
validate_shape(*
_output_shapes
:@*
T0
?
save_5/Assign_3Assignpi/dense/kernelsave_5/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
use_locking(*
validate_shape(*
_output_shapes

:@*
T0
?
save_5/Assign_4Assignpi/dense_1/biassave_5/RestoreV2:4*
use_locking(*
validate_shape(*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
?
save_5/Assign_5Assignpi/dense_1/kernelsave_5/RestoreV2:5*
T0*
validate_shape(*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel*
use_locking(
?
save_5/Assign_6Assignpi/dense_2/biassave_5/RestoreV2:6*
validate_shape(*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
?
save_5/Assign_7Assignpi/dense_2/kernelsave_5/RestoreV2:7*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
use_locking(*
validate_shape(*
T0
?
save_5/Assign_8Assign
pi/log_stdsave_5/RestoreV2:8*
T0*
_class
loc:@pi/log_std*
_output_shapes
:*
validate_shape(*
use_locking(
?
save_5/Assign_9Assignv/dense/biassave_5/RestoreV2:9*
T0*
validate_shape(*
_class
loc:@v/dense/bias*
_output_shapes
:@*
use_locking(
?
save_5/Assign_10Assignv/dense/bias/Adamsave_5/RestoreV2:10*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
?
save_5/Assign_11Assignv/dense/bias/Adam_1save_5/RestoreV2:11*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(*
T0*
validate_shape(
?
save_5/Assign_12Assignv/dense/kernelsave_5/RestoreV2:12*!
_class
loc:@v/dense/kernel*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(
?
save_5/Assign_13Assignv/dense/kernel/Adamsave_5/RestoreV2:13*
use_locking(*
_output_shapes

:@*
validate_shape(*
T0*!
_class
loc:@v/dense/kernel
?
save_5/Assign_14Assignv/dense/kernel/Adam_1save_5/RestoreV2:14*
validate_shape(*
use_locking(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0
?
save_5/Assign_15Assignv/dense_1/biassave_5/RestoreV2:15*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias
?
save_5/Assign_16Assignv/dense_1/bias/Adamsave_5/RestoreV2:16*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
validate_shape(*
use_locking(
?
save_5/Assign_17Assignv/dense_1/bias/Adam_1save_5/RestoreV2:17*
_output_shapes
:@*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0
?
save_5/Assign_18Assignv/dense_1/kernelsave_5/RestoreV2:18*
_output_shapes

:@@*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
use_locking(*
T0
?
save_5/Assign_19Assignv/dense_1/kernel/Adamsave_5/RestoreV2:19*
use_locking(*
T0*
validate_shape(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
save_5/Assign_20Assignv/dense_1/kernel/Adam_1save_5/RestoreV2:20*#
_class
loc:@v/dense_1/kernel*
T0*
use_locking(*
_output_shapes

:@@*
validate_shape(
?
save_5/Assign_21Assignv/dense_2/biassave_5/RestoreV2:21*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias
?
save_5/Assign_22Assignv/dense_2/bias/Adamsave_5/RestoreV2:22*!
_class
loc:@v/dense_2/bias*
validate_shape(*
use_locking(*
_output_shapes
:*
T0
?
save_5/Assign_23Assignv/dense_2/bias/Adam_1save_5/RestoreV2:23*
_output_shapes
:*
validate_shape(*!
_class
loc:@v/dense_2/bias*
use_locking(*
T0
?
save_5/Assign_24Assignv/dense_2/kernelsave_5/RestoreV2:24*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(
?
save_5/Assign_25Assignv/dense_2/kernel/Adamsave_5/RestoreV2:25*
validate_shape(*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
use_locking(
?
save_5/Assign_26Assignv/dense_2/kernel/Adam_1save_5/RestoreV2:26*#
_class
loc:@v/dense_2/kernel*
use_locking(*
T0*
_output_shapes

:@*
validate_shape(
?
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_21^save_5/Assign_22^save_5/Assign_23^save_5/Assign_24^save_5/Assign_25^save_5/Assign_26^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard "?B
save_5/Const:0save_5/Identity:0save_5/restore_all (5 @F8"?
trainable_variables??
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
R
pi/log_std:0pi/log_std/Assignpi/log_std/read:02pi/log_std/initial_value:08
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
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08"?
	variables??
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
R
pi/log_std:0pi/log_std/Assignpi/log_std/read:02pi/log_std/initial_value:08
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
?
v/dense/kernel/Adam_1:0v/dense/kernel/Adam_1/Assignv/dense/kernel/Adam_1/read:02)v/dense/kernel/Adam_1/Initializer/zeros:0
p
v/dense/bias/Adam:0v/dense/bias/Adam/Assignv/dense/bias/Adam/read:02%v/dense/bias/Adam/Initializer/zeros:0
x
v/dense/bias/Adam_1:0v/dense/bias/Adam_1/Assignv/dense/bias/Adam_1/read:02'v/dense/bias/Adam_1/Initializer/zeros:0
?
v/dense_1/kernel/Adam:0v/dense_1/kernel/Adam/Assignv/dense_1/kernel/Adam/read:02)v/dense_1/kernel/Adam/Initializer/zeros:0
?
v/dense_1/kernel/Adam_1:0v/dense_1/kernel/Adam_1/Assignv/dense_1/kernel/Adam_1/read:02+v/dense_1/kernel/Adam_1/Initializer/zeros:0
x
v/dense_1/bias/Adam:0v/dense_1/bias/Adam/Assignv/dense_1/bias/Adam/read:02'v/dense_1/bias/Adam/Initializer/zeros:0
?
v/dense_1/bias/Adam_1:0v/dense_1/bias/Adam_1/Assignv/dense_1/bias/Adam_1/read:02)v/dense_1/bias/Adam_1/Initializer/zeros:0
?
v/dense_2/kernel/Adam:0v/dense_2/kernel/Adam/Assignv/dense_2/kernel/Adam/read:02)v/dense_2/kernel/Adam/Initializer/zeros:0
?
v/dense_2/kernel/Adam_1:0v/dense_2/kernel/Adam_1/Assignv/dense_2/kernel/Adam_1/read:02+v/dense_2/kernel/Adam_1/Initializer/zeros:0
x
v/dense_2/bias/Adam:0v/dense_2/bias/Adam/Assignv/dense_2/bias/Adam/read:02'v/dense_2/bias/Adam/Initializer/zeros:0
?
v/dense_2/bias/Adam_1:0v/dense_2/bias/Adam_1/Assignv/dense_2/bias/Adam_1/read:02)v/dense_2/bias/Adam_1/Initializer/zeros:0"
train_op

Adam*?
serving_default?
)
x$
Placeholder:0?????????#
v
v/Squeeze:0?????????%
pi
pi/add:0?????????tensorflow/serving/predict