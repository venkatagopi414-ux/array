class arr_constr;
rand bit [15:0]arr[];
  constraint elem_c {
arr.size==10;
    foreach (arr[i])
      arr[i] <= 50;
  arr.sum()<300;}
endclass

module arr;
arr_constr ex;
initial begin
ex=new();
ex.randomize();
 $display("Array= %p", ex.arr);
    $display("Sum= %0d", ex.arr.sum());
end
endmodule