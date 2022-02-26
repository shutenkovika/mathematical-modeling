model war2
  parameter Real x0 = 39800;//численность первой армии
  parameter Real y0 = 21400;//численность второй армии
  parameter Real a = 0.301;//константа, характеризующая степень влияния различных факторов на потери
  parameter Real b = 0.7;//эффективность боевых действий армии у
  parameter Real c = 0.502;//эффективность боевых действий армии х
  parameter Real h = 0.4;//константа, характеризующая степень влияния различных факторов на потери
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x) = -a*x-b*y+sin(20*time)+1;
  der(x) = -c*x*y-h*y+cos(20*time)+1;
end war2;
