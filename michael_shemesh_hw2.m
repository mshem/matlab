% Michael Shemesh
% Homework 2
% 1. Uppercase letters start with A which has character code 64, where as
% lowercase letters start at a = 97. Uppercase comes before lowercase.
x=40;
y=9;
problem_two = xor((x>5), (y<10))

myend=randi(5)+4
problem_three = 1:3:myend

% we can access the odd indexes this way
problem_four= 1:1:100;
odds = problem_four([1:2:(length(problem_four))])
