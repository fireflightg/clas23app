function [loaded] = load_plane(capacity , cargo_weights)
counter = 1;
max = 0;
unsed = capacity;
loaded = linspace(0,0,length(cargo_weights));
index = 1;
cargo = sort(cargo_weights,'descend');
while unsed > 0 && index < length(cargo_weights)+1
loaded(index) = cargo(index);
if loaded(index) < unsed
unsed = unsed - loaded(index);
else
unsed = unsed + loaded(k);
loaded(k) = 0;
break
end
index=index +1;
end
count = 1;
loaded(loaded == 0) = [];

end
