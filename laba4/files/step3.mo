model oscillation3
parameter Real w = 4;//w0^2 - собственная частота колебаний в квадрате
parameter Real g = 4;// - параметр, характеризующий потери энергии
parameter Real x0 = 1.5;// начальное условие
parameter Real y0 = 1.1;// начальное условие
Real x(start=x0);
Real y(start=y0);
equation// система диф уравнений
der(x)=y;
der(y)=sin(4*time)-g*y-w*x;
end oscillation3;
