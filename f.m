function f_lambda = f( a, lambda )
% The value of f(lambda) given a
f_lambda = a(1);
n = length(a) - 1;
for i = 1:n
    f_lambda = f_lambda + a(i+1) * lambda ^ i;
end

end

