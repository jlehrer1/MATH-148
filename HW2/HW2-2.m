% An implementation of the Secant method.

% Inputs: 
% f: a function
% x_1: first starting point
% x_2: second starting point
% tol: tolerance which dictates when secant stops iterating

% Outputs:
% pts: the sequence of points chosen by secant (including x_1 and x_2)
% final_tol: the final tolerance after iterations are complete

function [pts, final_tol] = secant(f, x_1, x_2, tol, Nmax)
    numItr = 0;
    pts = [x_1, x_2]
    while abs(pts(end) - pts(end-1)) > tol
        if numItr == Nmax 
            error('Reached max number of iterations without converging')
        end
        x_1 = pts(end-1);
        x_2 = pts(end);
        x_3 = (x_1*f(x_2)-x_2*f(x_1))/(f(x_2)-f(x_1));
        pts = [pts, x_3];
        numItr = numItr + 1;
    end
    final_tol = abs(pts(end) - pts(end-1));
end
