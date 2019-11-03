/*
    动态数组就是运行时size可变的数组
    默认动态数组的size是0，直到它被new()构造函数设置
    本例主要说明动态数组的申明及基本使用
*/


module dynamic_array_tb;

    int array1[];  // 装int类型的动态数组
    string fruits[];

    initial begin
        array1 = new [5];  // size设置为5 装5个int的数
        array1 = '{31, 67, 10, 4, 88};  // 初始化动态数组
        
        foreach(array1[i]) begin
            $display("array1[%0d] = %0d", i, array1[i]);
        end

        fruits = new [3];
        fruits = '{"apple", "orange", "mango"};

        $display("fruits.size() = %0d", fruits.size());
        fruits.delete();  // 清空数组
        $display("fruits.size() = %0d", fruits.size());
        fruits = new [fruits.size() + 1](fruits);  // 新增且copy数组
        $display("fruits.size() = %0d", fruits.size());


    end
    
endmodule