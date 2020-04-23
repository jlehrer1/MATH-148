% Write your code which generates the figure here. You should call the 'plot' function somewhere...
hold on 
clc
sp = linspace(-2, 1/4, 200); 

% pts = zeros(1, length(sp));
for c=sp
%     c_s = ones(1, 151)*c;
%     pts = zeros(1, 151);
    phi_k = @(x) x.^2 + c;
    phis = 0;
    for j = 0:150
        phis = phi_k(phis);
        if j >= 100
%             pts(j-99) = phis;
           plot(c, phis, '.k');
        end
    end    
%     plot(c_s, phis, '.')
end
hold off
