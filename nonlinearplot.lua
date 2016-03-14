
require 'gnuplot'

x=torch.linspace(-4,4)

gnuplot.title("Nonlinear functions")

gnuplot.xlabel("Input")
gnuplot.ylabel("Output")

gnuplot.grid(true)

-- gnuplot.axis('equal')

gnuplot.plot({"Sin",x,torch.sin(x),'~'},
             {"Tanh",x,torch.tanh(x),'~'})
