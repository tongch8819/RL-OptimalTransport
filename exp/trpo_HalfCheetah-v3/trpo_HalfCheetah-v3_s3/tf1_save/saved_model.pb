Ѕ
З''
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
ю
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

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
і
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
Ttype"serve*1.15.52v1.15.4-39-g3db52beта
n
PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ
p
Placeholder_1Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
h
Placeholder_2Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_3Placeholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0
h
Placeholder_4Placeholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0
Ѕ
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@pi/dense/kernel*
valueB"   @   *
dtype0

.pi/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *HYО*
dtype0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

.pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *HY>*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
ю
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
seed2*
T0*

seed
к
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@pi/dense/kernel*
_output_shapes
: *
T0
ь
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel
о
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes

:@
Ї
pi/dense/kernel
VariableV2*
shared_name *"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
	container *
shape
:@*
dtype0
г
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@pi/dense/kernel*
T0*
use_locking(*
_output_shapes

:@
~
pi/dense/kernel/readIdentitypi/dense/kernel*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
T0

pi/dense/bias/Initializer/zerosConst*
_output_shapes
:@*
valueB@*    * 
_class
loc:@pi/dense/bias*
dtype0

pi/dense/bias
VariableV2*
shape:@*
	container *
_output_shapes
:@*
shared_name * 
_class
loc:@pi/dense/bias*
dtype0
О
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
T0*
_output_shapes
:@*
validate_shape(*
use_locking(* 
_class
loc:@pi/dense/bias
t
pi/dense/bias/readIdentitypi/dense/bias* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
T0

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
transpose_b( *
transpose_a( *'
_output_shapes
:џџџџџџџџџ@*
T0

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ@
Y
pi/dense/TanhTanhpi/dense/BiasAdd*'
_output_shapes
:џџџџџџџџџ@*
T0
Љ
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*$
_class
loc:@pi/dense_1/kernel*
valueB"@   @   

0pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *зГ]О*
dtype0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel*
valueB
 *зГ]>
є
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*$
_class
loc:@pi/dense_1/kernel*

seed*
T0*
seed2*
dtype0*
_output_shapes

:@@
т
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_1/kernel*
T0*
_output_shapes
: 
є
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
ц
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Ћ
pi/dense_1/kernel
VariableV2*
	container *
dtype0*
shared_name *
_output_shapes

:@@*
shape
:@@*$
_class
loc:@pi/dense_1/kernel
л
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@

!pi/dense_1/bias/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
dtype0*
valueB@*    

pi/dense_1/bias
VariableV2*
dtype0*
shape:@*
shared_name *
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
	container 
Ц
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
T0

pi/dense_1/MatMulMatMulpi/dense/Tanhpi/dense_1/kernel/read*
transpose_a( *
transpose_b( *'
_output_shapes
:џџџџџџџџџ@*
T0

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ@
]
pi/dense_1/TanhTanhpi/dense_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ@
Љ
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *$
_class
loc:@pi/dense_2/kernel*
_output_shapes
:*
dtype0

0pi/dense_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: *
valueB
 *єхО*
dtype0

0pi/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*$
_class
loc:@pi/dense_2/kernel*
valueB
 *єх>*
_output_shapes
: 
є
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*

seed*$
_class
loc:@pi/dense_2/kernel*
seed2**
T0*
_output_shapes

:@*
dtype0
т
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
T0*
_output_shapes
: 
є
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
ц
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
T0
Ћ
pi/dense_2/kernel
VariableV2*
_output_shapes

:@*
dtype0*
shared_name *
shape
:@*
	container *$
_class
loc:@pi/dense_2/kernel
л
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(*$
_class
loc:@pi/dense_2/kernel

pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@

!pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*"
_class
loc:@pi/dense_2/bias*
valueB*    

pi/dense_2/bias
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
shape:
Ц
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias

pi/dense_2/MatMulMatMulpi/dense_1/Tanhpi/dense_2/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( *
transpose_a( 

pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
y
pi/log_std/initial_valueConst*
dtype0*
_output_shapes
:*-
value$B""   П   П   П   П   П   П
v

pi/log_std
VariableV2*
shape:*
	container *
dtype0*
_output_shapes
:*
shared_name 
Ў
pi/log_std/AssignAssign
pi/log_stdpi/log_std/initial_value*
validate_shape(*
_class
loc:@pi/log_std*
_output_shapes
:*
use_locking(*
T0
k
pi/log_std/readIdentity
pi/log_std*
_class
loc:@pi/log_std*
T0*
_output_shapes
:
C
pi/ExpExppi/log_std/read*
T0*
_output_shapes
:
Z
pi/ShapeShapepi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
Z
pi/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
\
pi/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

%pi/random_normal/RandomStandardNormalRandomStandardNormalpi/Shape*
dtype0*
seed2?*
T0*'
_output_shapes
:џџџџџџџџџ*

seed

pi/random_normal/mulMul%pi/random_normal/RandomStandardNormalpi/random_normal/stddev*
T0*'
_output_shapes
:џџџџџџџџџ
v
pi/random_normalAddpi/random_normal/mulpi/random_normal/mean*
T0*'
_output_shapes
:џџџџџџџџџ
Y
pi/mulMulpi/random_normalpi/Exp*'
_output_shapes
:џџџџџџџџџ*
T0
]
pi/addAddV2pi/dense_2/BiasAddpi/mul*'
_output_shapes
:џџџџџџџџџ*
T0
b
pi/subSubPlaceholder_1pi/dense_2/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
E
pi/Exp_1Exppi/log_std/read*
_output_shapes
:*
T0
O

pi/add_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
L
pi/add_1AddV2pi/Exp_1
pi/add_1/y*
T0*
_output_shapes
:
Y

pi/truedivRealDivpi/subpi/add_1*
T0*'
_output_shapes
:џџџџџџџџџ
M
pi/pow/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0
U
pi/powPow
pi/truedivpi/pow/y*'
_output_shapes
:џџџџџџџџџ*
T0
O

pi/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
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
:џџџџџџџџџ
O

pi/add_3/yConst*
valueB
 *?ы?*
_output_shapes
: *
dtype0
Y
pi/add_3AddV2pi/add_2
pi/add_3/y*'
_output_shapes
:џџџџџџџџџ*
T0
O

pi/mul_2/xConst*
dtype0*
valueB
 *   П*
_output_shapes
: 
W
pi/mul_2Mul
pi/mul_2/xpi/add_3*'
_output_shapes
:џџџџџџџџџ*
T0
Z
pi/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
|
pi/SumSumpi/mul_2pi/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
]
pi/sub_1Subpi/addpi/dense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
E
pi/Exp_2Exppi/log_std/read*
T0*
_output_shapes
:
O

pi/add_4/yConst*
dtype0*
valueB
 *wЬ+2*
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
:џџџџџџџџџ*
T0
O

pi/pow_1/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
[
pi/pow_1Powpi/truediv_1
pi/pow_1/y*'
_output_shapes
:џџџџџџџџџ*
T0
O

pi/mul_3/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
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
:џџџџџџџџџ
O

pi/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *?ы?
Y
pi/add_6AddV2pi/add_5
pi/add_6/y*'
_output_shapes
:џџџџџџџџџ*
T0
O

pi/mul_4/xConst*
_output_shapes
: *
valueB
 *   П*
dtype0
W
pi/mul_4Mul
pi/mul_4/xpi/add_6*
T0*'
_output_shapes
:џџџџџџџџџ
\
pi/Sum_1/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0

pi/Sum_1Sumpi/mul_4pi/Sum_1/reduction_indices*
	keep_dims( *#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
q
pi/PlaceholderPlaceholder*
shape:џџџџџџџџџ*'
_output_shapes
:џџџџџџџџџ*
dtype0
s
pi/Placeholder_1Placeholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
O

pi/mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Q
pi/mul_5Mul
pi/mul_5/xpi/log_std/read*
_output_shapes
:*
T0
>
pi/Exp_3Exppi/mul_5*
_output_shapes
:*
T0
O

pi/mul_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
_
pi/mul_6Mul
pi/mul_6/xpi/Placeholder_1*'
_output_shapes
:џџџџџџџџџ*
T0
K
pi/Exp_4Exppi/mul_6*'
_output_shapes
:џџџџџџџџџ*
T0
e
pi/sub_2Subpi/Placeholderpi/dense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
O

pi/pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
W
pi/pow_2Powpi/sub_2
pi/pow_2/y*'
_output_shapes
:џџџџџџџџџ*
T0
W
pi/add_7AddV2pi/pow_2pi/Exp_3*
T0*'
_output_shapes
:џџџџџџџџџ
O

pi/add_8/yConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
Y
pi/add_8AddV2pi/Exp_4
pi/add_8/y*'
_output_shapes
:џџџџџџџџџ*
T0
]
pi/truediv_2RealDivpi/add_7pi/add_8*'
_output_shapes
:џџџџџџџџџ*
T0
O

pi/sub_3/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
pi/sub_3Subpi/truediv_2
pi/sub_3/y*
T0*'
_output_shapes
:џџџџџџџџџ
O

pi/mul_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
W
pi/mul_7Mul
pi/mul_7/xpi/sub_3*'
_output_shapes
:џџџџџџџџџ*
T0
_
pi/add_9AddV2pi/mul_7pi/Placeholder_1*'
_output_shapes
:џџџџџџџџџ*
T0
\
pi/sub_4Subpi/add_9pi/log_std/read*
T0*'
_output_shapes
:џџџџџџџџџ
\
pi/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :

pi/Sum_2Sumpi/sub_4pi/Sum_2/reduction_indices*

Tidx0*
T0*
	keep_dims( *#
_output_shapes
:џџџџџџџџџ
R
pi/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
a
pi/MeanMeanpi/Sum_2pi/Const*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
Ѓ
/v/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*!
_class
loc:@v/dense/kernel*
valueB"   @   *
dtype0

-v/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
dtype0*!
_class
loc:@v/dense/kernel*
valueB
 *HYО

-v/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *HY>*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
ь
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*

seed*
_output_shapes

:@*
seed2*!
_class
loc:@v/dense/kernel*
dtype0*
T0
ж
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *!
_class
loc:@v/dense/kernel
ш
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
к
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
Ѕ
v/dense/kernel
VariableV2*
_output_shapes

:@*
shared_name *!
_class
loc:@v/dense/kernel*
shape
:@*
dtype0*
	container 
Я
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
{
v/dense/kernel/readIdentityv/dense/kernel*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0

v/dense/bias/Initializer/zerosConst*
dtype0*
valueB@*    *
_output_shapes
:@*
_class
loc:@v/dense/bias

v/dense/bias
VariableV2*
dtype0*
	container *
shared_name *
_class
loc:@v/dense/bias*
shape:@*
_output_shapes
:@
К
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
q
v/dense/bias/readIdentityv/dense/bias*
T0*
_output_shapes
:@*
_class
loc:@v/dense/bias

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
transpose_b( *
transpose_a( *'
_output_shapes
:џџџџџџџџџ@*
T0

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџ@
W
v/dense/TanhTanhv/dense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ@
Ї
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"@   @   *
_output_shapes
:*#
_class
loc:@v/dense_1/kernel

/v/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
dtype0*
valueB
 *зГ]О

/v/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *зГ]>*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: *
dtype0
ђ
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
seed2*

seed*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
dtype0*
T0
о
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
№
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
т
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Љ
v/dense_1/kernel
VariableV2*
dtype0*
shape
:@@*#
_class
loc:@v/dense_1/kernel*
shared_name *
_output_shapes

:@@*
	container 
з
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*#
_class
loc:@v/dense_1/kernel*
T0*
use_locking(*
validate_shape(*
_output_shapes

:@@
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
valueB@*    *
dtype0*!
_class
loc:@v/dense_1/bias

v/dense_1/bias
VariableV2*
dtype0*
shared_name *
shape:@*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
	container 
Т
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
use_locking(*
T0
w
v/dense_1/bias/readIdentityv/dense_1/bias*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0

v/dense_1/MatMulMatMulv/dense/Tanhv/dense_1/kernel/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:џџџџџџџџџ@

v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*'
_output_shapes
:џџџџџџџџџ@*
data_formatNHWC
[
v/dense_1/TanhTanhv/dense_1/BiasAdd*'
_output_shapes
:џџџџџџџџџ@*
T0
Ї
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_2/kernel*
valueB"@      

/v/dense_2/kernel/Initializer/random_uniform/minConst*#
_class
loc:@v/dense_2/kernel*
dtype0*
valueB
 *О*
_output_shapes
: 

/v/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*#
_class
loc:@v/dense_2/kernel*
valueB
 *>*
_output_shapes
: 
ђ
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
T0*
seed2Ђ*
dtype0*
_output_shapes

:@*

seed*#
_class
loc:@v/dense_2/kernel
о
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes
: 
№
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
т
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
Љ
v/dense_2/kernel
VariableV2*#
_class
loc:@v/dense_2/kernel*
shared_name *
dtype0*
_output_shapes

:@*
	container *
shape
:@
з
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*#
_class
loc:@v/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes

:@*
T0

v/dense_2/kernel/readIdentityv/dense_2/kernel*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@

 v/dense_2/bias/Initializer/zerosConst*
dtype0*
valueB*    *!
_class
loc:@v/dense_2/bias*
_output_shapes
:

v/dense_2/bias
VariableV2*
	container *!
_class
loc:@v/dense_2/bias*
shape:*
dtype0*
shared_name *
_output_shapes
:
Т
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*!
_class
loc:@v/dense_2/bias
w
v/dense_2/bias/readIdentityv/dense_2/bias*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:

v/dense_2/MatMulMatMulv/dense_1/Tanhv/dense_2/kernel/read*
transpose_a( *
transpose_b( *'
_output_shapes
:џџџџџџџџџ*
T0

v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
l
	v/SqueezeSqueezev/dense_2/BiasAdd*#
_output_shapes
:џџџџџџџџџ*
T0*
squeeze_dims

O
subSubpi/SumPlaceholder_4*#
_output_shapes
:џџџџџџџџџ*
T0
=
ExpExpsub*
T0*#
_output_shapes
:џџџџџџџџџ
L
mulMulExpPlaceholder_2*#
_output_shapes
:џџџџџџџџџ*
T0
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
V
MeanMeanmulConst*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
1
NegNegMean*
_output_shapes
: *
T0
T
sub_1SubPlaceholder_3	v/Squeeze*#
_output_shapes
:џџџџџџџџџ*
T0
J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
F
powPowsub_1pow/y*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_1Const*
_output_shapes
:*
valueB: *
dtype0
Z
Mean_1MeanpowConst_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
X
gradients/grad_ys_0Const*
dtype0*
valueB
 *  ?*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
^
gradients/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:

gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*

Tmultiples0
`
gradients/Mean_1_grad/Shape_1Shapepow*
_output_shapes
:*
T0*
out_type0
`
gradients/Mean_1_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
e
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
g
gradients/Mean_1_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
 
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
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

SrcT0*
_output_shapes
: *
Truncate( *

DstT0

gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
]
gradients/pow_grad/ShapeShapesub_1*
T0*
_output_shapes
:*
out_type0
]
gradients/pow_grad/Shape_1Shapepow/y*
out_type0*
T0*
_output_shapes
: 
Д
(gradients/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_grad/Shapegradients/pow_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
q
gradients/pow_grad/mulMulgradients/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:џџџџџџџџџ
]
gradients/pow_grad/sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
_
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
T0*
_output_shapes
: 
j
gradients/pow_grad/PowPowsub_1gradients/pow_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0
}
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*
T0*#
_output_shapes
:џџџџџџџџџ
Ё
gradients/pow_grad/SumSumgradients/pow_grad/mul_1(gradients/pow_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sumgradients/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
a
gradients/pow_grad/Greater/yConst*
valueB
 *    *
_output_shapes
: *
dtype0
x
gradients/pow_grad/GreaterGreatersub_1gradients/pow_grad/Greater/y*#
_output_shapes
:џџџџџџџџџ*
T0
g
"gradients/pow_grad/ones_like/ShapeShapesub_1*
out_type0*
T0*
_output_shapes
:
g
"gradients/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ќ
gradients/pow_grad/ones_likeFill"gradients/pow_grad/ones_like/Shape"gradients/pow_grad/ones_like/Const*#
_output_shapes
:џџџџџџџџџ*
T0*

index_type0

gradients/pow_grad/SelectSelectgradients/pow_grad/Greatersub_1gradients/pow_grad/ones_like*#
_output_shapes
:џџџџџџџџџ*
T0
f
gradients/pow_grad/LogLoggradients/pow_grad/Select*#
_output_shapes
:џџџџџџџџџ*
T0
_
gradients/pow_grad/zeros_like	ZerosLikesub_1*#
_output_shapes
:џџџџџџџџџ*
T0
І
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*#
_output_shapes
:џџџџџџџџџ*
T0
q
gradients/pow_grad/mul_2Mulgradients/Mean_1_grad/truedivpow*#
_output_shapes
:џџџџџџџџџ*
T0

gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select_1*#
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
gradients/pow_grad/Sum_1Sumgradients/pow_grad/mul_3*gradients/pow_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/pow_grad/Reshape_1Reshapegradients/pow_grad/Sum_1gradients/pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/pow_grad/tuple/group_depsNoOp^gradients/pow_grad/Reshape^gradients/pow_grad/Reshape_1
ж
+gradients/pow_grad/tuple/control_dependencyIdentitygradients/pow_grad/Reshape$^gradients/pow_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*-
_class#
!loc:@gradients/pow_grad/Reshape*
T0
Я
-gradients/pow_grad/tuple/control_dependency_1Identitygradients/pow_grad/Reshape_1$^gradients/pow_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/pow_grad/Reshape_1
g
gradients/sub_1_grad/ShapeShapePlaceholder_3*
T0*
_output_shapes
:*
out_type0
e
gradients/sub_1_grad/Shape_1Shape	v/Squeeze*
_output_shapes
:*
T0*
out_type0
К
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
И
gradients/sub_1_grad/SumSum+gradients/pow_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*
Tshape0
z
gradients/sub_1_grad/NegNeg+gradients/pow_grad/tuple/control_dependency*
T0*#
_output_shapes
:џџџџџџџџџ
Љ
gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
о
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
T0
ф
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
o
gradients/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
_output_shapes
:*
out_type0*
T0
М
 gradients/v/Squeeze_grad/ReshapeReshape/gradients/sub_1_grad/tuple/control_dependency_1gradients/v/Squeeze_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0

,gradients/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/v/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:

1gradients/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp!^gradients/v/Squeeze_grad/Reshape-^gradients/v/dense_2/BiasAdd_grad/BiasAddGrad

9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity gradients/v/Squeeze_grad/Reshape2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*3
_class)
'%loc:@gradients/v/Squeeze_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0

;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_2/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*?
_class5
31loc:@gradients/v/dense_2/BiasAdd_grad/BiasAddGrad*
T0
к
&gradients/v/dense_2/MatMul_grad/MatMulMatMul9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ@*
transpose_b(
Ь
(gradients/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Tanh9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:@*
T0

0gradients/v/dense_2/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_2/MatMul_grad/MatMul)^gradients/v/dense_2/MatMul_grad/MatMul_1

8gradients/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_2/MatMul_grad/MatMul1^gradients/v/dense_2/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ@*9
_class/
-+loc:@gradients/v/dense_2/MatMul_grad/MatMul

:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_2/MatMul_grad/MatMul_11^gradients/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*;
_class1
/-loc:@gradients/v/dense_2/MatMul_grad/MatMul_1
Ў
&gradients/v/dense_1/Tanh_grad/TanhGradTanhGradv/dense_1/Tanh8gradients/v/dense_2/MatMul_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ@*
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
9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/Tanh_grad/TanhGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*9
_class/
-+loc:@gradients/v/dense_1/Tanh_grad/TanhGrad*
T0*'
_output_shapes
:џџџџџџџџџ@

;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_1/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*?
_class5
31loc:@gradients/v/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
к
&gradients/v/dense_1/MatMul_grad/MatMulMatMul9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ@*
transpose_b(
Ъ
(gradients/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Tanh9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@@*
transpose_b( *
T0

0gradients/v/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_1/MatMul_grad/MatMul)^gradients/v/dense_1/MatMul_grad/MatMul_1

8gradients/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/MatMul_grad/MatMul1^gradients/v/dense_1/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ@*9
_class/
-+loc:@gradients/v/dense_1/MatMul_grad/MatMul

:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_1/MatMul_grad/MatMul_11^gradients/v/dense_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/v/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@@
Њ
$gradients/v/dense/Tanh_grad/TanhGradTanhGradv/dense/Tanh8gradients/v/dense_1/MatMul_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ@

*gradients/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/v/dense/Tanh_grad/TanhGrad*
_output_shapes
:@*
T0*
data_formatNHWC

/gradients/v/dense/BiasAdd_grad/tuple/group_depsNoOp+^gradients/v/dense/BiasAdd_grad/BiasAddGrad%^gradients/v/dense/Tanh_grad/TanhGrad

7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/v/dense/Tanh_grad/TanhGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*7
_class-
+)loc:@gradients/v/dense/Tanh_grad/TanhGrad*'
_output_shapes
:џџџџџџџџџ@*
T0

9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/v/dense/BiasAdd_grad/BiasAddGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
д
$gradients/v/dense/MatMul_grad/MatMulMatMul7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
transpose_a( *
transpose_b(*'
_output_shapes
:џџџџџџџџџ*
T0
Х
&gradients/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder7gradients/v/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
_output_shapes

:@*
T0

.gradients/v/dense/MatMul_grad/tuple/group_depsNoOp%^gradients/v/dense/MatMul_grad/MatMul'^gradients/v/dense/MatMul_grad/MatMul_1

6gradients/v/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients/v/dense/MatMul_grad/MatMul/^gradients/v/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*7
_class-
+)loc:@gradients/v/dense/MatMul_grad/MatMul*
T0

8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients/v/dense/MatMul_grad/MatMul_1/^gradients/v/dense/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/v/dense/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
`
Reshape/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

ReshapeReshape8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
_output_shapes	
:Р*
Tshape0*
T0
b
Reshape_1/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

	Reshape_1Reshape9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
Tshape0*
T0*
_output_shapes
:@
b
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

	Reshape_2Reshape:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
_output_shapes	
: *
T0*
Tshape0
b
Reshape_3/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

	Reshape_3Reshape;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
_output_shapes
:@*
Tshape0
b
Reshape_4/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

	Reshape_4Reshape:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes
:@*
Tshape0*
T0
b
Reshape_5/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_5Reshape;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
_output_shapes
:*
Tshape0*
T0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5concat/axis*
T0*

Tidx0*
N*
_output_shapes	
:*
g
PyFuncPyFuncconcat*
Tin
2*
Tout
2*
token
pyfunc_0*
_output_shapes	
:*
h
Const_2Const*
_output_shapes
:*-
value$B""@  @      @   @      *
dtype0
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 

splitSplitVPyFuncConst_2split/split_dim*:
_output_shapes(
&:Р:@: :@:@:*
T0*

Tlen0*
	num_split
`
Reshape_6/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
c
	Reshape_6ReshapesplitReshape_6/shape*
T0*
Tshape0*
_output_shapes

:@
Y
Reshape_7/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
a
	Reshape_7Reshapesplit:1Reshape_7/shape*
Tshape0*
_output_shapes
:@*
T0
`
Reshape_8/shapeConst*
dtype0*
_output_shapes
:*
valueB"@   @   
e
	Reshape_8Reshapesplit:2Reshape_8/shape*
Tshape0*
_output_shapes

:@@*
T0
Y
Reshape_9/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
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
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_11/shapeConst*
valueB:*
_output_shapes
:*
dtype0
c

Reshape_11Reshapesplit:5Reshape_11/shape*
_output_shapes
:*
Tshape0*
T0

beta1_power/initial_valueConst*
_class
loc:@v/dense/bias*
_output_shapes
: *
valueB
 *fff?*
dtype0

beta1_power
VariableV2*
	container *
_class
loc:@v/dense/bias*
_output_shapes
: *
dtype0*
shared_name *
shape: 
Џ
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
_output_shapes
: *
_class
loc:@v/dense/bias*
validate_shape(
k
beta1_power/readIdentitybeta1_power*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

beta2_power/initial_valueConst*
valueB
 *wО?*
_class
loc:@v/dense/bias*
_output_shapes
: *
dtype0

beta2_power
VariableV2*
dtype0*
shape: *
_class
loc:@v/dense/bias*
shared_name *
	container *
_output_shapes
: 
Џ
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
_output_shapes
: *
_class
loc:@v/dense/bias*
validate_shape(*
T0
k
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: *
_class
loc:@v/dense/bias
Љ
5v/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*!
_class
loc:@v/dense/kernel*
dtype0*
valueB"   @   

+v/dense/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *!
_class
loc:@v/dense/kernel
я
%v/dense/kernel/Adam/Initializer/zerosFill5v/dense/kernel/Adam/Initializer/zeros/shape_as_tensor+v/dense/kernel/Adam/Initializer/zeros/Const*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0*

index_type0
Њ
v/dense/kernel/Adam
VariableV2*
shared_name *
shape
:@*
dtype0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
	container 
е
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
T0*
use_locking(

v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel
Ћ
7v/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*!
_class
loc:@v/dense/kernel*
valueB"   @   *
_output_shapes
:

-v/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
valueB
 *    
ѕ
'v/dense/kernel/Adam_1/Initializer/zerosFill7v/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor-v/dense/kernel/Adam_1/Initializer/zeros/Const*!
_class
loc:@v/dense/kernel*

index_type0*
T0*
_output_shapes

:@
Ќ
v/dense/kernel/Adam_1
VariableV2*!
_class
loc:@v/dense/kernel*
	container *
shared_name *
shape
:@*
_output_shapes

:@*
dtype0
л
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(

v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0

#v/dense/bias/Adam/Initializer/zerosConst*
_class
loc:@v/dense/bias*
_output_shapes
:@*
valueB@*    *
dtype0

v/dense/bias/Adam
VariableV2*
_class
loc:@v/dense/bias*
shape:@*
dtype0*
shared_name *
	container *
_output_shapes
:@
Щ
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
use_locking(*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
T0
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
_output_shapes
:@*
T0*
_class
loc:@v/dense/bias

%v/dense/bias/Adam_1/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
 
v/dense/bias/Adam_1
VariableV2*
	container *
shared_name *
shape:@*
dtype0*
_output_shapes
:@*
_class
loc:@v/dense/bias
Я
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@*
use_locking(

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
_output_shapes
:@*
T0*
_class
loc:@v/dense/bias
­
7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
_output_shapes
:

-v/dense_1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@v/dense_1/kernel*
dtype0*
valueB
 *    *
_output_shapes
: 
ї
'v/dense_1/kernel/Adam/Initializer/zerosFill7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_1/kernel/Adam/Initializer/zeros/Const*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel*

index_type0
Ў
v/dense_1/kernel/Adam
VariableV2*
shape
:@@*
_output_shapes

:@@*
dtype0*
	container *
shared_name *#
_class
loc:@v/dense_1/kernel
н
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_1/kernel*
T0*
validate_shape(*
_output_shapes

:@@*
use_locking(

v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel
Џ
9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
_output_shapes
:

/v/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: *#
_class
loc:@v/dense_1/kernel
§
)v/dense_1/kernel/Adam_1/Initializer/zerosFill9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_1/kernel/Adam_1/Initializer/zeros/Const*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*

index_type0*
T0
А
v/dense_1/kernel/Adam_1
VariableV2*#
_class
loc:@v/dense_1/kernel*
shared_name *
shape
:@@*
	container *
dtype0*
_output_shapes

:@@
у
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
T0

v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@

%v/dense_1/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
Ђ
v/dense_1/bias/Adam
VariableV2*
_output_shapes
:@*
	container *
shared_name *
shape:@*!
_class
loc:@v/dense_1/bias*
dtype0
б
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*
T0*
validate_shape(*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@

v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*!
_class
loc:@v/dense_1/bias*
T0*
_output_shapes
:@

'v/dense_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
valueB@*    
Є
v/dense_1/bias/Adam_1
VariableV2*!
_class
loc:@v/dense_1/bias*
	container *
shape:@*
_output_shapes
:@*
dtype0*
shared_name 
з
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_1/bias

v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
T0
Ё
'v/dense_2/kernel/Adam/Initializer/zerosConst*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
valueB@*    *
dtype0
Ў
v/dense_2/kernel/Adam
VariableV2*
shape
:@*
dtype0*#
_class
loc:@v/dense_2/kernel*
	container *
_output_shapes

:@*
shared_name 
н
v/dense_2/kernel/Adam/AssignAssignv/dense_2/kernel/Adam'v/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
validate_shape(*
T0

v/dense_2/kernel/Adam/readIdentityv/dense_2/kernel/Adam*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Ѓ
)v/dense_2/kernel/Adam_1/Initializer/zerosConst*#
_class
loc:@v/dense_2/kernel*
valueB@*    *
_output_shapes

:@*
dtype0
А
v/dense_2/kernel/Adam_1
VariableV2*
	container *
dtype0*
shape
:@*
shared_name *
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
у
v/dense_2/kernel/Adam_1/AssignAssignv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel

v/dense_2/kernel/Adam_1/readIdentityv/dense_2/kernel/Adam_1*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes

:@

%v/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
valueB*    
Ђ
v/dense_2/bias/Adam
VariableV2*
	container *
shape:*
shared_name *!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
dtype0
б
v/dense_2/bias/Adam/AssignAssignv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
T0*
use_locking(*
validate_shape(

v/dense_2/bias/Adam/readIdentityv/dense_2/bias/Adam*
_output_shapes
:*
T0*!
_class
loc:@v/dense_2/bias

'v/dense_2/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
Є
v/dense_2/bias/Adam_1
VariableV2*
_output_shapes
:*
shape:*
	container *!
_class
loc:@v/dense_2/bias*
shared_name *
dtype0
з
v/dense_2/bias/Adam_1/AssignAssignv/dense_2/bias/Adam_1'v/dense_2/bias/Adam_1/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
validate_shape(*
T0*
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

Adam/beta1Const*
dtype0*
valueB
 *fff?*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
valueB
 *wО?*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
Щ
$Adam/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*!
_class
loc:@v/dense/kernel*
use_nesterov( *
use_locking( *
T0*
_output_shapes

:@
Л
"Adam/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7*
use_locking( *
use_nesterov( *
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0
г
&Adam/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_8*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
use_nesterov( 
Х
$Adam/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_9*
use_nesterov( *
_output_shapes
:@*
T0*
use_locking( *!
_class
loc:@v/dense_1/bias
д
&Adam/update_v/dense_2/kernel/ApplyAdam	ApplyAdamv/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_10*#
_class
loc:@v/dense_2/kernel*
use_nesterov( *
T0*
_output_shapes

:@*
use_locking( 
Ц
$Adam/update_v/dense_2/bias/ApplyAdam	ApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_11*!
_class
loc:@v/dense_2/bias*
T0*
use_locking( *
_output_shapes
:*
use_nesterov( 
л
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*
_class
loc:@v/dense/bias
н

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
_output_shapes
: *
validate_shape(*
T0*
_class
loc:@v/dense/bias

AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam
j
Reshape_12/shapeConst^Adam*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
p

Reshape_12Reshapev/dense/kernel/readReshape_12/shape*
_output_shapes	
:Р*
Tshape0*
T0
j
Reshape_13/shapeConst^Adam*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
m

Reshape_13Reshapev/dense/bias/readReshape_13/shape*
_output_shapes
:@*
T0*
Tshape0
j
Reshape_14/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
r

Reshape_14Reshapev/dense_1/kernel/readReshape_14/shape*
_output_shapes	
: *
T0*
Tshape0
j
Reshape_15/shapeConst^Adam*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
o

Reshape_15Reshapev/dense_1/bias/readReshape_15/shape*
_output_shapes
:@*
T0*
Tshape0
j
Reshape_16/shapeConst^Adam*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
q

Reshape_16Reshapev/dense_2/kernel/readReshape_16/shape*
Tshape0*
_output_shapes
:@*
T0
j
Reshape_17/shapeConst^Adam*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
o

Reshape_17Reshapev/dense_2/bias/readReshape_17/shape*
Tshape0*
T0*
_output_shapes
:
V
concat_1/axisConst^Adam*
value	B : *
dtype0*
_output_shapes
: 
І
concat_1ConcatV2
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17concat_1/axis*
_output_shapes	
:**

Tidx0*
T0*
N
h
PyFunc_1PyFuncconcat_1*
Tin
2*
_output_shapes
:*
Tout
2*
token
pyfunc_1
o
Const_3Const^Adam*-
value$B""@  @      @   @      *
dtype0*
_output_shapes
:
Z
split_1/split_dimConst^Adam*
dtype0*
_output_shapes
: *
value	B : 

split_1SplitVPyFunc_1Const_3split_1/split_dim*

Tlen0*,
_output_shapes
::::::*
	num_split*
T0
h
Reshape_18/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB"   @   
g

Reshape_18Reshapesplit_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes

:@
a
Reshape_19/shapeConst^Adam*
_output_shapes
:*
dtype0*
valueB:@
e

Reshape_19Reshape	split_1:1Reshape_19/shape*
_output_shapes
:@*
T0*
Tshape0
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
:@*
Tshape0*
T0
h
Reshape_22/shapeConst^Adam*
dtype0*
valueB"@      *
_output_shapes
:
i

Reshape_22Reshape	split_1:4Reshape_22/shape*
_output_shapes

:@*
Tshape0*
T0
a
Reshape_23/shapeConst^Adam*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_23Reshape	split_1:5Reshape_23/shape*
T0*
_output_shapes
:*
Tshape0
Ё
AssignAssignv/dense/kernel
Reshape_18*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0*
use_locking(*
_output_shapes

:@

Assign_1Assignv/dense/bias
Reshape_19*
_output_shapes
:@*
validate_shape(*
T0*
_class
loc:@v/dense/bias*
use_locking(
Ї
Assign_2Assignv/dense_1/kernel
Reshape_20*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
use_locking(*
_output_shapes

:@@*
T0

Assign_3Assignv/dense_1/bias
Reshape_21*
use_locking(*
T0*
validate_shape(*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias
Ї
Assign_4Assignv/dense_2/kernel
Reshape_22*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
use_locking(*
validate_shape(*
T0

Assign_5Assignv/dense_2/bias
Reshape_23*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*!
_class
loc:@v/dense_2/bias
Y

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
Z
gradients_1/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
_output_shapes
: *

index_type0*
T0
R
gradients_1/Neg_grad/NegNeggradients_1/Fill*
T0*
_output_shapes
: 
m
#gradients_1/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:

gradients_1/Mean_grad/ReshapeReshapegradients_1/Neg_grad/Neg#gradients_1/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
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
:џџџџџџџџџ*
T0
`
gradients_1/Mean_grad/Shape_1Shapemul*
T0*
out_type0*
_output_shapes
:
`
gradients_1/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
e
gradients_1/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
g
gradients_1/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
 
gradients_1/Mean_grad/Prod_1Prodgradients_1/Mean_grad/Shape_2gradients_1/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
gradients_1/Mean_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0

gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *
Truncate( *

DstT0

gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
]
gradients_1/mul_grad/ShapeShapeExp*
_output_shapes
:*
out_type0*
T0
i
gradients_1/mul_grad/Shape_1ShapePlaceholder_2*
T0*
_output_shapes
:*
out_type0
К
*gradients_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_grad/Shapegradients_1/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
{
gradients_1/mul_grad/MulMulgradients_1/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:џџџџџџџџџ
Ѕ
gradients_1/mul_grad/SumSumgradients_1/mul_grad/Mul*gradients_1/mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0

gradients_1/mul_grad/ReshapeReshapegradients_1/mul_grad/Sumgradients_1/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
s
gradients_1/mul_grad/Mul_1MulExpgradients_1/Mean_grad/truediv*#
_output_shapes
:џџџџџџџџџ*
T0
Ћ
gradients_1/mul_grad/Sum_1Sumgradients_1/mul_grad/Mul_1,gradients_1/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

gradients_1/mul_grad/Reshape_1Reshapegradients_1/mul_grad/Sum_1gradients_1/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
p
gradients_1/Exp_grad/mulMulgradients_1/mul_grad/ReshapeExp*
T0*#
_output_shapes
:џџџџџџџџџ
`
gradients_1/sub_grad/ShapeShapepi/Sum*
_output_shapes
:*
out_type0*
T0
i
gradients_1/sub_grad/Shape_1ShapePlaceholder_4*
_output_shapes
:*
out_type0*
T0
К
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѕ
gradients_1/sub_grad/SumSumgradients_1/Exp_grad/mul*gradients_1/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:

gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
g
gradients_1/sub_grad/NegNeggradients_1/Exp_grad/mul*
T0*#
_output_shapes
:џџџџџџџџџ
Љ
gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 

gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
e
gradients_1/pi/Sum_grad/ShapeShapepi/mul_2*
_output_shapes
:*
out_type0*
T0

gradients_1/pi/Sum_grad/SizeConst*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
value	B :*
dtype0
Џ
gradients_1/pi/Sum_grad/addAddV2pi/Sum/reduction_indicesgradients_1/pi/Sum_grad/Size*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0
Е
gradients_1/pi/Sum_grad/modFloorModgradients_1/pi/Sum_grad/addgradients_1/pi/Sum_grad/Size*
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0

gradients_1/pi/Sum_grad/Shape_1Const*
valueB *
_output_shapes
: *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0

#gradients_1/pi/Sum_grad/range/startConst*
_output_shapes
: *
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
value	B : 

#gradients_1/pi/Sum_grad/range/deltaConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
ш
gradients_1/pi/Sum_grad/rangeRange#gradients_1/pi/Sum_grad/range/startgradients_1/pi/Sum_grad/Size#gradients_1/pi/Sum_grad/range/delta*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*

Tidx0*
_output_shapes
:

"gradients_1/pi/Sum_grad/Fill/valueConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ю
gradients_1/pi/Sum_grad/FillFillgradients_1/pi/Sum_grad/Shape_1"gradients_1/pi/Sum_grad/Fill/value*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*

index_type0*
_output_shapes
: *
T0

%gradients_1/pi/Sum_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_grad/rangegradients_1/pi/Sum_grad/modgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Fill*
T0*
N*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:

!gradients_1/pi/Sum_grad/Maximum/yConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ы
gradients_1/pi/Sum_grad/MaximumMaximum%gradients_1/pi/Sum_grad/DynamicStitch!gradients_1/pi/Sum_grad/Maximum/y*
_output_shapes
:*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
У
 gradients_1/pi/Sum_grad/floordivFloorDivgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Maximum*
_output_shapes
:*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
T0
И
gradients_1/pi/Sum_grad/ReshapeReshapegradients_1/sub_grad/Reshape%gradients_1/pi/Sum_grad/DynamicStitch*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0
Ћ
gradients_1/pi/Sum_grad/TileTilegradients_1/pi/Sum_grad/Reshape gradients_1/pi/Sum_grad/floordiv*
T0*'
_output_shapes
:џџџџџџџџџ*

Tmultiples0
g
gradients_1/pi/mul_2_grad/ShapeShape
pi/mul_2/x*
out_type0*
T0*
_output_shapes
: 
i
!gradients_1/pi/mul_2_grad/Shape_1Shapepi/add_3*
T0*
out_type0*
_output_shapes
:
Щ
/gradients_1/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_2_grad/Shape!gradients_1/pi/mul_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
~
gradients_1/pi/mul_2_grad/MulMulgradients_1/pi/Sum_grad/Tilepi/add_3*'
_output_shapes
:џџџџџџџџџ*
T0
Д
gradients_1/pi/mul_2_grad/SumSumgradients_1/pi/mul_2_grad/Mul/gradients_1/pi/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

!gradients_1/pi/mul_2_grad/ReshapeReshapegradients_1/pi/mul_2_grad/Sumgradients_1/pi/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 

gradients_1/pi/mul_2_grad/Mul_1Mul
pi/mul_2/xgradients_1/pi/Sum_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
К
gradients_1/pi/mul_2_grad/Sum_1Sumgradients_1/pi/mul_2_grad/Mul_11gradients_1/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
В
#gradients_1/pi/mul_2_grad/Reshape_1Reshapegradients_1/pi/mul_2_grad/Sum_1!gradients_1/pi/mul_2_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
g
gradients_1/pi/add_3_grad/ShapeShapepi/add_2*
_output_shapes
:*
T0*
out_type0
i
!gradients_1/pi/add_3_grad/Shape_1Shape
pi/add_3/y*
T0*
out_type0*
_output_shapes
: 
Щ
/gradients_1/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_3_grad/Shape!gradients_1/pi/add_3_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
К
gradients_1/pi/add_3_grad/SumSum#gradients_1/pi/mul_2_grad/Reshape_1/gradients_1/pi/add_3_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
Ќ
!gradients_1/pi/add_3_grad/ReshapeReshapegradients_1/pi/add_3_grad/Sumgradients_1/pi/add_3_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
О
gradients_1/pi/add_3_grad/Sum_1Sum#gradients_1/pi/mul_2_grad/Reshape_11gradients_1/pi/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ё
#gradients_1/pi/add_3_grad/Reshape_1Reshapegradients_1/pi/add_3_grad/Sum_1!gradients_1/pi/add_3_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
e
gradients_1/pi/add_2_grad/ShapeShapepi/pow*
_output_shapes
:*
out_type0*
T0
i
!gradients_1/pi/add_2_grad/Shape_1Shapepi/mul_1*
T0*
out_type0*
_output_shapes
:
Щ
/gradients_1/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_2_grad/Shape!gradients_1/pi/add_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
И
gradients_1/pi/add_2_grad/SumSum!gradients_1/pi/add_3_grad/Reshape/gradients_1/pi/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
Ќ
!gradients_1/pi/add_2_grad/ReshapeReshapegradients_1/pi/add_2_grad/Sumgradients_1/pi/add_2_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
М
gradients_1/pi/add_2_grad/Sum_1Sum!gradients_1/pi/add_3_grad/Reshape1gradients_1/pi/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ѕ
#gradients_1/pi/add_2_grad/Reshape_1Reshapegradients_1/pi/add_2_grad/Sum_1!gradients_1/pi/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
gradients_1/pi/pow_grad/ShapeShape
pi/truediv*
T0*
out_type0*
_output_shapes
:
e
gradients_1/pi/pow_grad/Shape_1Shapepi/pow/y*
_output_shapes
: *
T0*
out_type0
У
-gradients_1/pi/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/pow_grad/Shapegradients_1/pi/pow_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients_1/pi/pow_grad/mulMul!gradients_1/pi/add_2_grad/Reshapepi/pow/y*
T0*'
_output_shapes
:џџџџџџџџџ
b
gradients_1/pi/pow_grad/sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
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
:џџџџџџџџџ

gradients_1/pi/pow_grad/mul_1Mulgradients_1/pi/pow_grad/mulgradients_1/pi/pow_grad/Pow*'
_output_shapes
:џџџџџџџџџ*
T0
А
gradients_1/pi/pow_grad/SumSumgradients_1/pi/pow_grad/mul_1-gradients_1/pi/pow_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
І
gradients_1/pi/pow_grad/ReshapeReshapegradients_1/pi/pow_grad/Sumgradients_1/pi/pow_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
f
!gradients_1/pi/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

gradients_1/pi/pow_grad/GreaterGreater
pi/truediv!gradients_1/pi/pow_grad/Greater/y*
T0*'
_output_shapes
:џџџџџџџџџ
q
'gradients_1/pi/pow_grad/ones_like/ShapeShape
pi/truediv*
T0*
out_type0*
_output_shapes
:
l
'gradients_1/pi/pow_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
П
!gradients_1/pi/pow_grad/ones_likeFill'gradients_1/pi/pow_grad/ones_like/Shape'gradients_1/pi/pow_grad/ones_like/Const*

index_type0*
T0*'
_output_shapes
:џџџџџџџџџ
Њ
gradients_1/pi/pow_grad/SelectSelectgradients_1/pi/pow_grad/Greater
pi/truediv!gradients_1/pi/pow_grad/ones_like*'
_output_shapes
:џџџџџџџџџ*
T0
t
gradients_1/pi/pow_grad/LogLoggradients_1/pi/pow_grad/Select*
T0*'
_output_shapes
:џџџџџџџџџ
m
"gradients_1/pi/pow_grad/zeros_like	ZerosLike
pi/truediv*'
_output_shapes
:џџџџџџџџџ*
T0
О
 gradients_1/pi/pow_grad/Select_1Selectgradients_1/pi/pow_grad/Greatergradients_1/pi/pow_grad/Log"gradients_1/pi/pow_grad/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pi/pow_grad/mul_2Mul!gradients_1/pi/add_2_grad/Reshapepi/pow*
T0*'
_output_shapes
:џџџџџџџџџ

gradients_1/pi/pow_grad/mul_3Mulgradients_1/pi/pow_grad/mul_2 gradients_1/pi/pow_grad/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
Д
gradients_1/pi/pow_grad/Sum_1Sumgradients_1/pi/pow_grad/mul_3/gradients_1/pi/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

!gradients_1/pi/pow_grad/Reshape_1Reshapegradients_1/pi/pow_grad/Sum_1gradients_1/pi/pow_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
u
2gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s0Const*
_output_shapes
: *
valueB *
dtype0
|
2gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s1Const*
dtype0*
valueB:*
_output_shapes
:
э
/gradients_1/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s02gradients_1/pi/mul_1_grad/BroadcastGradientArgs/s1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients_1/pi/mul_1_grad/MulMul#gradients_1/pi/add_2_grad/Reshape_1pi/log_std/read*
_output_shapes
:*
T0
y
/gradients_1/pi/mul_1_grad/Sum/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
В
gradients_1/pi/mul_1_grad/SumSumgradients_1/pi/mul_1_grad/Mul/gradients_1/pi/mul_1_grad/Sum/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
j
'gradients_1/pi/mul_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Ѓ
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
!gradients_1/pi/truediv_grad/ShapeShapepi/sub*
out_type0*
_output_shapes
:*
T0
m
#gradients_1/pi/truediv_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Я
1gradients_1/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/pi/truediv_grad/Shape#gradients_1/pi/truediv_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

#gradients_1/pi/truediv_grad/RealDivRealDivgradients_1/pi/pow_grad/Reshapepi/add_1*'
_output_shapes
:џџџџџџџџџ*
T0
О
gradients_1/pi/truediv_grad/SumSum#gradients_1/pi/truediv_grad/RealDiv1gradients_1/pi/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
В
#gradients_1/pi/truediv_grad/ReshapeReshapegradients_1/pi/truediv_grad/Sum!gradients_1/pi/truediv_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
`
gradients_1/pi/truediv_grad/NegNegpi/sub*'
_output_shapes
:џџџџџџџџџ*
T0

%gradients_1/pi/truediv_grad/RealDiv_1RealDivgradients_1/pi/truediv_grad/Negpi/add_1*'
_output_shapes
:џџџџџџџџџ*
T0

%gradients_1/pi/truediv_grad/RealDiv_2RealDiv%gradients_1/pi/truediv_grad/RealDiv_1pi/add_1*'
_output_shapes
:џџџџџџџџџ*
T0
 
gradients_1/pi/truediv_grad/mulMulgradients_1/pi/pow_grad/Reshape%gradients_1/pi/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:џџџџџџџџџ
О
!gradients_1/pi/truediv_grad/Sum_1Sumgradients_1/pi/truediv_grad/mul3gradients_1/pi/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
Ћ
%gradients_1/pi/truediv_grad/Reshape_1Reshape!gradients_1/pi/truediv_grad/Sum_1#gradients_1/pi/truediv_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
j
gradients_1/pi/sub_grad/ShapeShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
q
gradients_1/pi/sub_grad/Shape_1Shapepi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
У
-gradients_1/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_grad/Shapegradients_1/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ж
gradients_1/pi/sub_grad/SumSum#gradients_1/pi/truediv_grad/Reshape-gradients_1/pi/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
І
gradients_1/pi/sub_grad/ReshapeReshapegradients_1/pi/sub_grad/Sumgradients_1/pi/sub_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
y
gradients_1/pi/sub_grad/NegNeg#gradients_1/pi/truediv_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
В
gradients_1/pi/sub_grad/Sum_1Sumgradients_1/pi/sub_grad/Neg/gradients_1/pi/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
Ќ
!gradients_1/pi/sub_grad/Reshape_1Reshapegradients_1/pi/sub_grad/Sum_1gradients_1/pi/sub_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
|
2gradients_1/pi/add_1_grad/BroadcastGradientArgs/s0Const*
dtype0*
valueB:*
_output_shapes
:
u
2gradients_1/pi/add_1_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
valueB *
dtype0
э
/gradients_1/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs2gradients_1/pi/add_1_grad/BroadcastGradientArgs/s02gradients_1/pi/add_1_grad/BroadcastGradientArgs/s1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
y
/gradients_1/pi/add_1_grad/Sum/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
К
gradients_1/pi/add_1_grad/SumSum%gradients_1/pi/truediv_grad/Reshape_1/gradients_1/pi/add_1_grad/Sum/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
j
'gradients_1/pi/add_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Ѓ
!gradients_1/pi/add_1_grad/ReshapeReshapegradients_1/pi/add_1_grad/Sum'gradients_1/pi/add_1_grad/Reshape/shape*
_output_shapes
: *
Tshape0*
T0

/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad!gradients_1/pi/sub_grad/Reshape_1*
data_formatNHWC*
T0*
_output_shapes
:
z
gradients_1/pi/Exp_1_grad/mulMul%gradients_1/pi/truediv_grad/Reshape_1pi/Exp_1*
_output_shapes
:*
T0
Ц
)gradients_1/pi/dense_2/MatMul_grad/MatMulMatMul!gradients_1/pi/sub_grad/Reshape_1pi/dense_2/kernel/read*
transpose_a( *
transpose_b(*'
_output_shapes
:џџџџџџџџџ@*
T0
И
+gradients_1/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh!gradients_1/pi/sub_grad/Reshape_1*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@
К
gradients_1/AddNAddNgradients_1/pi/mul_1_grad/Mul_1gradients_1/pi/Exp_1_grad/mul*
T0*
_output_shapes
:*2
_class(
&$loc:@gradients_1/pi/mul_1_grad/Mul_1*
N
Ѓ
)gradients_1/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_1/pi/dense_2/MatMul_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ@
Ѕ
/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
T0*
_output_shapes
:@*
data_formatNHWC
Ю
)gradients_1/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_1/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*
transpose_b(*
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ@
О
+gradients_1/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_1/pi/dense_1/Tanh_grad/TanhGrad*
transpose_b( *
_output_shapes

:@@*
transpose_a(*
T0

'gradients_1/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_1/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@*
T0
Ё
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*
_output_shapes
:@
Ш
'gradients_1/pi/dense/MatMul_grad/MatMulMatMul'gradients_1/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
T0*
transpose_b(
И
)gradients_1/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_1/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes

:@*
transpose_b( *
transpose_a(
c
Reshape_24/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_24Reshape)gradients_1/pi/dense/MatMul_grad/MatMul_1Reshape_24/shape*
_output_shapes	
:Р*
Tshape0*
T0
c
Reshape_25/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_25Reshape-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradReshape_25/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_26/shapeConst*
valueB:
џџџџџџџџџ*
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
џџџџџџџџџ


Reshape_27Reshape/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_27/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_28/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ


Reshape_28Reshape+gradients_1/pi/dense_2/MatMul_grad/MatMul_1Reshape_28/shape*
_output_shapes	
:*
Tshape0*
T0
c
Reshape_29/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:


Reshape_29Reshape/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_29/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_30/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
l

Reshape_30Reshapegradients_1/AddNReshape_30/shape*
Tshape0*
T0*
_output_shapes
:
O
concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
В
concat_2ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27
Reshape_28
Reshape_29
Reshape_30concat_2/axis*
N*
T0*

Tidx0*
_output_shapes	
:Ь,
T
gradients_2/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_2/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
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
T0*
_output_shapes
:*
Tshape0
f
gradients_2/pi/Mean_grad/ShapeShapepi/Sum_2*
_output_shapes
:*
T0*
out_type0
Ї
gradients_2/pi/Mean_grad/TileTile gradients_2/pi/Mean_grad/Reshapegradients_2/pi/Mean_grad/Shape*
T0*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0
h
 gradients_2/pi/Mean_grad/Shape_1Shapepi/Sum_2*
_output_shapes
:*
out_type0*
T0
c
 gradients_2/pi/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients_2/pi/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ѕ
gradients_2/pi/Mean_grad/ProdProd gradients_2/pi/Mean_grad/Shape_1gradients_2/pi/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
j
 gradients_2/pi/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
Љ
gradients_2/pi/Mean_grad/Prod_1Prod gradients_2/pi/Mean_grad/Shape_2 gradients_2/pi/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"gradients_2/pi/Mean_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0

 gradients_2/pi/Mean_grad/MaximumMaximumgradients_2/pi/Mean_grad/Prod_1"gradients_2/pi/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

!gradients_2/pi/Mean_grad/floordivFloorDivgradients_2/pi/Mean_grad/Prod gradients_2/pi/Mean_grad/Maximum*
_output_shapes
: *
T0

gradients_2/pi/Mean_grad/CastCast!gradients_2/pi/Mean_grad/floordiv*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0

 gradients_2/pi/Mean_grad/truedivRealDivgradients_2/pi/Mean_grad/Tilegradients_2/pi/Mean_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
g
gradients_2/pi/Sum_2_grad/ShapeShapepi/sub_4*
out_type0*
_output_shapes
:*
T0

gradients_2/pi/Sum_2_grad/SizeConst*
_output_shapes
: *
dtype0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
value	B :
З
gradients_2/pi/Sum_2_grad/addAddV2pi/Sum_2/reduction_indicesgradients_2/pi/Sum_2_grad/Size*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
T0*
_output_shapes
: 
Н
gradients_2/pi/Sum_2_grad/modFloorModgradients_2/pi/Sum_2_grad/addgradients_2/pi/Sum_2_grad/Size*
T0*
_output_shapes
: *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

!gradients_2/pi/Sum_2_grad/Shape_1Const*
_output_shapes
: *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
valueB *
dtype0

%gradients_2/pi/Sum_2_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

%gradients_2/pi/Sum_2_grad/range/deltaConst*
value	B :*
dtype0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: 
ђ
gradients_2/pi/Sum_2_grad/rangeRange%gradients_2/pi/Sum_2_grad/range/startgradients_2/pi/Sum_2_grad/Size%gradients_2/pi/Sum_2_grad/range/delta*
_output_shapes
:*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*

Tidx0

$gradients_2/pi/Sum_2_grad/Fill/valueConst*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: *
value	B :*
dtype0
ж
gradients_2/pi/Sum_2_grad/FillFill!gradients_2/pi/Sum_2_grad/Shape_1$gradients_2/pi/Sum_2_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

'gradients_2/pi/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/pi/Sum_2_grad/rangegradients_2/pi/Sum_2_grad/modgradients_2/pi/Sum_2_grad/Shapegradients_2/pi/Sum_2_grad/Fill*
T0*
N*
_output_shapes
:*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

#gradients_2/pi/Sum_2_grad/Maximum/yConst*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
value	B :*
_output_shapes
: 
г
!gradients_2/pi/Sum_2_grad/MaximumMaximum'gradients_2/pi/Sum_2_grad/DynamicStitch#gradients_2/pi/Sum_2_grad/Maximum/y*
_output_shapes
:*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
Ы
"gradients_2/pi/Sum_2_grad/floordivFloorDivgradients_2/pi/Sum_2_grad/Shape!gradients_2/pi/Sum_2_grad/Maximum*
_output_shapes
:*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
Р
!gradients_2/pi/Sum_2_grad/ReshapeReshape gradients_2/pi/Mean_grad/truediv'gradients_2/pi/Sum_2_grad/DynamicStitch*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0
Б
gradients_2/pi/Sum_2_grad/TileTile!gradients_2/pi/Sum_2_grad/Reshape"gradients_2/pi/Sum_2_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ
g
gradients_2/pi/sub_4_grad/ShapeShapepi/add_9*
out_type0*
T0*
_output_shapes
:
p
!gradients_2/pi/sub_4_grad/Shape_1Shapepi/log_std/read*
out_type0*
T0*
_output_shapes
:
Щ
/gradients_2/pi/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_4_grad/Shape!gradients_2/pi/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Е
gradients_2/pi/sub_4_grad/SumSumgradients_2/pi/Sum_2_grad/Tile/gradients_2/pi/sub_4_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
!gradients_2/pi/sub_4_grad/ReshapeReshapegradients_2/pi/sub_4_grad/Sumgradients_2/pi/sub_4_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
v
gradients_2/pi/sub_4_grad/NegNeggradients_2/pi/Sum_2_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
И
gradients_2/pi/sub_4_grad/Sum_1Sumgradients_2/pi/sub_4_grad/Neg1gradients_2/pi/sub_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ѕ
#gradients_2/pi/sub_4_grad/Reshape_1Reshapegradients_2/pi/sub_4_grad/Sum_1!gradients_2/pi/sub_4_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
gradients_2/pi/add_9_grad/ShapeShapepi/mul_7*
out_type0*
T0*
_output_shapes
:
q
!gradients_2/pi/add_9_grad/Shape_1Shapepi/Placeholder_1*
T0*
out_type0*
_output_shapes
:
Щ
/gradients_2/pi/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/add_9_grad/Shape!gradients_2/pi/add_9_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
И
gradients_2/pi/add_9_grad/SumSum!gradients_2/pi/sub_4_grad/Reshape/gradients_2/pi/add_9_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ќ
!gradients_2/pi/add_9_grad/ReshapeReshapegradients_2/pi/add_9_grad/Sumgradients_2/pi/add_9_grad/Shape*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
М
gradients_2/pi/add_9_grad/Sum_1Sum!gradients_2/pi/sub_4_grad/Reshape1gradients_2/pi/add_9_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
В
#gradients_2/pi/add_9_grad/Reshape_1Reshapegradients_2/pi/add_9_grad/Sum_1!gradients_2/pi/add_9_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
g
gradients_2/pi/mul_7_grad/ShapeShape
pi/mul_7/x*
T0*
out_type0*
_output_shapes
: 
i
!gradients_2/pi/mul_7_grad/Shape_1Shapepi/sub_3*
T0*
out_type0*
_output_shapes
:
Щ
/gradients_2/pi/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_7_grad/Shape!gradients_2/pi/mul_7_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients_2/pi/mul_7_grad/MulMul!gradients_2/pi/add_9_grad/Reshapepi/sub_3*
T0*'
_output_shapes
:џџџџџџџџџ
Д
gradients_2/pi/mul_7_grad/SumSumgradients_2/pi/mul_7_grad/Mul/gradients_2/pi/mul_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

!gradients_2/pi/mul_7_grad/ReshapeReshapegradients_2/pi/mul_7_grad/Sumgradients_2/pi/mul_7_grad/Shape*
_output_shapes
: *
Tshape0*
T0

gradients_2/pi/mul_7_grad/Mul_1Mul
pi/mul_7/x!gradients_2/pi/add_9_grad/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
К
gradients_2/pi/mul_7_grad/Sum_1Sumgradients_2/pi/mul_7_grad/Mul_11gradients_2/pi/mul_7_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
В
#gradients_2/pi/mul_7_grad/Reshape_1Reshapegradients_2/pi/mul_7_grad/Sum_1!gradients_2/pi/mul_7_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
k
gradients_2/pi/sub_3_grad/ShapeShapepi/truediv_2*
T0*
_output_shapes
:*
out_type0
i
!gradients_2/pi/sub_3_grad/Shape_1Shape
pi/sub_3/y*
out_type0*
_output_shapes
: *
T0
Щ
/gradients_2/pi/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_3_grad/Shape!gradients_2/pi/sub_3_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
К
gradients_2/pi/sub_3_grad/SumSum#gradients_2/pi/mul_7_grad/Reshape_1/gradients_2/pi/sub_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ќ
!gradients_2/pi/sub_3_grad/ReshapeReshapegradients_2/pi/sub_3_grad/Sumgradients_2/pi/sub_3_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
{
gradients_2/pi/sub_3_grad/NegNeg#gradients_2/pi/mul_7_grad/Reshape_1*
T0*'
_output_shapes
:џџџџџџџџџ
И
gradients_2/pi/sub_3_grad/Sum_1Sumgradients_2/pi/sub_3_grad/Neg1gradients_2/pi/sub_3_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ё
#gradients_2/pi/sub_3_grad/Reshape_1Reshapegradients_2/pi/sub_3_grad/Sum_1!gradients_2/pi/sub_3_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
k
#gradients_2/pi/truediv_2_grad/ShapeShapepi/add_7*
T0*
_output_shapes
:*
out_type0
m
%gradients_2/pi/truediv_2_grad/Shape_1Shapepi/add_8*
out_type0*
_output_shapes
:*
T0
е
3gradients_2/pi/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients_2/pi/truediv_2_grad/Shape%gradients_2/pi/truediv_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

%gradients_2/pi/truediv_2_grad/RealDivRealDiv!gradients_2/pi/sub_3_grad/Reshapepi/add_8*'
_output_shapes
:џџџџџџџџџ*
T0
Ф
!gradients_2/pi/truediv_2_grad/SumSum%gradients_2/pi/truediv_2_grad/RealDiv3gradients_2/pi/truediv_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
И
%gradients_2/pi/truediv_2_grad/ReshapeReshape!gradients_2/pi/truediv_2_grad/Sum#gradients_2/pi/truediv_2_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0
d
!gradients_2/pi/truediv_2_grad/NegNegpi/add_7*'
_output_shapes
:џџџџџџџџџ*
T0

'gradients_2/pi/truediv_2_grad/RealDiv_1RealDiv!gradients_2/pi/truediv_2_grad/Negpi/add_8*
T0*'
_output_shapes
:џџџџџџџџџ

'gradients_2/pi/truediv_2_grad/RealDiv_2RealDiv'gradients_2/pi/truediv_2_grad/RealDiv_1pi/add_8*'
_output_shapes
:џџџџџџџџџ*
T0
І
!gradients_2/pi/truediv_2_grad/mulMul!gradients_2/pi/sub_3_grad/Reshape'gradients_2/pi/truediv_2_grad/RealDiv_2*'
_output_shapes
:џџџџџџџџџ*
T0
Ф
#gradients_2/pi/truediv_2_grad/Sum_1Sum!gradients_2/pi/truediv_2_grad/mul5gradients_2/pi/truediv_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
О
'gradients_2/pi/truediv_2_grad/Reshape_1Reshape#gradients_2/pi/truediv_2_grad/Sum_1%gradients_2/pi/truediv_2_grad/Shape_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
g
gradients_2/pi/add_7_grad/ShapeShapepi/pow_2*
out_type0*
_output_shapes
:*
T0
i
!gradients_2/pi/add_7_grad/Shape_1Shapepi/Exp_3*
out_type0*
T0*
_output_shapes
:
Щ
/gradients_2/pi/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/add_7_grad/Shape!gradients_2/pi/add_7_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
М
gradients_2/pi/add_7_grad/SumSum%gradients_2/pi/truediv_2_grad/Reshape/gradients_2/pi/add_7_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
Ќ
!gradients_2/pi/add_7_grad/ReshapeReshapegradients_2/pi/add_7_grad/Sumgradients_2/pi/add_7_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
Р
gradients_2/pi/add_7_grad/Sum_1Sum%gradients_2/pi/truediv_2_grad/Reshape1gradients_2/pi/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ѕ
#gradients_2/pi/add_7_grad/Reshape_1Reshapegradients_2/pi/add_7_grad/Sum_1!gradients_2/pi/add_7_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:
g
gradients_2/pi/pow_2_grad/ShapeShapepi/sub_2*
_output_shapes
:*
out_type0*
T0
i
!gradients_2/pi/pow_2_grad/Shape_1Shape
pi/pow_2/y*
_output_shapes
: *
out_type0*
T0
Щ
/gradients_2/pi/pow_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/pow_2_grad/Shape!gradients_2/pi/pow_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients_2/pi/pow_2_grad/mulMul!gradients_2/pi/add_7_grad/Reshape
pi/pow_2/y*
T0*'
_output_shapes
:џџџџџџџџџ
d
gradients_2/pi/pow_2_grad/sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
gradients_2/pi/pow_2_grad/subSub
pi/pow_2/ygradients_2/pi/pow_2_grad/sub/y*
_output_shapes
: *
T0

gradients_2/pi/pow_2_grad/PowPowpi/sub_2gradients_2/pi/pow_2_grad/sub*'
_output_shapes
:џџџџџџџџџ*
T0

gradients_2/pi/pow_2_grad/mul_1Mulgradients_2/pi/pow_2_grad/mulgradients_2/pi/pow_2_grad/Pow*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
gradients_2/pi/pow_2_grad/SumSumgradients_2/pi/pow_2_grad/mul_1/gradients_2/pi/pow_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *
_output_shapes
:*

Tidx0
Ќ
!gradients_2/pi/pow_2_grad/ReshapeReshapegradients_2/pi/pow_2_grad/Sumgradients_2/pi/pow_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
h
#gradients_2/pi/pow_2_grad/Greater/yConst*
valueB
 *    *
_output_shapes
: *
dtype0

!gradients_2/pi/pow_2_grad/GreaterGreaterpi/sub_2#gradients_2/pi/pow_2_grad/Greater/y*'
_output_shapes
:џџџџџџџџџ*
T0
q
)gradients_2/pi/pow_2_grad/ones_like/ShapeShapepi/sub_2*
out_type0*
_output_shapes
:*
T0
n
)gradients_2/pi/pow_2_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Х
#gradients_2/pi/pow_2_grad/ones_likeFill)gradients_2/pi/pow_2_grad/ones_like/Shape)gradients_2/pi/pow_2_grad/ones_like/Const*
T0*

index_type0*'
_output_shapes
:џџџџџџџџџ
Ў
 gradients_2/pi/pow_2_grad/SelectSelect!gradients_2/pi/pow_2_grad/Greaterpi/sub_2#gradients_2/pi/pow_2_grad/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
x
gradients_2/pi/pow_2_grad/LogLog gradients_2/pi/pow_2_grad/Select*
T0*'
_output_shapes
:џџџџџџџџџ
m
$gradients_2/pi/pow_2_grad/zeros_like	ZerosLikepi/sub_2*'
_output_shapes
:џџџџџџџџџ*
T0
Ц
"gradients_2/pi/pow_2_grad/Select_1Select!gradients_2/pi/pow_2_grad/Greatergradients_2/pi/pow_2_grad/Log$gradients_2/pi/pow_2_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

gradients_2/pi/pow_2_grad/mul_2Mul!gradients_2/pi/add_7_grad/Reshapepi/pow_2*'
_output_shapes
:џџџџџџџџџ*
T0

gradients_2/pi/pow_2_grad/mul_3Mulgradients_2/pi/pow_2_grad/mul_2"gradients_2/pi/pow_2_grad/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
К
gradients_2/pi/pow_2_grad/Sum_1Sumgradients_2/pi/pow_2_grad/mul_31gradients_2/pi/pow_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ё
#gradients_2/pi/pow_2_grad/Reshape_1Reshapegradients_2/pi/pow_2_grad/Sum_1!gradients_2/pi/pow_2_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
x
gradients_2/pi/Exp_3_grad/mulMul#gradients_2/pi/add_7_grad/Reshape_1pi/Exp_3*
_output_shapes
:*
T0
m
gradients_2/pi/sub_2_grad/ShapeShapepi/Placeholder*
_output_shapes
:*
T0*
out_type0
s
!gradients_2/pi/sub_2_grad/Shape_1Shapepi/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
Щ
/gradients_2/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_2_grad/Shape!gradients_2/pi/sub_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
И
gradients_2/pi/sub_2_grad/SumSum!gradients_2/pi/pow_2_grad/Reshape/gradients_2/pi/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
Ќ
!gradients_2/pi/sub_2_grad/ReshapeReshapegradients_2/pi/sub_2_grad/Sumgradients_2/pi/sub_2_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
y
gradients_2/pi/sub_2_grad/NegNeg!gradients_2/pi/pow_2_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
И
gradients_2/pi/sub_2_grad/Sum_1Sumgradients_2/pi/sub_2_grad/Neg1gradients_2/pi/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
В
#gradients_2/pi/sub_2_grad/Reshape_1Reshapegradients_2/pi/sub_2_grad/Sum_1!gradients_2/pi/sub_2_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ
y
gradients_2/pi/mul_5_grad/MulMulgradients_2/pi/Exp_3_grad/mulpi/log_std/read*
T0*
_output_shapes
:
y
/gradients_2/pi/mul_5_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
В
gradients_2/pi/mul_5_grad/SumSumgradients_2/pi/mul_5_grad/Mul/gradients_2/pi/mul_5_grad/Sum/reduction_indices*
_output_shapes
: *

Tidx0*
T0*
	keep_dims( 
j
'gradients_2/pi/mul_5_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Ѓ
!gradients_2/pi/mul_5_grad/ReshapeReshapegradients_2/pi/mul_5_grad/Sum'gradients_2/pi/mul_5_grad/Reshape/shape*
T0*
_output_shapes
: *
Tshape0
v
gradients_2/pi/mul_5_grad/Mul_1Mul
pi/mul_5/xgradients_2/pi/Exp_3_grad/mul*
T0*
_output_shapes
:

/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients_2/pi/sub_2_grad/Reshape_1*
_output_shapes
:*
data_formatNHWC*
T0
Ф
gradients_2/AddNAddN#gradients_2/pi/sub_4_grad/Reshape_1gradients_2/pi/mul_5_grad/Mul_1*
T0*6
_class,
*(loc:@gradients_2/pi/sub_4_grad/Reshape_1*
_output_shapes
:*
N
Ш
)gradients_2/pi/dense_2/MatMul_grad/MatMulMatMul#gradients_2/pi/sub_2_grad/Reshape_1pi/dense_2/kernel/read*'
_output_shapes
:џџџџџџџџџ@*
transpose_b(*
transpose_a( *
T0
К
+gradients_2/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_2/pi/sub_2_grad/Reshape_1*
transpose_a(*
transpose_b( *
_output_shapes

:@*
T0
Ѓ
)gradients_2/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh)gradients_2/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@*
T0
Ѕ
/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Ю
)gradients_2/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:џџџџџџџџџ@*
transpose_b(
О
+gradients_2/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@@

'gradients_2/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_2/pi/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ@
Ё
-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_2/pi/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Ш
'gradients_2/pi/dense/MatMul_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџ
И
)gradients_2/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_2/pi/dense/Tanh_grad/TanhGrad*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:@
c
Reshape_31/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_31Reshape)gradients_2/pi/dense/MatMul_grad/MatMul_1Reshape_31/shape*
T0*
_output_shapes	
:Р*
Tshape0
c
Reshape_32/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_32Reshape-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradReshape_32/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_33/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ


Reshape_33Reshape+gradients_2/pi/dense_1/MatMul_grad/MatMul_1Reshape_33/shape*
T0*
_output_shapes	
: *
Tshape0
c
Reshape_34/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ


Reshape_34Reshape/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_34/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_35/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_35Reshape+gradients_2/pi/dense_2/MatMul_grad/MatMul_1Reshape_35/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_36/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:


Reshape_36Reshape/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_36/shape*
_output_shapes
:*
Tshape0*
T0
c
Reshape_37/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
l

Reshape_37Reshapegradients_2/AddNReshape_37/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_3/axisConst*
value	B : *
_output_shapes
: *
dtype0
В
concat_3ConcatV2
Reshape_31
Reshape_32
Reshape_33
Reshape_34
Reshape_35
Reshape_36
Reshape_37concat_3/axis*
T0*
N*
_output_shapes	
:Ь,*

Tidx0
X
Placeholder_5Placeholder*
dtype0*
shape:Ь,*
_output_shapes	
:Ь,
K
mul_1Mulconcat_3Placeholder_5*
_output_shapes	
:Ь,*
T0
Q
Const_4Const*
valueB: *
_output_shapes
:*
dtype0
X
SumSummul_1Const_4*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
T
gradients_3/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
Z
gradients_3/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*

index_type0*
_output_shapes
: *
T0
l
"gradients_3/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients_3/Sum_grad/ReshapeReshapegradients_3/Fill"gradients_3/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
e
gradients_3/Sum_grad/ConstConst*
dtype0*
valueB:Ь,*
_output_shapes
:

gradients_3/Sum_grad/TileTilegradients_3/Sum_grad/Reshapegradients_3/Sum_grad/Const*
T0*

Tmultiples0*
_output_shapes	
:Ь,
q
gradients_3/mul_1_grad/MulMulgradients_3/Sum_grad/TilePlaceholder_5*
_output_shapes	
:Ь,*
T0
n
gradients_3/mul_1_grad/Mul_1Mulgradients_3/Sum_grad/Tileconcat_3*
T0*
_output_shapes	
:Ь,
`
gradients_3/concat_3_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
y
gradients_3/concat_3_grad/modFloorModconcat_3/axisgradients_3/concat_3_grad/Rank*
_output_shapes
: *
T0
j
gradients_3/concat_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:Р
k
!gradients_3/concat_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:@
l
!gradients_3/concat_3_grad/Shape_2Const*
_output_shapes
:*
valueB: *
dtype0
k
!gradients_3/concat_3_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB:@
l
!gradients_3/concat_3_grad/Shape_4Const*
valueB:*
_output_shapes
:*
dtype0
k
!gradients_3/concat_3_grad/Shape_5Const*
dtype0*
valueB:*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_6Const*
valueB:*
_output_shapes
:*
dtype0

&gradients_3/concat_3_grad/ConcatOffsetConcatOffsetgradients_3/concat_3_grad/modgradients_3/concat_3_grad/Shape!gradients_3/concat_3_grad/Shape_1!gradients_3/concat_3_grad/Shape_2!gradients_3/concat_3_grad/Shape_3!gradients_3/concat_3_grad/Shape_4!gradients_3/concat_3_grad/Shape_5!gradients_3/concat_3_grad/Shape_6*
N*>
_output_shapes,
*:::::::
Р
gradients_3/concat_3_grad/SliceSlicegradients_3/mul_1_grad/Mul&gradients_3/concat_3_grad/ConcatOffsetgradients_3/concat_3_grad/Shape*
_output_shapes	
:Р*
T0*
Index0
Х
!gradients_3/concat_3_grad/Slice_1Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:1!gradients_3/concat_3_grad/Shape_1*
_output_shapes
:@*
Index0*
T0
Ц
!gradients_3/concat_3_grad/Slice_2Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:2!gradients_3/concat_3_grad/Shape_2*
_output_shapes	
: *
T0*
Index0
Х
!gradients_3/concat_3_grad/Slice_3Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:3!gradients_3/concat_3_grad/Shape_3*
T0*
Index0*
_output_shapes
:@
Ц
!gradients_3/concat_3_grad/Slice_4Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:4!gradients_3/concat_3_grad/Shape_4*
Index0*
T0*
_output_shapes	
:
Х
!gradients_3/concat_3_grad/Slice_5Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:5!gradients_3/concat_3_grad/Shape_5*
Index0*
T0*
_output_shapes
:
Х
!gradients_3/concat_3_grad/Slice_6Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:6!gradients_3/concat_3_grad/Shape_6*
_output_shapes
:*
Index0*
T0
r
!gradients_3/Reshape_31_grad/ShapeConst*
dtype0*
valueB"   @   *
_output_shapes
:
Љ
#gradients_3/Reshape_31_grad/ReshapeReshapegradients_3/concat_3_grad/Slice!gradients_3/Reshape_31_grad/Shape*
_output_shapes

:@*
Tshape0*
T0
k
!gradients_3/Reshape_32_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:@
Ї
#gradients_3/Reshape_32_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_1!gradients_3/Reshape_32_grad/Shape*
T0*
_output_shapes
:@*
Tshape0
r
!gradients_3/Reshape_33_grad/ShapeConst*
dtype0*
valueB"@   @   *
_output_shapes
:
Ћ
#gradients_3/Reshape_33_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_2!gradients_3/Reshape_33_grad/Shape*
T0*
Tshape0*
_output_shapes

:@@
k
!gradients_3/Reshape_34_grad/ShapeConst*
dtype0*
valueB:@*
_output_shapes
:
Ї
#gradients_3/Reshape_34_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_3!gradients_3/Reshape_34_grad/Shape*
_output_shapes
:@*
Tshape0*
T0
r
!gradients_3/Reshape_35_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"@      
Ћ
#gradients_3/Reshape_35_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_4!gradients_3/Reshape_35_grad/Shape*
_output_shapes

:@*
Tshape0*
T0
k
!gradients_3/Reshape_36_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
Ї
#gradients_3/Reshape_36_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_5!gradients_3/Reshape_36_grad/Shape*
T0*
Tshape0*
_output_shapes
:
k
!gradients_3/Reshape_37_grad/ShapeConst*
_output_shapes
:*
valueB:*
dtype0
Ї
#gradients_3/Reshape_37_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_6!gradients_3/Reshape_37_grad/Shape*
_output_shapes
:*
T0*
Tshape0
ё
Agradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGrad#gradients_3/Reshape_31_grad/Reshape*
transpose_b(*
transpose_a( *'
_output_shapes
:џџџџџџџџџ*
T0
з
Cgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1MatMulPlaceholder#gradients_3/Reshape_31_grad/Reshape*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ@
Ћ
Dgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeShape'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes
:*
out_type0*
T0

Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:@*
_output_shapes
:*
dtype0

Rgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ї
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
И
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeRgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
new_axis_mask *

begin_mask*
_output_shapes
:*
Index0*
end_mask *
shrink_axis_mask *
T0*
ellipsis_mask 

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
_output_shapes
:*
dtype0

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
_output_shapes
: *
value	B :*
dtype0
Ї
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
щ
Egradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Љ
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Р
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackVgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*

begin_mask*
T0*
shrink_axis_mask *
end_mask *
new_axis_mask *
ellipsis_mask *
Index0*
_output_shapes
:

Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
valueB:*
dtype0*
_output_shapes
:

Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
§
Ggradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
є
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_32_grad/ReshapeEgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat*
Tshape0*
_output_shapes

:@*
T0
 
Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/TileTileFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeGgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1*'
_output_shapes
:џџџџџџџџџ@*

Tmultiples0*
T0
ѕ
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMulMatMul)gradients_2/pi/dense_1/Tanh_grad/TanhGrad#gradients_3/Reshape_33_grad/Reshape*
T0*
transpose_b(*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( 
л
Egradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense/Tanh#gradients_3/Reshape_33_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@*
transpose_a( *
T0*
transpose_b( 
Џ
Fgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeShape)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
out_type0*
_output_shapes
:*
T0

Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:@*
_output_shapes
:*
dtype0

Tgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Љ
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
 
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Т
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*

begin_mask*
Index0*
shrink_axis_mask *
end_mask *
_output_shapes
:*
ellipsis_mask *
new_axis_mask *
T0

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
­
Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*

index_type0*
T0*
_output_shapes
:

Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ё
Ggradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axis*

Tidx0*
_output_shapes
:*
N*
T0
 
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ћ
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ђ
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ъ
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
shrink_axis_mask *
ellipsis_mask *
end_mask *
_output_shapes
:*
new_axis_mask 

Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
dtype0*
valueB:*
_output_shapes
:

Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Igradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*

Tidx0*
_output_shapes
:*
T0*
N
ј
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_34_grad/ReshapeGgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat*
_output_shapes

:@*
T0*
Tshape0
І
Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1*
T0*

Tmultiples0*'
_output_shapes
:џџџџџџџџџ@
я
Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMulMatMul#gradients_2/pi/sub_2_grad/Reshape_1#gradients_3/Reshape_35_grad/Reshape*
T0*
transpose_a( *
transpose_b(*'
_output_shapes
:џџџџџџџџџ@
н
Egradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_3/Reshape_35_grad/Reshape*
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b( 
Љ
Fgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeShape#gradients_2/pi/sub_2_grad/Reshape_1*
_output_shapes
:*
T0*
out_type0

Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:

Tgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Љ
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
 
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Т
Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
Index0*
_output_shapes
:*
new_axis_mask *
end_mask *

begin_mask*
ellipsis_mask *
T0*
shrink_axis_mask 

Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:

Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
dtype0*
value	B :*
_output_shapes
: 
­
Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
T0*
_output_shapes
:*

index_type0

Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
ё
Ggradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axis*

Tidx0*
T0*
_output_shapes
:*
N
 
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
Ћ
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
Ђ
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
ellipsis_mask *
new_axis_mask *

begin_mask*
T0*
Index0*
end_mask *
_output_shapes
:*
shrink_axis_mask 

Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
dtype0*
valueB:*
_output_shapes
:

Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Igradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*
_output_shapes
:*
N*

Tidx0
ј
Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_36_grad/ReshapeGgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat*
_output_shapes

:*
T0*
Tshape0
І
Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1*
T0*'
_output_shapes
:џџџџџџџџџ*

Tmultiples0
Е
gradients_3/AddNAddNCgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Tile*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1*
N*
T0*'
_output_shapes
:џџџџџџџџџ@

>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN*
valueB
 *   Р*
dtype0*
_output_shapes
: 
Ч
<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/y*
T0*'
_output_shapes
:џџџџџџџџџ@
р
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1Mul<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@*
T0
Ц
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2Mul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1pi/dense/Tanh*
T0*'
_output_shapes
:џџџџџџџџџ@
 
Agradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN*
T0*'
_output_shapes
:џџџџџџџџџ@
Є
4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/MulMul#gradients_3/Reshape_37_grad/Reshapegradients_2/pi/Exp_3_grad/mul*
T0*
_output_shapes
:

Fgradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Sum/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
ї
4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/SumSum4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/MulFgradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

>gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Reshape/shapeConst*
_output_shapes
: *
valueB *
dtype0
ш
8gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/ReshapeReshape4gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Sum>gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Reshape/shape*
_output_shapes
: *
Tshape0*
T0

6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Mul_1Mul
pi/mul_5/x#gradients_3/Reshape_37_grad/Reshape*
T0*
_output_shapes
:
ў
Agradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMulMatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_1/kernel/read*'
_output_shapes
:џџџџџџџџџ@*
T0*
transpose_b( *
transpose_a( 

Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1MatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGrad)gradients_2/pi/dense_1/Tanh_grad/TanhGrad*
T0*
transpose_b( *
_output_shapes

:@@*
transpose_a(
 
2gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/MulMul6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Mul_1pi/Exp_3*
_output_shapes
:*
T0
Н
4gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul_1Mul6gradients_3/gradients_2/pi/mul_5_grad/Mul_1_grad/Mul_1#gradients_2/pi/add_7_grad/Reshape_1*
_output_shapes
:*
T0

gradients_3/AddN_1AddNEgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@*
N*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1*
T0

@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN_1*
valueB
 *   Р*
_output_shapes
: *
dtype0
Э
>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN_1@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul/y*'
_output_shapes
:џџџџџџџџџ@*
T0
ф
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1Mul>gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_2/MatMul_grad/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ@
Ь
@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2Mul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_1pi/dense_1/Tanh*'
_output_shapes
:џџџџџџџџџ@*
T0
І
Cgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_1*'
_output_shapes
:џџџџџџџџџ@*
T0

gradients_3/pi/Exp_3_grad/mulMul4gradients_3/gradients_2/pi/Exp_3_grad/mul_grad/Mul_1pi/Exp_3*
T0*
_output_shapes
:

Agradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMulMatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_2/kernel/read*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( 

Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1MatMulCgradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/TanhGrad#gradients_2/pi/sub_2_grad/Reshape_1*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
y
gradients_3/pi/mul_5_grad/MulMulgradients_3/pi/Exp_3_grad/mulpi/log_std/read*
T0*
_output_shapes
:
y
/gradients_3/pi/mul_5_grad/Sum/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
В
gradients_3/pi/mul_5_grad/SumSumgradients_3/pi/mul_5_grad/Mul/gradients_3/pi/mul_5_grad/Sum/reduction_indices*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
j
'gradients_3/pi/mul_5_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
Ѓ
!gradients_3/pi/mul_5_grad/ReshapeReshapegradients_3/pi/mul_5_grad/Sum'gradients_3/pi/mul_5_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
v
gradients_3/pi/mul_5_grad/Mul_1Mul
pi/mul_5/xgradients_3/pi/Exp_3_grad/mul*
T0*
_output_shapes
:

gradients_3/AddN_2AddNEgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul*
N*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
:gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/ShapeShapegradients_2/pi/sub_2_grad/Sum_1*#
_output_shapes
:џџџџџџџџџ*
T0*
out_type0
Ш
<gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/ReshapeReshapegradients_3/AddN_2:gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/Shape*
T0*
_output_shapes
:*
Tshape0

6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/ShapeShapegradients_2/pi/sub_2_grad/Neg*
_output_shapes
:*
out_type0*
T0
Т
5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape
 
4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/addAddV21gradients_2/pi/sub_2_grad/BroadcastGradientArgs:15gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Size*
T0*#
_output_shapes
:џџџџџџџџџ*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape
І
4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/modFloorMod4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/add5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Size*#
_output_shapes
:џџџџџџџџџ*
T0*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape
ї
8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape_1Shape4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/mod*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
T0*
out_type0*
_output_shapes
:
Щ
<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/startConst*
_output_shapes
: *I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
value	B : *
dtype0
Щ
<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape
х
6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/rangeRange<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/start5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Size<gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range/delta*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
_output_shapes
:*

Tidx0
Ш
;gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Fill/valueConst*
value	B :*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
П
5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/FillFill8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape_1;gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Fill/value*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*

index_type0*
T0
Ў
>gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/DynamicStitchDynamicStitch6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/range4gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/mod6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Fill*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
N*
T0
Ч
:gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Maximum/yConst*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
_output_shapes
: *
dtype0*
value	B :
И
8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/MaximumMaximum>gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/DynamicStitch:gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
T0
Ї
9gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/floordivFloorDiv6gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Maximum*I
_class?
=;loc:@gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Shape*
_output_shapes
:*
T0
ђ
8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/ReshapeReshape<gradients_3/gradients_2/pi/sub_2_grad/Reshape_1_grad/Reshape>gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
і
5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/TileTile8gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Reshape9gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/floordiv*

Tmultiples0*'
_output_shapes
:џџџџџџџџџ*
T0
Ђ
2gradients_3/gradients_2/pi/sub_2_grad/Neg_grad/NegNeg5gradients_3/gradients_2/pi/sub_2_grad/Sum_1_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ

8gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/ShapeShapegradients_2/pi/pow_2_grad/Sum*
out_type0*#
_output_shapes
:џџџџџџџџџ*
T0
ф
:gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/ReshapeReshape2gradients_3/gradients_2/pi/sub_2_grad/Neg_grad/Neg8gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/Shape*
T0*
_output_shapes
:*
Tshape0

4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/ShapeShapegradients_2/pi/pow_2_grad/mul_1*
_output_shapes
:*
out_type0*
T0
О
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/SizeConst*
_output_shapes
: *G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
dtype0*
value	B :

2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/addAddV2/gradients_2/pi/pow_2_grad/BroadcastGradientArgs3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size*#
_output_shapes
:џџџџџџџџџ*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
T0

2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/modFloorMod2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/add3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0
ё
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape_1Shape2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/mod*
out_type0*
_output_shapes
:*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
T0
Х
:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/startConst*
_output_shapes
: *
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
value	B : 
Х
:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/deltaConst*
_output_shapes
: *
value	B :*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
dtype0
л
4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/rangeRange:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/start3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Size:gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range/delta*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
:*

Tidx0
Ф
9gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill/valueConst*
dtype0*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
: *
value	B :
З
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/FillFill6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape_19gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill/value*

index_type0*
T0*#
_output_shapes
:џџџџџџџџџ*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape
Ђ
<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitchDynamicStitch4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/range2gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/mod4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Fill*
N*#
_output_shapes
:џџџџџџџџџ*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
T0
У
8gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum/yConst*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
dtype0*
_output_shapes
: *
value	B :
А
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/MaximumMaximum<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitch8gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum/y*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0

7gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/floordivFloorDiv4gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Maximum*G
_class=
;9loc:@gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Shape*
_output_shapes
:*
T0
ь
6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/ReshapeReshape:gradients_3/gradients_2/pi/pow_2_grad/Reshape_grad/Reshape<gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
№
3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/TileTile6gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Reshape7gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/floordiv*'
_output_shapes
:џџџџџџџџџ*
T0*

Tmultiples0

6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/ShapeShapegradients_2/pi/pow_2_grad/mul*
_output_shapes
:*
T0*
out_type0

8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1Shapegradients_2/pi/pow_2_grad/Pow*
out_type0*
T0*
_output_shapes
:

Fgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
С
4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/MulMul3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Tilegradients_2/pi/pow_2_grad/Pow*'
_output_shapes
:џџџџџџџџџ*
T0
љ
4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/SumSum4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/MulFgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ё
8gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/ReshapeReshape4gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
У
6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Mul_1Mulgradients_2/pi/pow_2_grad/mul3gradients_3/gradients_2/pi/pow_2_grad/Sum_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
џ
6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum_1Sum6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Mul_1Hgradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
ї
:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1Reshape6gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Sum_18gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0
|
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ShapeShapepi/sub_2*
T0*
out_type0*
_output_shapes
:

6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1Shapegradients_2/pi/pow_2_grad/sub*
out_type0*
T0*
_output_shapes
: 

Dgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ц
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mulMul:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1gradients_2/pi/pow_2_grad/sub*
T0*'
_output_shapes
:џџџџџџџџџ
y
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Џ
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/subSubgradients_2/pi/pow_2_grad/sub4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub/y*
T0*
_output_shapes
: 
Љ
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/PowPowpi/sub_22gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/sub*'
_output_shapes
:џџџџџџџџџ*
T0
е
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_1Mul2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Pow*'
_output_shapes
:џџџџџџџџџ*
T0
ѕ
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/SumSum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_1Dgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ы
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ReshapeReshape2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
}
8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
З
6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/GreaterGreaterpi/sub_28gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater/y*'
_output_shapes
:џџџџџџџџџ*
T0

>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/ShapeShapepi/sub_2*
T0*
_output_shapes
:*
out_type0

>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_likeFill>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/Shape>gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like/Const*'
_output_shapes
:џџџџџџџџџ*

index_type0*
T0
э
5gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/SelectSelect6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greaterpi/sub_28gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/LogLog5gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select*
T0*'
_output_shapes
:џџџџџџџџџ

9gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/zeros_like	ZerosLikepi/sub_2*
T0*'
_output_shapes
:џџџџџџџџџ

7gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select_1Select6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Greater2gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Log9gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_2Mul:gradients_3/gradients_2/pi/pow_2_grad/mul_1_grad/Reshape_1gradients_2/pi/pow_2_grad/Pow*'
_output_shapes
:џџџџџџџџџ*
T0
м
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_3Mul4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_27gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Select_1*'
_output_shapes
:џџџџџџџџџ*
T0
љ
4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum_1Sum4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/mul_3Fgradients_3/gradients_2/pi/pow_2_grad/Pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
р
8gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape_1Reshape4gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Sum_16gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
m
gradients_3/pi/sub_2_grad/ShapeShapepi/Placeholder*
out_type0*
_output_shapes
:*
T0
s
!gradients_3/pi/sub_2_grad/Shape_1Shapepi/dense_2/BiasAdd*
out_type0*
T0*
_output_shapes
:
Щ
/gradients_3/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_3/pi/sub_2_grad/Shape!gradients_3/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Э
gradients_3/pi/sub_2_grad/SumSum6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape/gradients_3/pi/sub_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ќ
!gradients_3/pi/sub_2_grad/ReshapeReshapegradients_3/pi/sub_2_grad/Sumgradients_3/pi/sub_2_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

gradients_3/pi/sub_2_grad/NegNeg6gradients_3/gradients_2/pi/pow_2_grad/Pow_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
И
gradients_3/pi/sub_2_grad/Sum_1Sumgradients_3/pi/sub_2_grad/Neg1gradients_3/pi/sub_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
В
#gradients_3/pi/sub_2_grad/Reshape_1Reshapegradients_3/pi/sub_2_grad/Sum_1!gradients_3/pi/sub_2_grad/Shape_1*
Tshape0*
T0*'
_output_shapes
:џџџџџџџџџ

/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients_3/pi/sub_2_grad/Reshape_1*
_output_shapes
:*
T0*
data_formatNHWC
Ш
)gradients_3/pi/dense_2/MatMul_grad/MatMulMatMul#gradients_3/pi/sub_2_grad/Reshape_1pi/dense_2/kernel/read*
transpose_a( *'
_output_shapes
:џџџџџџџџџ@*
T0*
transpose_b(
К
+gradients_3/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Tanh#gradients_3/pi/sub_2_grad/Reshape_1*
transpose_a(*
_output_shapes

:@*
T0*
transpose_b( 
п
gradients_3/AddN_3AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul@gradients_3/gradients_2/pi/dense_1/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul*
T0*
N

)gradients_3/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanhgradients_3/AddN_3*
T0*'
_output_shapes
:џџџџџџџџџ@

gradients_3/AddN_4AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1*
N
Ѕ
/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
_output_shapes
:@*
data_formatNHWC*
T0
Ю
)gradients_3/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_3/pi/dense_1/Tanh_grad/TanhGradpi/dense_1/kernel/read*
transpose_a( *
T0*
transpose_b(*'
_output_shapes
:џџџџџџџџџ@
О
+gradients_3/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh)gradients_3/pi/dense_1/Tanh_grad/TanhGrad*
T0*
_output_shapes

:@@*
transpose_a(*
transpose_b( 
н
gradients_3/AddN_5AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_1/MatMul_grad/MatMul*
T0*
N*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@

'gradients_3/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN_5*
T0*'
_output_shapes
:џџџџџџџџџ@

gradients_3/AddN_6AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_1/MatMul_grad/MatMul_1*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1*
_output_shapes

:@@*
N*
T0
Ё
-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_3/pi/dense/Tanh_grad/TanhGrad*
T0*
_output_shapes
:@*
data_formatNHWC
Ш
'gradients_3/pi/dense/MatMul_grad/MatMulMatMul'gradients_3/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*
transpose_b(*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
И
)gradients_3/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_3/pi/dense/Tanh_grad/TanhGrad*
transpose_a(*
T0*
_output_shapes

:@*
transpose_b( 
c
Reshape_38/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ


Reshape_38Reshape)gradients_3/pi/dense/MatMul_grad/MatMul_1Reshape_38/shape*
T0*
_output_shapes	
:Р*
Tshape0
c
Reshape_39/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_39Reshape-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradReshape_39/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_40/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
o

Reshape_40Reshapegradients_3/AddN_6Reshape_40/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_41/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_41Reshape/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_41/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_42/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
o

Reshape_42Reshapegradients_3/AddN_4Reshape_42/shape*
_output_shapes	
:*
Tshape0*
T0
c
Reshape_43/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ


Reshape_43Reshape/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_43/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_44/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
{

Reshape_44Reshapegradients_3/pi/mul_5_grad/Mul_1Reshape_44/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_4/axisConst*
value	B : *
_output_shapes
: *
dtype0
В
concat_4ConcatV2
Reshape_38
Reshape_39
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44concat_4/axis*
_output_shapes	
:Ь,*
N*
T0*

Tidx0
L
mul_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬЬ=
J
mul_2Mulmul_2/xPlaceholder_5*
_output_shapes	
:Ь,*
T0
C
addAddV2concat_4mul_2*
_output_shapes	
:Ь,*
T0
c
Reshape_45/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
q

Reshape_45Reshapepi/dense/kernel/readReshape_45/shape*
T0*
_output_shapes	
:Р*
Tshape0
c
Reshape_46/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
n

Reshape_46Reshapepi/dense/bias/readReshape_46/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_47/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
s

Reshape_47Reshapepi/dense_1/kernel/readReshape_47/shape*
_output_shapes	
: *
T0*
Tshape0
c
Reshape_48/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
p

Reshape_48Reshapepi/dense_1/bias/readReshape_48/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_49/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
s

Reshape_49Reshapepi/dense_2/kernel/readReshape_49/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_50/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
p

Reshape_50Reshapepi/dense_2/bias/readReshape_50/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_51/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
k

Reshape_51Reshapepi/log_std/readReshape_51/shape*
Tshape0*
T0*
_output_shapes
:
O
concat_5/axisConst*
dtype0*
value	B : *
_output_shapes
: 
В
concat_5ConcatV2
Reshape_45
Reshape_46
Reshape_47
Reshape_48
Reshape_49
Reshape_50
Reshape_51concat_5/axis*

Tidx0*
N*
_output_shapes	
:Ь,*
T0
l
Const_5Const*
dtype0*1
value(B&"@  @      @           *
_output_shapes
:
S
split_2/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 
Ѕ
split_2SplitVPlaceholder_5Const_5split_2/split_dim*

Tlen0*
	num_split*
T0*A
_output_shapes/
-:Р:@: :@:::
a
Reshape_52/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
g

Reshape_52Reshapesplit_2Reshape_52/shape*
Tshape0*
T0*
_output_shapes

:@
Z
Reshape_53/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
e

Reshape_53Reshape	split_2:1Reshape_53/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_54/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
i

Reshape_54Reshape	split_2:2Reshape_54/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_55/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_55Reshape	split_2:3Reshape_55/shape*
Tshape0*
T0*
_output_shapes
:@
a
Reshape_56/shapeConst*
_output_shapes
:*
dtype0*
valueB"@      
i

Reshape_56Reshape	split_2:4Reshape_56/shape*
_output_shapes

:@*
Tshape0*
T0
Z
Reshape_57/shapeConst*
dtype0*
valueB:*
_output_shapes
:
e

Reshape_57Reshape	split_2:5Reshape_57/shape*
Tshape0*
T0*
_output_shapes
:
Z
Reshape_58/shapeConst*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_58Reshape	split_2:6Reshape_58/shape*
_output_shapes
:*
T0*
Tshape0
Ѕ
Assign_6Assignpi/dense/kernel
Reshape_52*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
use_locking(*
validate_shape(

Assign_7Assignpi/dense/bias
Reshape_53*
_output_shapes
:@*
use_locking(*
validate_shape(* 
_class
loc:@pi/dense/bias*
T0
Љ
Assign_8Assignpi/dense_1/kernel
Reshape_54*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
validate_shape(
Ё
Assign_9Assignpi/dense_1/bias
Reshape_55*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(*"
_class
loc:@pi/dense_1/bias
Њ
	Assign_10Assignpi/dense_2/kernel
Reshape_56*
_output_shapes

:@*
T0*
validate_shape(*$
_class
loc:@pi/dense_2/kernel*
use_locking(
Ђ
	Assign_11Assignpi/dense_2/bias
Reshape_57*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(

	Assign_12Assign
pi/log_std
Reshape_58*
validate_shape(*
_class
loc:@pi/log_std*
use_locking(*
_output_shapes
:*
T0
d
group_deps_2NoOp
^Assign_10
^Assign_11
^Assign_12	^Assign_6	^Assign_7	^Assign_8	^Assign_9
р
initNoOp^beta1_power/Assign^beta2_power/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Assign^pi/log_std/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign^v/dense_2/bias/Adam/Assign^v/dense_2/bias/Adam_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/Adam/Assign^v/dense_2/kernel/Adam_1/Assign^v/dense_2/kernel/Assign
c
Reshape_59/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
q

Reshape_59Reshapepi/dense/kernel/readReshape_59/shape*
_output_shapes	
:Р*
Tshape0*
T0
c
Reshape_60/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
n

Reshape_60Reshapepi/dense/bias/readReshape_60/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_61/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
s

Reshape_61Reshapepi/dense_1/kernel/readReshape_61/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_62/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
p

Reshape_62Reshapepi/dense_1/bias/readReshape_62/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_63/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
s

Reshape_63Reshapepi/dense_2/kernel/readReshape_63/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_64/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
p

Reshape_64Reshapepi/dense_2/bias/readReshape_64/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_65/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
k

Reshape_65Reshapepi/log_std/readReshape_65/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_66/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
p

Reshape_66Reshapev/dense/kernel/readReshape_66/shape*
T0*
Tshape0*
_output_shapes	
:Р
c
Reshape_67/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
m

Reshape_67Reshapev/dense/bias/readReshape_67/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_68/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
r

Reshape_68Reshapev/dense_1/kernel/readReshape_68/shape*
Tshape0*
_output_shapes	
: *
T0
c
Reshape_69/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
o

Reshape_69Reshapev/dense_1/bias/readReshape_69/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_70/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
q

Reshape_70Reshapev/dense_2/kernel/readReshape_70/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_71/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
o

Reshape_71Reshapev/dense_2/bias/readReshape_71/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_72/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
l

Reshape_72Reshapebeta1_power/readReshape_72/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_73/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
l

Reshape_73Reshapebeta2_power/readReshape_73/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_74/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_74Reshapev/dense/kernel/Adam/readReshape_74/shape*
Tshape0*
_output_shapes	
:Р*
T0
c
Reshape_75/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
w

Reshape_75Reshapev/dense/kernel/Adam_1/readReshape_75/shape*
_output_shapes	
:Р*
Tshape0*
T0
c
Reshape_76/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
r

Reshape_76Reshapev/dense/bias/Adam/readReshape_76/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_77/shapeConst*
valueB:
џџџџџџџџџ*
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
џџџџџџџџџ*
_output_shapes
:*
dtype0
w

Reshape_78Reshapev/dense_1/kernel/Adam/readReshape_78/shape*
T0*
Tshape0*
_output_shapes	
: 
c
Reshape_79/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
y

Reshape_79Reshapev/dense_1/kernel/Adam_1/readReshape_79/shape*
_output_shapes	
: *
Tshape0*
T0
c
Reshape_80/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
t

Reshape_80Reshapev/dense_1/bias/Adam/readReshape_80/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_81/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
v

Reshape_81Reshapev/dense_1/bias/Adam_1/readReshape_81/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_82/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
v

Reshape_82Reshapev/dense_2/kernel/Adam/readReshape_82/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_83/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x

Reshape_83Reshapev/dense_2/kernel/Adam_1/readReshape_83/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_84/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
t

Reshape_84Reshapev/dense_2/bias/Adam/readReshape_84/shape*
_output_shapes
:*
Tshape0*
T0
c
Reshape_85/shapeConst*
valueB:
џџџџџџџџџ*
_output_shapes
:*
dtype0
v

Reshape_85Reshapev/dense_2/bias/Adam_1/readReshape_85/shape*
Tshape0*
T0*
_output_shapes
:
O
concat_6/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ѓ
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
T0*
N*

Tidx0*
_output_shapes

:бЊ
h
PyFunc_2PyFuncconcat_6*
Tout
2*
Tin
2*
_output_shapes
:*
token
pyfunc_2
Н
Const_6Const*
dtype0*
valuexBv"l@  @      @           @  @      @   @            @  @  @   @         @   @   @   @         *
_output_shapes
:
S
split_3/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 
р
split_3SplitVPyFunc_2Const_6split_3/split_dim*
_output_shapesn
l:::::::::::::::::::::::::::*
	num_split*
T0*

Tlen0
a
Reshape_86/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   
g

Reshape_86Reshapesplit_3Reshape_86/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_87/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
e

Reshape_87Reshape	split_3:1Reshape_87/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_88/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
i

Reshape_88Reshape	split_3:2Reshape_88/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_89/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
e

Reshape_89Reshape	split_3:3Reshape_89/shape*
T0*
_output_shapes
:@*
Tshape0
a
Reshape_90/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
i

Reshape_90Reshape	split_3:4Reshape_90/shape*
_output_shapes

:@*
T0*
Tshape0
Z
Reshape_91/shapeConst*
_output_shapes
:*
dtype0*
valueB:
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

Reshape_92Reshape	split_3:6Reshape_92/shape*
_output_shapes
:*
T0*
Tshape0
a
Reshape_93/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
i

Reshape_93Reshape	split_3:7Reshape_93/shape*
T0*
_output_shapes

:@*
Tshape0
Z
Reshape_94/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_94Reshape	split_3:8Reshape_94/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_95/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
i

Reshape_95Reshape	split_3:9Reshape_95/shape*
T0*
_output_shapes

:@@*
Tshape0
Z
Reshape_96/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
f

Reshape_96Reshape
split_3:10Reshape_96/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_97/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
j

Reshape_97Reshape
split_3:11Reshape_97/shape*
_output_shapes

:@*
Tshape0*
T0
Z
Reshape_98/shapeConst*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_98Reshape
split_3:12Reshape_98/shape*
T0*
_output_shapes
:*
Tshape0
S
Reshape_99/shapeConst*
_output_shapes
: *
valueB *
dtype0
b

Reshape_99Reshape
split_3:13Reshape_99/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_100/shapeConst*
_output_shapes
: *
dtype0*
valueB 
d
Reshape_100Reshape
split_3:14Reshape_100/shape*
Tshape0*
T0*
_output_shapes
: 
b
Reshape_101/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
l
Reshape_101Reshape
split_3:15Reshape_101/shape*
_output_shapes

:@*
T0*
Tshape0
b
Reshape_102/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
l
Reshape_102Reshape
split_3:16Reshape_102/shape*
Tshape0*
T0*
_output_shapes

:@
[
Reshape_103/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
h
Reshape_103Reshape
split_3:17Reshape_103/shape*
_output_shapes
:@*
T0*
Tshape0
[
Reshape_104/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_104Reshape
split_3:18Reshape_104/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_105/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_105Reshape
split_3:19Reshape_105/shape*
T0*
_output_shapes

:@@*
Tshape0
b
Reshape_106/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
l
Reshape_106Reshape
split_3:20Reshape_106/shape*
T0*
_output_shapes

:@@*
Tshape0
[
Reshape_107/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_107Reshape
split_3:21Reshape_107/shape*
_output_shapes
:@*
T0*
Tshape0
[
Reshape_108/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_108Reshape
split_3:22Reshape_108/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_109/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_109Reshape
split_3:23Reshape_109/shape*
Tshape0*
_output_shapes

:@*
T0
b
Reshape_110/shapeConst*
dtype0*
valueB"@      *
_output_shapes
:
l
Reshape_110Reshape
split_3:24Reshape_110/shape*
Tshape0*
_output_shapes

:@*
T0
[
Reshape_111/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_111Reshape
split_3:25Reshape_111/shape*
_output_shapes
:*
Tshape0*
T0
[
Reshape_112/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_112Reshape
split_3:26Reshape_112/shape*
_output_shapes
:*
T0*
Tshape0
І
	Assign_13Assignpi/dense/kernel
Reshape_86*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
T0

	Assign_14Assignpi/dense/bias
Reshape_87*
validate_shape(*
T0*
_output_shapes
:@*
use_locking(* 
_class
loc:@pi/dense/bias
Њ
	Assign_15Assignpi/dense_1/kernel
Reshape_88*
validate_shape(*
T0*
use_locking(*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Ђ
	Assign_16Assignpi/dense_1/bias
Reshape_89*
validate_shape(*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@
Њ
	Assign_17Assignpi/dense_2/kernel
Reshape_90*
T0*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
validate_shape(*
_output_shapes

:@
Ђ
	Assign_18Assignpi/dense_2/bias
Reshape_91*"
_class
loc:@pi/dense_2/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:

	Assign_19Assign
pi/log_std
Reshape_92*
_output_shapes
:*
_class
loc:@pi/log_std*
validate_shape(*
use_locking(*
T0
Є
	Assign_20Assignv/dense/kernel
Reshape_93*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
T0*
use_locking(*
validate_shape(

	Assign_21Assignv/dense/bias
Reshape_94*
T0*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
:@*
validate_shape(
Ј
	Assign_22Assignv/dense_1/kernel
Reshape_95*
use_locking(*
T0*
validate_shape(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
 
	Assign_23Assignv/dense_1/bias
Reshape_96*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0*
use_locking(*
_output_shapes
:@
Ј
	Assign_24Assignv/dense_2/kernel
Reshape_97*
use_locking(*
validate_shape(*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
 
	Assign_25Assignv/dense_2/bias
Reshape_98*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*!
_class
loc:@v/dense_2/bias

	Assign_26Assignbeta1_power
Reshape_99*
use_locking(*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
T0

	Assign_27Assignbeta2_powerReshape_100*
_output_shapes
: *
_class
loc:@v/dense/bias*
use_locking(*
T0*
validate_shape(
Њ
	Assign_28Assignv/dense/kernel/AdamReshape_101*
_output_shapes

:@*
use_locking(*!
_class
loc:@v/dense/kernel*
T0*
validate_shape(
Ќ
	Assign_29Assignv/dense/kernel/Adam_1Reshape_102*
T0*
use_locking(*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
validate_shape(
Ђ
	Assign_30Assignv/dense/bias/AdamReshape_103*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
:@*
validate_shape(*
T0
Є
	Assign_31Assignv/dense/bias/Adam_1Reshape_104*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@
Ў
	Assign_32Assignv/dense_1/kernel/AdamReshape_105*
validate_shape(*
T0*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
use_locking(
А
	Assign_33Assignv/dense_1/kernel/Adam_1Reshape_106*
T0*#
_class
loc:@v/dense_1/kernel*
use_locking(*
_output_shapes

:@@*
validate_shape(
І
	Assign_34Assignv/dense_1/bias/AdamReshape_107*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*!
_class
loc:@v/dense_1/bias
Ј
	Assign_35Assignv/dense_1/bias/Adam_1Reshape_108*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ў
	Assign_36Assignv/dense_2/kernel/AdamReshape_109*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@
А
	Assign_37Assignv/dense_2/kernel/Adam_1Reshape_110*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel*
use_locking(*
validate_shape(
І
	Assign_38Assignv/dense_2/bias/AdamReshape_111*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*!
_class
loc:@v/dense_2/bias
Ј
	Assign_39Assignv/dense_2/bias/Adam_1Reshape_112*
validate_shape(*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
use_locking(*
T0
и
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
save/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: *
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_3db03e65fbad46e3b01b5d7954418337/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
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
о
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1

save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*
N*

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
с
save/RestoreV2/tensor_namesConst*
dtype0*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*)
dtypes
2*
_output_shapesn
l:::::::::::::::::::::::::::

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
validate_shape(*
_output_shapes
: *
_class
loc:@v/dense/bias
Ё
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
_output_shapes
: *
validate_shape(*
T0*
_class
loc:@v/dense/bias*
use_locking(
Ј
save/Assign_2Assignpi/dense/biassave/RestoreV2:2*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(* 
_class
loc:@pi/dense/bias
А
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
validate_shape(*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
T0*
use_locking(
Ќ
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
validate_shape(*
T0*
_output_shapes
:@*
use_locking(*"
_class
loc:@pi/dense_1/bias
Д
save/Assign_5Assignpi/dense_1/kernelsave/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@@
Ќ
save/Assign_6Assignpi/dense_2/biassave/RestoreV2:6*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
T0*
use_locking(*
validate_shape(
Д
save/Assign_7Assignpi/dense_2/kernelsave/RestoreV2:7*
T0*
use_locking(*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
Ђ
save/Assign_8Assign
pi/log_stdsave/RestoreV2:8*
_class
loc:@pi/log_std*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
І
save/Assign_9Assignv/dense/biassave/RestoreV2:9*
T0*
_output_shapes
:@*
validate_shape(*
use_locking(*
_class
loc:@v/dense/bias
­
save/Assign_10Assignv/dense/bias/Adamsave/RestoreV2:10*
T0*
validate_shape(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(
Џ
save/Assign_11Assignv/dense/bias/Adam_1save/RestoreV2:11*
_class
loc:@v/dense/bias*
validate_shape(*
T0*
_output_shapes
:@*
use_locking(
А
save/Assign_12Assignv/dense/kernelsave/RestoreV2:12*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
use_locking(*
validate_shape(
Е
save/Assign_13Assignv/dense/kernel/Adamsave/RestoreV2:13*
_output_shapes

:@*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0*
use_locking(
З
save/Assign_14Assignv/dense/kernel/Adam_1save/RestoreV2:14*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
use_locking(*
T0*
validate_shape(
Ќ
save/Assign_15Assignv/dense_1/biassave/RestoreV2:15*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0*
_output_shapes
:@*
use_locking(
Б
save/Assign_16Assignv/dense_1/bias/Adamsave/RestoreV2:16*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
T0*
validate_shape(*
use_locking(
Г
save/Assign_17Assignv/dense_1/bias/Adam_1save/RestoreV2:17*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
T0*
validate_shape(*
use_locking(
Д
save/Assign_18Assignv/dense_1/kernelsave/RestoreV2:18*
T0*
_output_shapes

:@@*
use_locking(*#
_class
loc:@v/dense_1/kernel*
validate_shape(
Й
save/Assign_19Assignv/dense_1/kernel/Adamsave/RestoreV2:19*
T0*
_output_shapes

:@@*
validate_shape(*
use_locking(*#
_class
loc:@v/dense_1/kernel
Л
save/Assign_20Assignv/dense_1/kernel/Adam_1save/RestoreV2:20*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@@
Ќ
save/Assign_21Assignv/dense_2/biassave/RestoreV2:21*
T0*
validate_shape(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
use_locking(
Б
save/Assign_22Assignv/dense_2/bias/Adamsave/RestoreV2:22*
T0*!
_class
loc:@v/dense_2/bias*
use_locking(*
validate_shape(*
_output_shapes
:
Г
save/Assign_23Assignv/dense_2/bias/Adam_1save/RestoreV2:23*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
Д
save/Assign_24Assignv/dense_2/kernelsave/RestoreV2:24*
_output_shapes

:@*
use_locking(*#
_class
loc:@v/dense_2/kernel*
T0*
validate_shape(
Й
save/Assign_25Assignv/dense_2/kernel/Adamsave/RestoreV2:25*
T0*
use_locking(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
validate_shape(
Л
save/Assign_26Assignv/dense_2/kernel/Adam_1save/RestoreV2:26*
T0*
validate_shape(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
use_locking(
й
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
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
shape: *
_output_shapes
: *
dtype0
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_c8a79dff8d4f48879121fa53c84c16c8/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
р
save_1/SaveV2/tensor_namesConst*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:*
dtype0

save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ѓ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
_output_shapes
:*
N*
T0

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
у
save_1/RestoreV2/tensor_namesConst*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*)
dtypes
2*
_output_shapesn
l:::::::::::::::::::::::::::
Ё
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
_output_shapes
: *
use_locking(*
_class
loc:@v/dense/bias*
validate_shape(*
T0
Ѕ
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
_output_shapes
: *
T0*
use_locking(*
validate_shape(*
_class
loc:@v/dense/bias
Ќ
save_1/Assign_2Assignpi/dense/biassave_1/RestoreV2:2*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0* 
_class
loc:@pi/dense/bias
Д
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@
А
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
_output_shapes
:@*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense_1/bias*
T0
И
save_1/Assign_5Assignpi/dense_1/kernelsave_1/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0*
validate_shape(*
use_locking(
А
save_1/Assign_6Assignpi/dense_2/biassave_1/RestoreV2:6*
_output_shapes
:*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
T0*
use_locking(
И
save_1/Assign_7Assignpi/dense_2/kernelsave_1/RestoreV2:7*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
І
save_1/Assign_8Assign
pi/log_stdsave_1/RestoreV2:8*
_class
loc:@pi/log_std*
use_locking(*
T0*
_output_shapes
:*
validate_shape(
Њ
save_1/Assign_9Assignv/dense/biassave_1/RestoreV2:9*
validate_shape(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(*
T0
Б
save_1/Assign_10Assignv/dense/bias/Adamsave_1/RestoreV2:10*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(
Г
save_1/Assign_11Assignv/dense/bias/Adam_1save_1/RestoreV2:11*
T0*
validate_shape(*
use_locking(*
_output_shapes
:@*
_class
loc:@v/dense/bias
Д
save_1/Assign_12Assignv/dense/kernelsave_1/RestoreV2:12*
T0*
use_locking(*
validate_shape(*
_output_shapes

:@*!
_class
loc:@v/dense/kernel
Й
save_1/Assign_13Assignv/dense/kernel/Adamsave_1/RestoreV2:13*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
Л
save_1/Assign_14Assignv/dense/kernel/Adam_1save_1/RestoreV2:14*!
_class
loc:@v/dense/kernel*
use_locking(*
T0*
_output_shapes

:@*
validate_shape(
А
save_1/Assign_15Assignv/dense_1/biassave_1/RestoreV2:15*
use_locking(*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
validate_shape(
Е
save_1/Assign_16Assignv/dense_1/bias/Adamsave_1/RestoreV2:16*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
З
save_1/Assign_17Assignv/dense_1/bias/Adam_1save_1/RestoreV2:17*
use_locking(*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
T0
И
save_1/Assign_18Assignv/dense_1/kernelsave_1/RestoreV2:18*
T0*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
validate_shape(
Н
save_1/Assign_19Assignv/dense_1/kernel/Adamsave_1/RestoreV2:19*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
П
save_1/Assign_20Assignv/dense_1/kernel/Adam_1save_1/RestoreV2:20*
use_locking(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(*
T0
А
save_1/Assign_21Assignv/dense_2/biassave_1/RestoreV2:21*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Е
save_1/Assign_22Assignv/dense_2/bias/Adamsave_1/RestoreV2:22*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
validate_shape(
З
save_1/Assign_23Assignv/dense_2/bias/Adam_1save_1/RestoreV2:23*
T0*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
use_locking(*
validate_shape(
И
save_1/Assign_24Assignv/dense_2/kernelsave_1/RestoreV2:24*
use_locking(*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes

:@*
validate_shape(
Н
save_1/Assign_25Assignv/dense_2/kernel/Adamsave_1/RestoreV2:25*
T0*
_output_shapes

:@*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
use_locking(
П
save_1/Assign_26Assignv/dense_2/kernel/Adam_1save_1/RestoreV2:26*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes

:@

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
_output_shapes
: *
dtype0*
shape: 

save_2/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_9691a278f00c4099adf3cd359601d81d/part
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_2/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_2/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
р
save_2/SaveV2/tensor_namesConst*
_output_shapes
:*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0

save_2/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0

save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: *
T0
Ѓ
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
_output_shapes
:*

axis *
T0*
N

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0
у
save_2/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0

!save_2/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*)
dtypes
2*
_output_shapesn
l:::::::::::::::::::::::::::
Ё
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
T0*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
: *
validate_shape(
Ѕ
save_2/Assign_1Assignbeta2_powersave_2/RestoreV2:1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@v/dense/bias
Ќ
save_2/Assign_2Assignpi/dense/biassave_2/RestoreV2:2* 
_class
loc:@pi/dense/bias*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(
Д
save_2/Assign_3Assignpi/dense/kernelsave_2/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@
А
save_2/Assign_4Assignpi/dense_1/biassave_2/RestoreV2:4*
_output_shapes
:@*
T0*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
use_locking(
И
save_2/Assign_5Assignpi/dense_1/kernelsave_2/RestoreV2:5*
use_locking(*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
А
save_2/Assign_6Assignpi/dense_2/biassave_2/RestoreV2:6*
use_locking(*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:
И
save_2/Assign_7Assignpi/dense_2/kernelsave_2/RestoreV2:7*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
validate_shape(*
use_locking(*
T0
І
save_2/Assign_8Assign
pi/log_stdsave_2/RestoreV2:8*
_output_shapes
:*
T0*
_class
loc:@pi/log_std*
use_locking(*
validate_shape(
Њ
save_2/Assign_9Assignv/dense/biassave_2/RestoreV2:9*
validate_shape(*
use_locking(*
_class
loc:@v/dense/bias*
T0*
_output_shapes
:@
Б
save_2/Assign_10Assignv/dense/bias/Adamsave_2/RestoreV2:10*
validate_shape(*
_class
loc:@v/dense/bias*
use_locking(*
T0*
_output_shapes
:@
Г
save_2/Assign_11Assignv/dense/bias/Adam_1save_2/RestoreV2:11*
validate_shape(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0*
use_locking(
Д
save_2/Assign_12Assignv/dense/kernelsave_2/RestoreV2:12*
_output_shapes

:@*
validate_shape(*!
_class
loc:@v/dense/kernel*
use_locking(*
T0
Й
save_2/Assign_13Assignv/dense/kernel/Adamsave_2/RestoreV2:13*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(
Л
save_2/Assign_14Assignv/dense/kernel/Adam_1save_2/RestoreV2:14*!
_class
loc:@v/dense/kernel*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@
А
save_2/Assign_15Assignv/dense_1/biassave_2/RestoreV2:15*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(*
validate_shape(
Е
save_2/Assign_16Assignv/dense_1/bias/Adamsave_2/RestoreV2:16*
use_locking(*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
T0
З
save_2/Assign_17Assignv/dense_1/bias/Adam_1save_2/RestoreV2:17*!
_class
loc:@v/dense_1/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes
:@
И
save_2/Assign_18Assignv/dense_1/kernelsave_2/RestoreV2:18*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@*
use_locking(*
validate_shape(
Н
save_2/Assign_19Assignv/dense_1/kernel/Adamsave_2/RestoreV2:19*
T0*
use_locking(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(
П
save_2/Assign_20Assignv/dense_1/kernel/Adam_1save_2/RestoreV2:20*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
T0*
use_locking(
А
save_2/Assign_21Assignv/dense_2/biassave_2/RestoreV2:21*
validate_shape(*
use_locking(*
T0*
_output_shapes
:*!
_class
loc:@v/dense_2/bias
Е
save_2/Assign_22Assignv/dense_2/bias/Adamsave_2/RestoreV2:22*
_output_shapes
:*
use_locking(*!
_class
loc:@v/dense_2/bias*
T0*
validate_shape(
З
save_2/Assign_23Assignv/dense_2/bias/Adam_1save_2/RestoreV2:23*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
T0*
use_locking(*
validate_shape(
И
save_2/Assign_24Assignv/dense_2/kernelsave_2/RestoreV2:24*
use_locking(*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
T0
Н
save_2/Assign_25Assignv/dense_2/kernel/Adamsave_2/RestoreV2:25*
_output_shapes

:@*
validate_shape(*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel
П
save_2/Assign_26Assignv/dense_2/kernel/Adam_1save_2/RestoreV2:26*
_output_shapes

:@*
T0*
use_locking(*#
_class
loc:@v/dense_2/kernel*
validate_shape(

save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
shape: *
_output_shapes
: 

save_3/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_964cff16e1064ff4acd437d6ef96ed95/part*
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
save_3/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_3/ShardedFilename/shardConst*
value	B : *
_output_shapes
: *
dtype0

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
р
save_3/SaveV2/tensor_namesConst*
dtype0*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:

save_3/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2

save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_3/ShardedFilename
Ѓ
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*
_output_shapes
:*
N*
T0*

axis 

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
_output_shapes
: *
T0
у
save_3/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1

!save_3/RestoreV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0

save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2
Ё
save_3/AssignAssignbeta1_powersave_3/RestoreV2*
_class
loc:@v/dense/bias*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
Ѕ
save_3/Assign_1Assignbeta2_powersave_3/RestoreV2:1*
use_locking(*
T0*
_output_shapes
: *
validate_shape(*
_class
loc:@v/dense/bias
Ќ
save_3/Assign_2Assignpi/dense/biassave_3/RestoreV2:2*
use_locking(*
validate_shape(* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes
:@
Д
save_3/Assign_3Assignpi/dense/kernelsave_3/RestoreV2:3*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(
А
save_3/Assign_4Assignpi/dense_1/biassave_3/RestoreV2:4*
use_locking(*
T0*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
validate_shape(
И
save_3/Assign_5Assignpi/dense_1/kernelsave_3/RestoreV2:5*
use_locking(*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
T0*
_output_shapes

:@@
А
save_3/Assign_6Assignpi/dense_2/biassave_3/RestoreV2:6*
_output_shapes
:*
validate_shape(*
T0*
use_locking(*"
_class
loc:@pi/dense_2/bias
И
save_3/Assign_7Assignpi/dense_2/kernelsave_3/RestoreV2:7*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
T0*
use_locking(
І
save_3/Assign_8Assign
pi/log_stdsave_3/RestoreV2:8*
T0*
_class
loc:@pi/log_std*
_output_shapes
:*
validate_shape(*
use_locking(
Њ
save_3/Assign_9Assignv/dense/biassave_3/RestoreV2:9*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0*
validate_shape(*
use_locking(
Б
save_3/Assign_10Assignv/dense/bias/Adamsave_3/RestoreV2:10*
_class
loc:@v/dense/bias*
use_locking(*
_output_shapes
:@*
T0*
validate_shape(
Г
save_3/Assign_11Assignv/dense/bias/Adam_1save_3/RestoreV2:11*
validate_shape(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0*
use_locking(
Д
save_3/Assign_12Assignv/dense/kernelsave_3/RestoreV2:12*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
validate_shape(*
use_locking(
Й
save_3/Assign_13Assignv/dense/kernel/Adamsave_3/RestoreV2:13*!
_class
loc:@v/dense/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@
Л
save_3/Assign_14Assignv/dense/kernel/Adam_1save_3/RestoreV2:14*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
use_locking(*
T0*
validate_shape(
А
save_3/Assign_15Assignv/dense_1/biassave_3/RestoreV2:15*
use_locking(*
validate_shape(*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias
Е
save_3/Assign_16Assignv/dense_1/bias/Adamsave_3/RestoreV2:16*
validate_shape(*
use_locking(*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
T0
З
save_3/Assign_17Assignv/dense_1/bias/Adam_1save_3/RestoreV2:17*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
T0*
use_locking(
И
save_3/Assign_18Assignv/dense_1/kernelsave_3/RestoreV2:18*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@*
use_locking(*
validate_shape(
Н
save_3/Assign_19Assignv/dense_1/kernel/Adamsave_3/RestoreV2:19*
use_locking(*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0
П
save_3/Assign_20Assignv/dense_1/kernel/Adam_1save_3/RestoreV2:20*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0*
use_locking(*
validate_shape(
А
save_3/Assign_21Assignv/dense_2/biassave_3/RestoreV2:21*
use_locking(*
validate_shape(*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
Е
save_3/Assign_22Assignv/dense_2/bias/Adamsave_3/RestoreV2:22*
_output_shapes
:*
T0*
validate_shape(*!
_class
loc:@v/dense_2/bias*
use_locking(
З
save_3/Assign_23Assignv/dense_2/bias/Adam_1save_3/RestoreV2:23*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
validate_shape(
И
save_3/Assign_24Assignv/dense_2/kernelsave_3/RestoreV2:24*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
use_locking(*
validate_shape(*
T0
Н
save_3/Assign_25Assignv/dense_2/kernel/Adamsave_3/RestoreV2:25*
use_locking(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
T0
П
save_3/Assign_26Assignv/dense_2/kernel/Adam_1save_3/RestoreV2:26*
use_locking(*#
_class
loc:@v/dense_2/kernel*
T0*
validate_shape(*
_output_shapes

:@

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
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
shape: *
dtype0*
_output_shapes
: 

save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_5b85faee185d4289b4b27d827bd739ec/part*
_output_shapes
: *
dtype0
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_4/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_4/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
р
save_4/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1

save_4/SaveV2/shape_and_slicesConst*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:

save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2

save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*)
_class
loc:@save_4/ShardedFilename*
T0*
_output_shapes
: 
Ѓ
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*
T0*
N*

axis *
_output_shapes
:

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
_output_shapes
: *
T0
у
save_4/RestoreV2/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1

!save_4/RestoreV2/shape_and_slicesConst*
_output_shapes
:*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2
Ё
save_4/AssignAssignbeta1_powersave_4/RestoreV2*
validate_shape(*
_class
loc:@v/dense/bias*
_output_shapes
: *
use_locking(*
T0
Ѕ
save_4/Assign_1Assignbeta2_powersave_4/RestoreV2:1*
_output_shapes
: *
validate_shape(*
T0*
use_locking(*
_class
loc:@v/dense/bias
Ќ
save_4/Assign_2Assignpi/dense/biassave_4/RestoreV2:2* 
_class
loc:@pi/dense/bias*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(
Д
save_4/Assign_3Assignpi/dense/kernelsave_4/RestoreV2:3*
validate_shape(*
use_locking(*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel
А
save_4/Assign_4Assignpi/dense_1/biassave_4/RestoreV2:4*
T0*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
use_locking(
И
save_4/Assign_5Assignpi/dense_1/kernelsave_4/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
А
save_4/Assign_6Assignpi/dense_2/biassave_4/RestoreV2:6*
T0*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:*
use_locking(
И
save_4/Assign_7Assignpi/dense_2/kernelsave_4/RestoreV2:7*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
_output_shapes

:@*
T0*
validate_shape(
І
save_4/Assign_8Assign
pi/log_stdsave_4/RestoreV2:8*
_output_shapes
:*
T0*
use_locking(*
validate_shape(*
_class
loc:@pi/log_std
Њ
save_4/Assign_9Assignv/dense/biassave_4/RestoreV2:9*
use_locking(*
_class
loc:@v/dense/bias*
T0*
validate_shape(*
_output_shapes
:@
Б
save_4/Assign_10Assignv/dense/bias/Adamsave_4/RestoreV2:10*
_class
loc:@v/dense/bias*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@
Г
save_4/Assign_11Assignv/dense/bias/Adam_1save_4/RestoreV2:11*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0*
_class
loc:@v/dense/bias
Д
save_4/Assign_12Assignv/dense/kernelsave_4/RestoreV2:12*
T0*
validate_shape(*!
_class
loc:@v/dense/kernel*
use_locking(*
_output_shapes

:@
Й
save_4/Assign_13Assignv/dense/kernel/Adamsave_4/RestoreV2:13*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
validate_shape(*
use_locking(*
T0
Л
save_4/Assign_14Assignv/dense/kernel/Adam_1save_4/RestoreV2:14*!
_class
loc:@v/dense/kernel*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(
А
save_4/Assign_15Assignv/dense_1/biassave_4/RestoreV2:15*
_output_shapes
:@*
validate_shape(*
use_locking(*!
_class
loc:@v/dense_1/bias*
T0
Е
save_4/Assign_16Assignv/dense_1/bias/Adamsave_4/RestoreV2:16*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_1/bias
З
save_4/Assign_17Assignv/dense_1/bias/Adam_1save_4/RestoreV2:17*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
use_locking(*
validate_shape(
И
save_4/Assign_18Assignv/dense_1/kernelsave_4/RestoreV2:18*
T0*
use_locking(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
validate_shape(
Н
save_4/Assign_19Assignv/dense_1/kernel/Adamsave_4/RestoreV2:19*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0*
validate_shape(
П
save_4/Assign_20Assignv/dense_1/kernel/Adam_1save_4/RestoreV2:20*
validate_shape(*
_output_shapes

:@@*
T0*
use_locking(*#
_class
loc:@v/dense_1/kernel
А
save_4/Assign_21Assignv/dense_2/biassave_4/RestoreV2:21*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
use_locking(*
validate_shape(
Е
save_4/Assign_22Assignv/dense_2/bias/Adamsave_4/RestoreV2:22*
T0*
use_locking(*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
validate_shape(
З
save_4/Assign_23Assignv/dense_2/bias/Adam_1save_4/RestoreV2:23*
T0*
_output_shapes
:*
validate_shape(*
use_locking(*!
_class
loc:@v/dense_2/bias
И
save_4/Assign_24Assignv/dense_2/kernelsave_4/RestoreV2:24*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
use_locking(*
validate_shape(
Н
save_4/Assign_25Assignv/dense_2/kernel/Adamsave_4/RestoreV2:25*
validate_shape(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
T0*
use_locking(
П
save_4/Assign_26Assignv/dense_2/kernel/Adam_1save_4/RestoreV2:26*
use_locking(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0*
validate_shape(

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
save_5/filenamePlaceholderWithDefaultsave_5/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_5/ConstPlaceholderWithDefaultsave_5/filename*
shape: *
dtype0*
_output_shapes
: 

save_5/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_b71e90a189c44f2982ca8cba93a853f6/part
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_5/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_5/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards*
_output_shapes
: 
р
save_5/SaveV2/tensor_namesConst*
_output_shapes
:*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0

save_5/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 

save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernel
pi/log_stdv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*)
dtypes
2

save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2*
T0*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: 
Ѓ
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency*
T0*
N*
_output_shapes
:*

axis 

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const*
delete_old_dirs(

save_5/IdentityIdentitysave_5/Const^save_5/MergeV2Checkpoints^save_5/control_dependency*
_output_shapes
: *
T0
у
save_5/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelB
pi/log_stdBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0

!save_5/RestoreV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0

save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices*)
dtypes
2*
_output_shapesn
l:::::::::::::::::::::::::::
Ё
save_5/AssignAssignbeta1_powersave_5/RestoreV2*
use_locking(*
validate_shape(*
_class
loc:@v/dense/bias*
T0*
_output_shapes
: 
Ѕ
save_5/Assign_1Assignbeta2_powersave_5/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ќ
save_5/Assign_2Assignpi/dense/biassave_5/RestoreV2:2*
T0*
use_locking(*
_output_shapes
:@*
validate_shape(* 
_class
loc:@pi/dense/bias
Д
save_5/Assign_3Assignpi/dense/kernelsave_5/RestoreV2:3*
T0*
validate_shape(*
_output_shapes

:@*
use_locking(*"
_class
loc:@pi/dense/kernel
А
save_5/Assign_4Assignpi/dense_1/biassave_5/RestoreV2:4*
_output_shapes
:@*
use_locking(*
T0*
validate_shape(*"
_class
loc:@pi/dense_1/bias
И
save_5/Assign_5Assignpi/dense_1/kernelsave_5/RestoreV2:5*
validate_shape(*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
А
save_5/Assign_6Assignpi/dense_2/biassave_5/RestoreV2:6*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*"
_class
loc:@pi/dense_2/bias
И
save_5/Assign_7Assignpi/dense_2/kernelsave_5/RestoreV2:7*
validate_shape(*
T0*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
_output_shapes

:@
І
save_5/Assign_8Assign
pi/log_stdsave_5/RestoreV2:8*
use_locking(*
T0*
validate_shape(*
_output_shapes
:*
_class
loc:@pi/log_std
Њ
save_5/Assign_9Assignv/dense/biassave_5/RestoreV2:9*
validate_shape(*
_output_shapes
:@*
_class
loc:@v/dense/bias*
use_locking(*
T0
Б
save_5/Assign_10Assignv/dense/bias/Adamsave_5/RestoreV2:10*
T0*
_output_shapes
:@*
validate_shape(*
use_locking(*
_class
loc:@v/dense/bias
Г
save_5/Assign_11Assignv/dense/bias/Adam_1save_5/RestoreV2:11*
validate_shape(*
use_locking(*
T0*
_output_shapes
:@*
_class
loc:@v/dense/bias
Д
save_5/Assign_12Assignv/dense/kernelsave_5/RestoreV2:12*
use_locking(*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0*
_output_shapes

:@
Й
save_5/Assign_13Assignv/dense/kernel/Adamsave_5/RestoreV2:13*!
_class
loc:@v/dense/kernel*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(
Л
save_5/Assign_14Assignv/dense/kernel/Adam_1save_5/RestoreV2:14*
use_locking(*!
_class
loc:@v/dense/kernel*
validate_shape(*
T0*
_output_shapes

:@
А
save_5/Assign_15Assignv/dense_1/biassave_5/RestoreV2:15*!
_class
loc:@v/dense_1/bias*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(
Е
save_5/Assign_16Assignv/dense_1/bias/Adamsave_5/RestoreV2:16*
T0*!
_class
loc:@v/dense_1/bias*
use_locking(*
_output_shapes
:@*
validate_shape(
З
save_5/Assign_17Assignv/dense_1/bias/Adam_1save_5/RestoreV2:17*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
use_locking(*
validate_shape(*
T0
И
save_5/Assign_18Assignv/dense_1/kernelsave_5/RestoreV2:18*
T0*
use_locking(*
validate_shape(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
Н
save_5/Assign_19Assignv/dense_1/kernel/Adamsave_5/RestoreV2:19*
_output_shapes

:@@*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
use_locking(*
T0
П
save_5/Assign_20Assignv/dense_1/kernel/Adam_1save_5/RestoreV2:20*
validate_shape(*
use_locking(*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@
А
save_5/Assign_21Assignv/dense_2/biassave_5/RestoreV2:21*
use_locking(*
T0*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
validate_shape(
Е
save_5/Assign_22Assignv/dense_2/bias/Adamsave_5/RestoreV2:22*
validate_shape(*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
З
save_5/Assign_23Assignv/dense_2/bias/Adam_1save_5/RestoreV2:23*
use_locking(*!
_class
loc:@v/dense_2/bias*
validate_shape(*
T0*
_output_shapes
:
И
save_5/Assign_24Assignv/dense_2/kernelsave_5/RestoreV2:24*
use_locking(*
T0*
validate_shape(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
Н
save_5/Assign_25Assignv/dense_2/kernel/Adamsave_5/RestoreV2:25*#
_class
loc:@v/dense_2/kernel*
use_locking(*
T0*
_output_shapes

:@*
validate_shape(
П
save_5/Assign_26Assignv/dense_2/kernel/Adam_1save_5/RestoreV2:26*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
use_locking(*
_output_shapes

:@*
T0

save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1^save_5/Assign_10^save_5/Assign_11^save_5/Assign_12^save_5/Assign_13^save_5/Assign_14^save_5/Assign_15^save_5/Assign_16^save_5/Assign_17^save_5/Assign_18^save_5/Assign_19^save_5/Assign_2^save_5/Assign_20^save_5/Assign_21^save_5/Assign_22^save_5/Assign_23^save_5/Assign_24^save_5/Assign_25^save_5/Assign_26^save_5/Assign_3^save_5/Assign_4^save_5/Assign_5^save_5/Assign_6^save_5/Assign_7^save_5/Assign_8^save_5/Assign_9
1
save_5/restore_allNoOp^save_5/restore_shard "B
save_5/Const:0save_5/Identity:0save_5/restore_all (5 @F8"­
trainable_variables
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
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08"
train_op

Adam"Ю
	variablesРН
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
v/dense_2/bias/Adam_1:0v/dense_2/bias/Adam_1/Assignv/dense_2/bias/Adam_1/read:02)v/dense_2/bias/Adam_1/Initializer/zeros:0*Ї
serving_default
)
x$
Placeholder:0џџџџџџџџџ#
v
v/Squeeze:0џџџџџџџџџ%
pi
pi/add:0џџџџџџџџџtensorflow/serving/predict