
switch config_dataset.type_analysis
    case 'demo'
        [tbl_train,tbl_test,tbl_valid] = config_dataset.generate_input();
        [y_train,y_test,y_valid] = config_dataset.generate_output();
end