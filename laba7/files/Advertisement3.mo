model Advertisement3
parameter Real N = 1111;// максимальное количество людей, которых может заинтересовать товар
parameter Real n0 = 11;// количество людей, знающих о товаре в начальный момент времени
parameter Real alpha1 = 0.9; // сарафанное радио
parameter Real alpha2 = 0.9; // реклама
Real n(start=n0);
equation
der(n)=(alpha1*cos(time)+alpha1*cos(time)*n)*(N-n); // случай 3
end Advertisement3