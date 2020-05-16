% first method: using the recursive formula

ints = zeros(1,20);
ints(1) = 1/exp(1);

for k=2:20
    %% recursion
    ints(k) = 1-k*ints(k-1);
end

bad_int = ints(20);

% second method: using Simpson's rule

f = @(x) x.^20*exp(x-1); %% input the integrand
n = 100; % number of points (I am overestimating to make sure we are within 3 digits)
h = 1/n; % size of each subinterval

xs = linspace(0,1,n+1); % nodes for the composite rule

intSim = 0; % initialize the Simpson integral

%% input code here: use a simple Simpson rule on each subinterval [xs(k),xs(k+1)]
for k=1:n
    intSim = intSim + ((xs(k+1)-xs(k))/6)*(f(xs(k))+4*f((xs(k)+xs(k+1))/2) + f(xs(k+1)));
end


% display results
disp('I20 using recursive formula:')
bad_int 

disp('I20 using composite Simpson rule:')
intSim