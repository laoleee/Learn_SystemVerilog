module float_number_tb;
  real  pi;         // Declared to be of type real
  real  freq;
 
  initial begin
    pi   = 3.14;    // Store floating point number
    freq = 1e6;     // Store exponential number
 
    $display ("Value of pi = %f", pi);
    $display ("Value of pi = %0.3f", pi);
    $display ("Value of freq = %0d", freq);
  end
endmodule