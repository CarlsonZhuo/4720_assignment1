%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prompt User Input From Keyboard
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
prompt = 'Input n:';
n = input(prompt);

% Implementation notice: for all operation about array a,
% The index should plus one.
prompt = 'Input a';
a = zeros(1, n+1);
for i = 1 : n+1
    a(i) = input(strcat(prompt, char(i-1+'0'), ':'));
end

check_info = strcat('f(x)=', char(a(i)+'0'));
for i = 1 : n
    check_info = strcat(check_info, '+', char(a(i+1)+'0'), 'x^', char(i+'0'));
end
check_info

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Newton's Method to Find f(lamda) = 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lambda = 0;
previous_lambda = 1;
while abs(lambda - previous_lambda) > 0.0000000001
    previous_lambda = lambda;
    lambda = previous_lambda - f(a, lambda)/f_prime(a, lambda);
end

    
