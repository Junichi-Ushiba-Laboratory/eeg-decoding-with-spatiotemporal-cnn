function is_toolbox_installed = check_toolbox

list_toolbox = ver;
name_toolbox = {list_toolbox.Name}';

list_toolbox_required = ...
    {'Deep Learning Toolbox';
    'Parallel Computing Toolbox';
    'Signal Processing Toolbox';
    'Statistics and Machine Learning Toolbox'};

is_toolbox_installed = true;
for i_toolbox = 1 : numel(list_toolbox_required)
    if ~any(contains(name_toolbox,list_toolbox_required{i_toolbox}))
        fprintf('%s not installed\n',list_toolbox_required{i_toolbox});
        is_toolbox_installed = false;
    end
end

if is_toolbox_installed
    fprintf('Toolbox:OK\n');
end

end