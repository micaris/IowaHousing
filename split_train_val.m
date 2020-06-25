
function [X_train, y_train, X_val, y_val] = split_train_val(data, split_ratio)
    rand_idx = randperm(length(data(:,1)));
    new_data = data(rand_idx,:);
    cut = length(data(:,1))*split_ratio;
    disp(cut)
    X_train = new_data(cut:end, 1:18);
    y_train = new_data(cut:end, 19);
    X_val = new_data(1:cut, 1:18);
    y_val = new_data(1:cut, 19);
end