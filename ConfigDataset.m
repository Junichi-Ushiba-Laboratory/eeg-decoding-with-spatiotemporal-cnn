classdef ConfigDataset
    properties
        type_analysis = 'demo'; % random data
        fs = 100;
        num_ch = 78;
        time_seg = 9;

        num_dataset_train = 8640;
        num_dataset_test = 540;
        num_dataset_valid = 540;
    end

    methods (Access = public)

        function inputsize = get_inputsize(self)
            inputsize = [self.num_ch, self.time_seg*self.fs, 1];
        end

        function [y_train,y_test,y_valid] = generate_output(self)
            y_train = rand([1,self.num_dataset_train]);
            y_test = rand([1,self.num_dataset_test]);
            y_valid = rand([1,self.num_dataset_valid]);
        end

        function [tbl_train,tbl_test,tbl_valid] = generate_input(self)
            inputsize = self.get_inputsize;
            tbl_train = rand([inputsize,self.num_dataset_train]);
            tbl_test = rand([inputsize,self.num_dataset_test]);
            tbl_valid = rand([inputsize,self.num_dataset_valid]);
        end
    end
end