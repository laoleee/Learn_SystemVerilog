/*
    关联数组有点像其他语言的键值对
    index可以是任何类型
    本例简要说明关联数组的使用
*/


typedef int int_data[];

module associative_array_tb;

    int array1[int]; 
    int array2[string];
    string array3[string];
    int_data fruits[string];  // 用关联数组给动态数组做索引

    initial begin
        
        array1 = '{ 1 : 22,
                    6 : 34 };
 
       array2 = '{ "Ross" : 100,
                   "Joey" : 60 };
 
       array3 = '{ "Apples" : "Oranges",
                   "Pears" : "44" };
        
        fruits["apple"] = new [2];
        fruits["apple"] = '{4, 5};

        $display("array1 = %p", array1);
        $display("array2 = %p", array2);
        $display("array3 = %p", array3);

        foreach(fruits[str]) begin
            foreach(fruits[str][i]) begin
                $display("fruits[%s][%0d] = [%0d]", str, i, fruits[str][i]);
            end
        end
        // 相关函数
        $display("array1.num() = %0d", array1.num());
        $display("array2.size() = %0d", array2.size());
        $display("array3.exists(\"3\") = %0d", array3.exists("3"));

    end

endmodule
