#|%%--%%| <cxy7hDP46n|eXuwFTsOms>
#=°°°
# Plots
°°°=#
#|%%--%%| <eXuwFTsOms|6OPvywRtsB>

using Plots
import Plots.plot

#|%%--%%| <6OPvywRtsB|j5elFeAn8K>

x = -3:0.1:3
f(x) = x^2
y = f.(x)

#|%%--%%| <j5elFeAn8K|UmOLjY6VOK>

# gr()

#|%%--%%| <UmOLjY6VOK|FHiLZoUZte>

plot(x, y, label="line")
scatter!(x, y, label="points")

#|%%--%%| <FHiLZoUZte|9GOvNqXNbR>

# plotlyjs()

#|%%--%%| <9GOvNqXNbR|mYoV1NIZa5>

plot(x, y, label="line")
scatter!(x, y, label="points")
#|%%--%%| <mYoV1NIZa5|DnC2wcG5Co>
#=°°°
## Fancy
°°°=#
#|%%--%%| <DnC2wcG5Co|GH2zP1XrFg>

# xflip!()

# xlabel!()
# ylabel!()
# title!()

#|%%--%%| <GH2zP1XrFg|PDBWtLXnLT>

p1 = plot(x, x)
p2 = plot(x, x .^ 2)
p3 = plot(x, x .^ 3)
p4 = plot(x, x .^ 4)
plot(p1, p2, p3, p4, layout=(2, 2), legend=false)
