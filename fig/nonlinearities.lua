
function sigmoid(x)
    local result = x:clone()
    for i=1,(#x)[1] do
        result[i] = 1/(1+torch.exp(-x[i]))
    end
    return result
end

function relu(x)
    local zero = x:clone():zero()
    return torch.cmax(x, zero)
end

function softplus(x)
    return torch.log1p(torch.exp(x))
end


require 'gnuplot'

x = torch.linspace(-3.18,3.18,101)

gnuplot.title("")

gnuplot.xlabel("")
gnuplot.ylabel("")

gnuplot.movelegend('left','top')
gnuplot.raw('set key font "FreeSerif,18"')

gnuplot.grid(true)

gnuplot.axis({-3.2,3.2,-1.2,2.4})

gnuplot.plot(
             {"Softplus",x,softplus(x),'~'},
             {"Tanh",x,torch.tanh(x),'~'},
             {"Sigmoid",x,sigmoid(x),'~'},
             {"Rectifier",x,relu(x),'-'}
            )
