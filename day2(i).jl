if x< y
    println("x is less than y")
elseif x > y
    println("x is greater than y")
else 
    println("x is eqyal to y")
end 

function test(x,y)
    if x < y 
        println("x is less than y")
    elseif x > y 
        println("x is greater than y")
    else 
        println("x is equal to y")
    end 
end

function test(x,y)
    if x < y
        relation = "less than"
    elseif x == y
        relation = "equal to"
    else
        relation = "greater than"
    end
    println("x is", relation, "y.")
end

v(x) = (println(x); x)

# Short circuit evaluation 

t(x) = (println(x); true)

f(x) = (println(x); false)

function fact(n::Int)
    n >= 0 || error(" n must be non-negative")
    n == 0 && return 1 
    n * fact(n-1)
end 

f(x) = x>=0 ? exp(-x) : throw(DomainError(x, "argument must be non-negative"))

function verbose_fussy_sqrt(x)
    println("before fussy_sqrt")
    r = fussy_sqrt(x)
    println("after fussy_sqrt")
    return r 
end 

sqrt_second(x) = try
    sqrt(x[2])
catch y
    if isa(y, DomainError)
        sqrt(complex(x[2],0))
    elseif isa(y, BoundsError)
        sqrt(x)
    end
end
