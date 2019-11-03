/* 
    本例阐述SV的数值型变量的申明和基本使用
 */

 module integer_data_type_tb ();
    
    // 兼容Verilog的数据类型
    reg  [2:0]  r;
    wire [2:0]  w;
    integer     i;
    real        rl;
    time        t;
    realtime    rt;

    // SV特有的数据类型
    logic [3:0] l;
    bit   [3:0] b;
    byte        bt;
    shortint    si;
    int         it;
    longint     li;
    shortreal   sr;    

    initial begin
        // 看一下默认值，注意2-states和4-states的区别
        $display("initial value r=%b, w=%b, i=%d,\
            rl=%f, t=%f, rt=%f, l=%b, b=%b,\
            bt=%d, si=%d, it=%d, li=%d, sr=%f \n",
            r, w, i, rl, t, rt, l, b, bt, si, it, li, sr);
        
        // 赋值，注意变量（默认的）unsigned和signed的区别
        r  = 3'b011;  // 默认unsigned
        //w  = 3'b111;  // 默认unsigned  wire只能用assign赋值
        i  = -'d2;    // 默认signed
        rl = 2.2;     // 默认signed
        t  = 2.2;     // 时间只存储无符号数
        rt = -2.2;    // 默认signed，和real完全相同

        l  = 4'b0011;  // 默认unsigned
        b  = 4'b0001;  // 默认unsigned
        bt = -'d10;    // 默认sigined
        si = -'d10;    // 默认sigined
        it = -'d10;    // 默认signed
        li = -'d10;    // 默认signed
        sr = -2.2;     // 默认signed

        // 看一下赋值
       $display("given value r=%b, w=%b, i=%d,\
            rl=%f, t=%f, rt=%f, l=%b, b=%b,\
            bt=%d, si=%d, it=%d, li=%d, sr=%f \n",
            r, w, i, rl, t, rt, l, b, bt, si, it, li, sr);

    end
 endmodule
