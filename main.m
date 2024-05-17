%% CNN Filter for BOLD reconstruction
is_toolbox = check_toolbox;
if ~is_toolbox, return, end

config_dataset = ConfigDataset;
generate_dataset;
construct_decoder;
[net,info_train] = trainNetwork(tbl_train,y_train',layers,options);

y_pred = predict(net,tbl_test,'ExecutionEnvironment','cpu'); %[num_samp * num_run]
rmse = sqrt(mean((y_test'-y_pred).^2));
fprintf('RMSE = %0.2f\n',rmse);
