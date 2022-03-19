model SIR2
parameter Real a = 0.01;//коэффициент заболеваемости
parameter Real b = 0.02;//коэффициент выздоровления
parameter Real N = 10100;//общая численность
parameter Real I0 = 66;//начальное кол-во инфицированных
parameter Real R0 = 26;//начальное кол-во с иммунитетом
parameter Real S0 = N-I0-R0;//начальное кол-во подверженных

Real S(start=S0);//подверженные
Real I(start=I0);//инфицированные
Real R(start=R0);//с иммунитетом

equation
der(S)=-a*S;
der(I)=a*S-b*I;
der(R)=b*I;
end SIR2;
