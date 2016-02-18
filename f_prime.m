function f_prime_lambda = f_prime( a, lambda )
% The value of f'(lambda) given a
f_prime_lambda = a(2);
n = length(a) - 1;
for i = 2:n
    f_prime_lambda = f_prime_lambda + i * a(i+1) * lambda ^ (i-1);
end

end

