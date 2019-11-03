/*
    SV提供了各种类型的数组
    静态数组编译时就知道大小
    数组被分为packed数组和unpacked数组
    本例展示packed数组
*/


module static_array_tb ();

    bit [7:0] m_data;  // 编译时候知道size

    initial begin
        m_data = 8'hA2;
        
        $display("m_data = %b", m_data);
        for (int i = 0; i<$size(m_data); i++) begin
            $display("m_data[%0d] = %b", i, m_data[i]);
        end
    end
    
endmodule