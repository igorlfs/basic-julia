#=°°°
# Factorizations
°°°=#
#|%%--%%| <c2H64FvbXP|IOtTEm4ETP>

A = randn(3, 3)

#|%%--%%| <IOtTEm4ETP|0bvHyekX4P>

using LinearAlgebra

#|%%--%%| <0bvHyekX4P|gYof5K5n2s>
#=°°°
## ALU
°°°=#
#|%%--%%| <gYof5K5n2s|Xtp4GvImxk>

l, u, p = lu(A)

#|%%--%%| <Xtp4GvImxk|L75rjo89ge>

display(norm(l * u - A))
display(norm(l * u - A[p, :]))

#|%%--%%| <L75rjo89ge|jUMsVGZpYy>

x = ones(3)
b = A * x

#|%%--%%| <jUMsVGZpYy|l4ThyoA0Xv>

det(A)

#|%%--%%| <l4ThyoA0Xv|x5mfNbghND>
#=°°°
## QR
°°°=#
#|%%--%%| <x5mfNbghND|nH8GoYFaNj>

Aqr = qr(A)

#|%%--%%| <nH8GoYFaNj|ubQhb0Unso>
#=°°°
## SVD
°°°=#
#|%%--%%| <ubQhb0Unso|llWxoOyZLt>

Asym = A + A'
eigen(Asym)

#|%%--%%| <llWxoOyZLt|OOyuWE31Xr>

Asvd = svd(A[:, 1:2])

#|%%--%%| <OOyuWE31Xr|gv0j8GcGWx>

Asvd \ b

#|%%--%%| <gv0j8GcGWx|bzNiyORFQD>
#=°°°
## Special Structures
°°°=#
#|%%--%%| <bzNiyORFQD|e1W0TmDaVq>

A

#|%%--%%| <e1W0TmDaVq|DaIRGO4Dao>

Diagonal(diag(A))

#|%%--%%| <DaIRGO4Dao|OGfqcH3yh1>

Diagonal(A)

#|%%--%%| <OGfqcH3yh1|rSHVhMOKyA>

LowerTriangular(A)

#|%%--%%| <rSHVhMOKyA|J10ggf1AL7>

Symmetric(Asym)

#|%%--%%| <J10ggf1AL7|SVz6XSpwsd>

SymTridiagonal(diag(Asym), diag(Asym, 1))

#|%%--%%| <SVz6XSpwsd|YcczFqlwS3>

n = 1000
A = randn(n, n)
Asym1 = A + A'
Asym2 = copy(Asym1)
Asym2[1, 2] += 5eps()
println("Is Asym1 symmetric? ", issymmetric(Asym1))
println("Is Asym2 symmetric? ", issymmetric(Asym2))

#|%%--%%| <YcczFqlwS3|B4DN8fDvPE>

@time eigvals(Asym1)

#|%%--%%| <B4DN8fDvPE|WppnJpNWLr>

@time eigvals(Asym2)

#|%%--%%| <WppnJpNWLr|FbOTlA5mIk>

@time eigvals(Symmetric(Asym2))

#|%%--%%| <FbOTlA5mIk|kmu23OiwhG>
#=°°°
## Generic Linear Algebra
°°°=#
#|%%--%%| <kmu23OiwhG|lx1LGhLUHh>

Ar = convert(Matrix{Rational{BigInt}}, rand(1:10, 3, 3)) / 10

#|%%--%%| <lx1LGhLUHh|NCvFlmlOyO>

x = ones(Int, 3)
b = Ar * x
