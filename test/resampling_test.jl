using julia_analysis

a=jackknife(20)
for i in 1:20
    a.jack[i]=i
    println(a.jack[i])
end