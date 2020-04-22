% An implementation of Newton's method.

% Inputs: 
% f: a function
% df: derivative of f
% x: starting location on x axis
% tol: tolerance which dictates when netwon stops iterating
% Nmax: maximum number of iterations for newton

% Outputs:
% pts: the sequence of points chosen by newton (including x)
% final_tol: the final tolerance after iterations are complete

function [pts, final_tol] = newton(f, df, x, tol, Nmax)
    pts = [x, x-(f(x)/df(x))];
    numItr = 0;
    while abs(pts(end-1) - pts(end)) > tol
        if numItr == Nmax
            break
        end
        x = pts(end)-(f(pts(end))/df(pts(end)));
        pts = [pts, x];
        numItr = numItr + 1;
    end
    final_tol = abs(pts(end-1) - pts(end));
end
