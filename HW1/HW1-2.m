n = 60; % number of iterations

fibo = [1, 1, zeros(1,n-2)]; % where to store the sequence
approx = [1, zeros(1,n-2)]; % approximations to the golden ratio

r1 = (1+sqrt(5))/2%FILLOUT % the true value of the golden ratio
err = [abs(1-r1)/r1, zeros(1,n-2)]; % where to store the relative errors

for i=2:n
    fibo(i+1) = fibo(i)+fibo(i-1);
    approx(i) = fibo(i+1)/fibo(i);
    err(i-1) = abs(r1-approx(i-1))/r1;
end


f30 = fibo(30); % 30th Fibonacci number
disp(['fibo(30) = ',num2str(f30)])
e30 = err(30); % relative error at the 30th iteration
disp(['error at step 30: ',num2str(e30)])

figure; semilogy(2:n,err)
title('convergence plot for Fibonacci approximation of the golden ratio')
xlabel('n'); ylabel('relative error')

