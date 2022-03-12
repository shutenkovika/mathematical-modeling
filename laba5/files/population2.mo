model population2
parameter Real a=0.59; // коэф. естественной смертности хищников
parameter Real b=0.058; // коэф. естественного прироста жертв
parameter Real c=0.57; // коэф. увеличения числа хищников
parameter Real d=0.056; // коэф. смертности жертв
parameter Real x0=0.57/0.056; //c/d 
parameter Real y0=0.59/0.058; //a/b
Real x(start=x0);
Real y(start=y0);
equation
der(x)=-a*x+c*x*y;
der(y)=b*y-d*x*y;
end population2;
