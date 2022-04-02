model competition2
parameter Real p_cr = 10.5; //критическая стоимость продукта
parameter Real tau1 = 16; //длительность производственного цикла фирмы 1
parameter Real p1 = 7.2; //себестоимость продукта у фирмы 1
parameter Real tau2 = 25; //длительность производственного цикла фирмы 2
parameter Real p2 = 5.1; //себестоимость продукта у фирмы 2
parameter Real N = 28; //число потребителей производимого продукта
parameter Real q = 1; //максимальная потребность одного человека в продукте в единицу времени

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

parameter Real M01 = 4.4;
parameter Real M02 = 4;
Real M1(start=M01);
Real M2(start=M02);
Real theta;

equation
time = c1*theta;
der(M1) = M1-(b/c1+0.0007)*M1*M2 - (a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2 -(b/c1)*M1*M2-(a2/c1)*M2*M2;
end competition2;
