% if condition
%     task
% end
clear all; clc;
age = 20;
if age < 18
    disp("you are a teenager.");
elseif age < 30
    disp("You look young.");
else 
    disp("You are an adult.");
end