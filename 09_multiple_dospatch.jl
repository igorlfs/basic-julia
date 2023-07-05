#=°°°
# Multiple Dispatch
°°°=#
#|%%--%%| <f4Iffz4yfL|mlCdgv75fd>

methods(+)

#|%%--%%| <mlCdgv75fd|w4LoOUeahz>

using InteractiveUtils.@which

#|%%--%%| <w4LoOUeahz|e14IKWlGhZ>

@which 3 + 3

#|%%--%%| <e14IKWlGhZ|mOqTjVUpgk>

@which 3.0 + 3.0

#|%%--%%| <mOqTjVUpgk|fkABXrmT7u>

@which 3 + 3.0

#|%%--%%| <fkABXrmT7u|Ga0WGb5ddq>

import Base: +

#|%%--%%| <Ga0WGb5ddq|4hwLrhI4vo>

"hello " + "world!" # ERROR

#|%%--%%| <4hwLrhI4vo|qtIff96GsW>

@which "hello " + "world!"

#|%%--%%| <qtIff96GsW|xeV1QIHTwL>

+(x::String, y::String) = string(x, y)

#|%%--%%| <xeV1QIHTwL|jcRvWd3AE1>

"hello " + "world!"

#|%%--%%| <jcRvWd3AE1|qhKKRtX0bG>

@which "hello " + "world!"

#|%%--%%| <qhKKRtX0bG|AGoUmh8d0C>

foo(x, y) = println("duck-typed foo!")
foo(x::Int, y::Float64) = println("foo with an integer and a float!")
foo(x::Float64, y::Float64) = println("foo with two floats!")
foo(x::Int, y::Int) = println("foo with two integer!")

#|%%--%%| <AGoUmh8d0C|KEwrYxt7ed>

foo(1, 1)

#|%%--%%| <KEwrYxt7ed|rZqHn2GUA2>

foo(1.0, 1.0)

#|%%--%%| <rZqHn2GUA2|Hr4uvETe5m>

foo(1, 1.0)

#|%%--%%| <Hr4uvETe5m|oeqBU6U5Db>

foo(true, false)
