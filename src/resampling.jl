mutable struct jackknife
    Njack::Int
    jack
    
end
function jackknife(Njack::Int)
    jackknife(Njack, zeros(Njack))
end

function comp_err_res(myj::jackknife)
    mean = 0.0
    N = (myj.Njack - 1)
    for i in 1:N
        mean += myj.jack[i]
    end
    mean /= N
    r = 0.0
    for i in 1:N
        r += (myj.jack[i] - mean)^2
    end
    r *= (N - 1.0) / (Float64(N))
    r = sqrt(r)
    return (r)
end


function mean_res(myj)
    return (myj.jack[myj.Njack-1])
end

mutable struct bootstrap
    Njack::Int
    jack
    
end
function bootstrap(Njack::Int)
    bootstrap(Njack, zeros(Njack))
end

function comp_err_res(myj::bootstrap)
    mean = 0.0
    N = (myj.Njack - 1)
    for i in 1:(N-1)
        mean += myj.jack[i]
    end
    mean /= N
    r = 0.0
    for i in 1:(N-1)
        r += (myj.jack[i] - mean)^2
    end
    r /= (Float64(N))
    r = sqrt(r)
    return (r)
end