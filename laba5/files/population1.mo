model population1
parameter Real a=0.59; // коэф. естественной смертности хищников
parameter Real b=0.058; // коэф. естественного прироста жертв
parameter Real c=0.57; // коэф. увеличения числа хищников
parameter Real d=0.056; // коэф. смертности жертв
parameter Real x0=8;
parameter Real y0=18;
Real x(start=x0);
Real y(start=y0);
equation
der(x)=-a*x+c*x*y;
der(y)=b*y-d*x*y;
end population1;
