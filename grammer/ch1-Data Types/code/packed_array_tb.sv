/*
    数组被分为packed数组和unpacked数组
    本例也展示packed数组
    多维packed数组仍然是连续的bit，但是也会被分割到更小的组里
    看例子就懂了：
*/


module packed_array_tb();

    bit [3:0][7:0] m_data;  // 2维packed数组，4bytes

    initial begin

        m_data = 32'hface_ecaf;

        $display("m_data=0x%0h", m_data);
        for (int i = 0; i<$size(m_data); i++) begin
            $display("m_data[%0d] = %b (0x%0h)", i, m_data[i], m_data[i]);
        end

        /*  打印结果：
            # m_data=0xfaceecaf
            # m_data[0] = 10101111 (0xaf)
            # m_data[1] = 11101100 (0xec)
            # m_data[2] = 11001110 (0xce)
            # m_data[3] = 11111010 (0xfa)
        */
        
    end


    
endmodule