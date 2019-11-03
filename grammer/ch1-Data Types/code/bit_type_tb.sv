/* 
    SystemVerilog提供了2状态数据类型bit，只有0，1取值
    最重要的2状态数据类型是bit，常用在测试平台

    本例阐述bit变量的申明和基本使用

 */

module bit_type_tb;

    bit    [3:0]  var_a;
    bit           var_b;
    logic  [3:0]  en;

    initial begin
        // bit默认值是0
        $display("initial value var_a=0x%0h, var_b=%0b", var_a, var_b);  
        
        var_a = 4'hF;
        var_b = 1;
        $display("new value var_a=0x%0h, var_b=%0b", var_a, var_b);  

        var_a = 16'h456A;
        $display("truncated value var_a=0x%0h", var_a);  
        
        // x和z转换为0
        var_a = 4'b01zx;
        $display("value var_a=%b", var_a);  
             
    end
    
endmodule