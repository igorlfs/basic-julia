#=°°°
# Conditionals
°°°=#
#|%%--%%| <7hla7cfmGo|61oYYbkBvu>

x = 3
y = 90

#|%%--%%| <61oYYbkBvu|RIjXqJfbS7>

if x > y
    println("$x is larger than $y")
elseif y > x
    println("$y is larger than $x")
else
    println("$x and $y are equal!")
end

#|%%--%%| <RIjXqJfbS7|kJd4EddOWs>

if x > y
    x
else
    y
end

#|%%--%%| <kJd4EddOWs|XECA2aTQXL>

(x > y) ? x : y

#|%%--%%| <XECA2aTQXL|9ShtIF4MCq>

(x > y) && println("$x is larger than $y")

#|%%--%%| <9ShtIF4MCq|1KqW7pYmlB>

(x < y) && println("$x is smaller than $y")
