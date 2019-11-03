/*
    SV提供了一些操作数组的方法
    本例主要是将面向对象和数组排序结合起来使用
*/

class Register;
    string name;
    rand bit [31:0] rank;
    rand bit [3:0] pages;

    function new(string name);
        this.name = name;
    endfunction //new()

    function void print();
       $display("name=%s, rank=%0d, pages=%0d", name, rank, pages);
    endfunction
endclass //classNameRegister;

module array_ordering_tb;
    Register rt[4];  // Register类型的静态数组
    string name_arr[4] = '{"apple", "google", "ms", "aws"};

    initial begin
        $display("\n------------initial value-------------");
        foreach(rt[i]) begin
            rt[i] = new(name_arr[i]);
            rt[i].randomize();
            rt[i].print();
        end

        $display("\n------------sort by name-----------------");
        rt.sort(x) with (x.name);
        foreach(rt[i]) rt[i].print();

        $display("\n--------------sort by rank, pages-------------");
        rt.sort(x) with ({x.rank, x.pages});
        foreach(rt[i]) rt[i].print();
    end
endmodule