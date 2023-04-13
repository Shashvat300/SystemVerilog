module arrr();
  
  int arr_data;
  
  initial
    begin
      arr_data = 8'b10101111;
      for(int i=0; i<$size(arr_data); i++)
        begin
          $display("Value of arr_data[%0d] = [%0b]",i,arr_data[i]);
        end
    end
endmodule
