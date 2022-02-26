model war1
  parameter Real x0 = 39800;//численность первой армии
  parameter Real y0 = 21400;//численность второй армии
  parameter Real a = 0.42;//константа, характеризующая степень влияния различных факторов на потери
  parameter Real b = 0.68;//эффективность боевых действий армии у
  parameter Real c = 0.59;//эффективность боевых действий армии х
  parameter Real h = 0.43;//константа, характеризующая степень влияния различных факторов на потери
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x) = -a*x-b*y+sin(5*time+1);
  der(x) = -c*x-h*y+cos(5*time+2);
end war1;
