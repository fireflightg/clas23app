clc
clear

%% Warmup Problem 

x = load("resistanceData.txt");
[temparray] = tempCalc(x);
tempmean  = mean(temparray)
temphigh = max(temparray)
templow = min(temparray)
v = 1:length(x)
figure
plot(v, temparray, '-b');
xlabel("Time")
for k = 1: length(x)
if(k>84 && k<144)
    newarray(k) = x(k);


end

end

temp7am = mean(newarray)
fprintf();





%% Application Problem
% load data - weights of cargo items in pounds

cargo_weights=load('cargo_data.txt');

%Set maximum capacity of the cargo plane
plane_capacity = 5000; 


%  Define the function load_plane in a separate file
%  Call your load_plane function here; pass the cargo weights and plane capacity as inputs
%  store the result in a variable of your choosing
loaded = load_plane(plane_capacity,cargo_weights);

fprintf("The following weights were loaded onto the plane: \n [")
while count < length(loaded)+1
if count>1
fprintf(",")
end
fprintf("%.0f",loaded(count))
count= count +1;
end
fprintf("The following weights were loaded onto the plane: \n ]")
%

load_plane();   %COMPLETE THIS LINE


% Print results to the command window as specified in the instructions





