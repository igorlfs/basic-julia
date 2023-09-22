#=°°°
# Loops
°°°=#
#|%%--%%| <yWVXbK0j5F|jrT14hAW9X>
#=°°°
## While
°°°=#
#|%%--%%| <jrT14hAW9X|8a0t2KSzbU>

n = 0
while n < 10
    n += 1
    println(n)
end

#|%%--%%| <8a0t2KSzbU|k0zj2jg1Ui>

my_friends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]
i = 1
while i <= length(my_friends)
    friend = my_friends[i]
    println("Hi $friend, it's great to see you!")
    i += 1
end

#|%%--%%| <k0zj2jg1Ui|IWzsakKWNS>
#=°°°
## For
°°°=#
#|%%--%%| <IWzsakKWNS|DSSnmRFenk>

for n in 1:10
    println(n)
end

#|%%--%%| <DSSnmRFenk|cjkfRWBrlT>

for friend in my_friends
    println(friend)
end

#|%%--%%| <cjkfRWBrlT|4QYLfxFIoT>

for n = 1:10
    println(n)
end

#|%%--%%| <4QYLfxFIoT|8b8fNaBeV8>

m, n = 5, 5
A = zeros(m, n)

#|%%--%%| <8b8fNaBeV8|YZm66QD84l>

for i in 1:m
    for j in 1:n
        A[i, j] = i + j
    end
end
A

#|%%--%%| <YZm66QD84l|L2xuoDtNC1>

B = zeros(m, n)
for i in 1:m, j in 1:n
    B[i, j] = i + j
end
B

#|%%--%%| <L2xuoDtNC1|3P5KcSnKjI>

C = [i + j for i in 1:m, j in 1:n]

#|%%--%%| <3P5KcSnKjI|BnH9Qn9amw>

for n in 1:10
    A = [i + j for i in 1:n, j in 1:n]
    display(A)
end
