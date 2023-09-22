#=°°°
# Linear Algebra
°°°=#
#|%%--%%| <qEPtfz8JFG|iD66UzeTvn>

A = rand(1:4, 3, 3)

#|%%--%%| <iD66UzeTvn|lmjaPaRLOD>

B = A
C = copy(A)
[B C]

#|%%--%%| <lmjaPaRLOD|tARCW8mDFN>

A[1] = 17
[B C]

#|%%--%%| <tARCW8mDFN|IZLhUjj5YI>

x = ones(3)

#|%%--%%| <IZLhUjj5YI|9EVoHXIBDX>
#=°°°
### Multiplication
°°°=#
#|%%--%%| <9EVoHXIBDX|Wyg2znzpB2>

b = A * x

#|%%--%%| <Wyg2znzpB2|9ML7r5kivP>
#=°°°
### Transposition
°°°=#
#|%%--%%| <9ML7r5kivP|OktqQICVeF>

Asym = A + A'

#|%%--%%| <OktqQICVeF|K5Y6jFaWYI>
#=°°°
### Transposed Multiplication
°°°=#
#|%%--%%| <K5Y6jFaWYI|o4QvGSY6YR>

Apd = A'A

#|%%--%%| <o4QvGSY6YR|vxsHgGyGON>
#=°°°
### Linear Systems
°°°=#
#|%%--%%| <vxsHgGyGON|orHHCfPPtt>

A \ b

#|%%--%%| <orHHCfPPtt|fjPFTykCA2>
#=°°°
### Overdetermined Systems
°°°=#
#|%%--%%| <fjPFTykCA2|BBALh7f9Ef>

Atall = A[:, 1:2]
display(Atall)
Atall \ b

#|%%--%%| <BBALh7f9Ef|2Q3wW2MWFU>

A = randn(3, 3)

#|%%--%%| <2Q3wW2MWFU|pVpthw9M0n>

[A[:, 1] A[:, 1]] \ b

#|%%--%%| <pVpthw9M0n|xKKqJZXXaS>
#=°°°
### Undetermined Systems
°°°=#
#|%%--%%| <xKKqJZXXaS|zU5rA78SsE>

Ashort = A[1:2, :]
display(Ashort)
Ashort \ b[1:2]
