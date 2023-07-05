#=°°°
# Functions
°°°=#
#|%%--%%| <zwMKQTE1AR|D9qBcBVT4e>

function sayhi(name)
    println("Hi $name, it's great to see you!")
end

#|%%--%%| <D9qBcBVT4e|sAp7yv0Vp4>

function f(x)
    x^2
end

#|%%--%%| <sAp7yv0Vp4|EiGrbNK92B>

sayhi("C-3PO")

#|%%--%%| <EiGrbNK92B|ISMXTfuUcA>

f(42)

#|%%--%%| <ISMXTfuUcA|KB0dMgDmtX>

sayhi2(name) = println("Hi $name, it's great to see you!")

#|%%--%%| <KB0dMgDmtX|yEvrm673Gr>

f2(x) = x^2

#|%%--%%| <yEvrm673Gr|uswgD6wEnV>

sayhi2("R2D2")

#|%%--%%| <uswgD6wEnV|EEX3CMf6zT>

f2(3)

#|%%--%%| <EEX3CMf6zT|ThR2ZlUQTc>

sayhi3 = name -> println("Hi $name, it's great to see you!")

#|%%--%%| <ThR2ZlUQTc|CA8OQi4gi8>

f3 = x -> x^3

#|%%--%%| <CA8OQi4gi8|kW0oPSicwn>

sayhi3("Han Solo")

#|%%--%%| <kW0oPSicwn|D4bSfiktik>

f3(99)

#|%%--%%| <D4bSfiktik|knApwtuksW>
#=°°°
## Duck-typing
°°°=#
#|%%--%%| <knApwtuksW|04SPCyVH88>

sayhi(2190)

#|%%--%%| <04SPCyVH88|5J22DLI4FL>

A = rand(3, 3)
A

#|%%--%%| <5J22DLI4FL|ddkjllsMiK>

f(A)

#|%%--%%| <ddkjllsMiK|nJdRhJFCI1>

v = rand(3)

#|%%--%%| <nJdRhJFCI1|b1hzdInCbL>

# f(v) ERROR

#|%%--%%| <b1hzdInCbL|QsVaBdryyI>
#=°°°
## Mutating vs non-mutating
°°°=#
#|%%--%%| <QsVaBdryyI|cJr5YEHpYG>

v = [3, 5, 2]

#|%%--%%| <cJr5YEHpYG|5iNc8s5NFz>

sort(v)

#|%%--%%| <5iNc8s5NFz|HKqkLJ1vE8>

v

#|%%--%%| <HKqkLJ1vE8|cSwDGsSD1a>

sort!(v)

#|%%--%%| <cSwDGsSD1a|gpq7yfofkN>

v

#|%%--%%| <gpq7yfofkN|e41DpzomMS>
#=°°°
## Broadcasting
°°°=#
#|%%--%%| <e41DpzomMS|QbNCnrvLuT>

A = [i + 3 * j for j in 0:2, i in 1:3]

#|%%--%%| <QbNCnrvLuT|Rv1KF5KlzZ>

f(A)

#|%%--%%| <Rv1KF5KlzZ|oU2wlWq3HB>

B = f.(A)

#|%%--%%| <oU2wlWq3HB|dTga62AcUF>

A[2, 2]

#|%%--%%| <dTga62AcUF|eZHA8Uz6EA>

A[2, 2]^2

#|%%--%%| <eZHA8Uz6EA|0UOzl0qhpJ>

B[2, 2]

#|%%--%%| <0UOzl0qhpJ|5EmSLhxkTt>

v = [1, 2, 3]

#|%%--%%| <5EmSLhxkTt|mR4snIpDQv>

f.(v)
