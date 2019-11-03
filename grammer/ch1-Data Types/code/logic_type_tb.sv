/* 
    Verilog的reg类型只能在always和initial过程块里驱动
    wire类型只能在assign语句里驱动，SystemVerilog的logic
    4状态数据类型可以在过程块驱动和assign语句驱动，但是多
    驱动时候只能用assign语句

    本例阐述logic变量的申明和基本使用

 */

module logic_type_tb;

    logic  [3:0]  data;
    logic         en;

    initial begin
        $display("data=0x%0h, en=%0b", data, en);  // 默认值是X
        data = 4'hB;  // 在initial和always过程块中驱动
        $display("data=0x%0h, en=%0b", data, en);  
        #1;
        $display("data=0x%0h, en=%0b", data, en);      
    end

    assign en = data[0];  // 在assign语句中驱动
    
endmodule