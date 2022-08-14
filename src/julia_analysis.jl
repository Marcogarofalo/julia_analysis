module julia_analysis

include("resampling.jl")
mutable struct jackknife
    Njack::Int
    #jack::Array(Float64,Njack)
end
#greet() = print("Hello World!")

end # module
