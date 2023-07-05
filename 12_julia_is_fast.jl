#=°°°
# Julia is Fast
°°°=#
#|%%--%%| <xSVjkVTV5c|Zj7HCI7im0>

a = rand(10^7)

#|%%--%%| <Zj7HCI7im0|YXwNWkOeQk>

sum(a)

#|%%--%%| <YXwNWkOeQk|XkZCO5sxTT>

using BenchmarkTools

#|%%--%%| <XkZCO5sxTT|hZnLaQs9Pd>
#=°°°
## C

No
°°°=#
#|%%--%%| <hZnLaQs9Pd|5DMJRulNl6>

# `isapprox` function

#|%%--%%| <5DMJRulNl6|ENQRWxYfiI>
#=°°°
## Python: built-in
°°°=#
#|%%--%%| <ENQRWxYfiI|hEtNKy0SP6>

using PyCall

#|%%--%%| <hEtNKy0SP6|0t8qdfZEKy>

# apy_list = PyCall.array2py(a, 1, 1.0)
# pysum = pybuiltin("sum")

#|%%--%%| <0t8qdfZEKy|7pMQ0EbXTt>

# pysum(a)

#|%%--%%| <7pMQ0EbXTt|tb2TOR7fg8>

# isapprox(pysum(a), sum(a))

#|%%--%%| <tb2TOR7fg8|TBHtSa2P3n>

# py_list_bench = @benchmark $pysum($apy_list)

#|%%--%%| <TBHtSa2P3n|BoVxC53QUT>
#=°°°
## Python: numpy
°°°=#
#|%%--%%| <BoVxC53QUT|XdswBspF18>

numpy_sum = pyimport("numpy")["sum"]
apy_numpy = PyObject(a)

py_numpy_bench = @benchmark $numpy_sum($apy_numpy)

#|%%--%%| <XdswBspF18|LsnDgdxxee>

numpy_sum(apy_numpy)

#|%%--%%| <LsnDgdxxee|IgmF2Mfxk5>

isapprox(numpy_sum(apy_numpy), sum(a))

#|%%--%%| <IgmF2Mfxk5|fUr1LsbZuX>

d = Dict("Python Numpy" => minimum(py_numpy_bench.times) / 1e6)

#|%%--%%| <fUr1LsbZuX|oRVvDPGtiz>
#=°°°
## Python: hand-written

I'm not feeling it
°°°=#
#|%%--%%| <oRVvDPGtiz|q9xsHN6mXk>
#=°°°
## Julia: built-in
°°°=#
#|%%--%%| <q9xsHN6mXk|Nm9hXslExP>

using InteractiveUtils.@which

#|%%--%%| <Nm9hXslExP|ymp1zbgyPB>

@which sum(a)

#|%%--%%| <ymp1zbgyPB|Vrmj6V9ntn>

j_bench = @benchmark sum($a)

#|%%--%%| <Vrmj6V9ntn|PluuXSqYCs>

d["Julia built-in"] = minimum(j_bench.times / 1e6)
d

#|%%--%%| <PluuXSqYCs|9Jqz6I1IAi>
#=°°°
## Julia: hand-written
°°°=#
#|%%--%%| <9Jqz6I1IAi|KuXMo6l08y>

function mysum(A)
    s = 0.0
    for a in A
        s += a
    end
    s
end

#|%%--%%| <KuXMo6l08y|RAvc4lmsrv>

j_bench_hand = @benchmark mysum($a)

#|%%--%%| <RAvc4lmsrv|R4BvwOrps9>

d["Julia hand-written"] = minimum(j_bench_hand.times / 1e6)
d

#|%%--%%| <R4BvwOrps9|9NXWOQx0AO>
#=°°°
## Summary
°°°=#
#|%%--%%| <9NXWOQx0AO|az4eSuwHRa>

for (key, value) in sort(collect(d), by=x -> x[2])
    println(rpad(key, 20, "."), lpad(round(value, digits=2), 8, "."))
end
