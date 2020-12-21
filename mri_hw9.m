alpha = 0 : pi/36 : pi;%(0~180)
m =  size(alpha,2);
TR_T1 = [0.01 0.05 0.1 0.5 1 5 10] ;% TR / T1
n =  size(TR_T1,2);
TE = 20;
T2_star = 3;
sign = zeros(n , m);
for i = 1 : n
    for j = 1 : m
        sign(i,j) = ((1 - exp(-TR_T1(i))) .* sin(alpha(j)))  / (1 - (exp(-TR_T1(i)) .* cos(alpha(j)))) .* exp(-TE / T2_star);
    end
    plot(alpha,sign);
end
legend('TR/T1 = 0.01','TR/T1 = 0.05','TR/T1 = 0.1','TR/T1 = 0.5','TR/T1 = 1','TR/T1 = 5','TR/T1 = 10');
xlabel('alpha(pi)');ylabel('signal');
title('signal verus flip angle');
