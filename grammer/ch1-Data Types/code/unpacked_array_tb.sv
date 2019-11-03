/*
    An unpacked array is used to refer to dimensions decleared after
    the variavle name.
    unpacked数组可以是固定大小的数组，动态数组，关联数组，队列
*/

module unpacked_array_tb;

    byte stack1[8];  // depth=8, 1 byte wide variable
    byte stack2[2][4];  // 2 rows, 4 cols
    bit [3:0][7:0] stack3[2][4];  // 2 rows, 4 cols

//-----------------------------------------------------------------------------
    initial begin
        foreach(stack1[i]) begin
            stack1[i] = $random;
            $display("assign 0x%0h to index %0d", stack1[i], i);
        end

        $display("stack1=%p", stack1);
    end

    /* 
        # assign 0x24 to index 0
        # assign 0x81 to index 1
        # assign 0x9 to index 2
        # assign 0x63 to index 3
        # assign 0xd to index 4
        # assign 0x8d to index 5
        # assign 0x65 to index 6
        # assign 0x12 to index 7
        # stack1='{36, -127, 9, 99, 13, -115, 101, 18}
    */

//-----------------------------------------------------------------------------

    initial begin
        #1;
        foreach(stack2[i]) begin
            foreach(stack2[i][j]) begin
                stack2[i][j] = $random;
                $display("stack[%0d][%0d] = 0x%0h", i, j, stack2[i][j]);
            end
        end
         $display("stack2= %p", stack2);
    end

    /*
        # stack[0][0] = 0x1
        # stack[0][1] = 0xd
        # stack[0][2] = 0x76
        # stack[0][3] = 0x3d
        # stack[1][0] = 0xed
        # stack[1][1] = 0x8c
        # stack[1][2] = 0xf9
        # stack[1][3] = 0xc6
        # stack2= '{'{1, 13, 118, 61}, '{-19, -116, -7, -58}}
    */
//-----------------------------------------------------------------------------

    initial begin
        #2;
        foreach(stack3[i]) begin
            foreach(stack3[i][j]) begin
                stack3[i][j] = $random;
                $display("stack[%0d][%0d] = 0x%0h", i, j, stack3[i][j]);
            end
        end
        $display("stack3 = %p", stack3);
        $display("stack3[0][0][2] = 0x%0h", stack3[0][0][2]);
    end

    /*
        # stack[0][0] = 0xe2f784c5
        # stack[0][1] = 0xd513d2aa
        # stack[0][2] = 0x72aff7e5
        # stack[0][3] = 0xbbd27277
        # stack[1][0] = 0x8932d612
        # stack[1][1] = 0x47ecdb8f
        # stack[1][2] = 0x793069f2
        # stack[1][3] = 0xe77696ce
        # stack3 = '{'{'{226, 247, 132, 197}, '{213, 19, 210, 170}, '{114, 175, 247, 229}, '{187, 210, 114, 119}},\
                     '{'{137, 50, 214, 18},   '{71, 236, 219, 143}, '{121, 48, 105, 242},  '{231, 118, 150, 206}}}
        # stack3[0][0][2] = 0xf7
    */
    
endmodule