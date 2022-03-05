model oscillation2 //x''+w0^2x=0
parameter Real w = 3;//w0^2 - собственная частота колебаний в квадрате
parameter Real g = 3;// - параметр, характеризующий потери энергии
parameter Real x0 = 1.5;// начальное условие
parameter Real y0 = 1.1;// начальное условие
Real x(start=x0);
Real y(start=y0);
equation// система диф уравнений
der(x)=y;
der(y)=-g*y-w*x;
end oscillation2;
