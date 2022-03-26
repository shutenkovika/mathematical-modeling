model Advertisement
parameter Real N = 1111;// максимальное количество людей, которых может заинтересовать товар
parameter Real n0 = 11;// количество людей, знающих о товаре в начальный момент времени
parameter Real alpha1 = 0.7; // сарафанное радио
parameter Real alpha2 = 0.00002; // реклама
Real n(start=n0);
equation
der(n)=(alpha1+alpha2*n)*(N-n); // случай 1
end Advertisement