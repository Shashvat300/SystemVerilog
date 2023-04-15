// Queue Mathods................................

module queue_mathod();
  
  string array [$];
  
  initial
    begin
      array='{"Apple", "Banana", "Mango", "Peanuts"};
      
      $display("Size of the array =%0d, array=%p\n",array.size(),array);
      
      array.insert(0,"NOthing");
      $display("Afte using array.insart()");
      $display("Size of the array =%0d, array=%p\n",array.size(),array);
      
      array.delete(2);
      $display("After using array.delete(2)");
       $display("Size of the array =%0d, array=%p\n",array.size(),array);
      
      array.pop_front();
      $display("After using array.pop_front()");
      $display("Size of the array =%0d, array=%p\n",array.size(),array);
      
      array.pop_back();
      $display("After Using array.pop_back()");
      $display("Size of the array =%0d, array=%p\n",array.size(),array);
      
      array.push_front("Nootebook");
      $display("After using array.push_front(Notebook)");
      $display("Size of the array =%0d, array=%p\n",array.size(),array);
      
      array.push_back("Book");
      $display("After using array.back_front(Book)");
      $display("Size of the array =%0d, array=%p\n",array.size(),array);
    end
endmodule
  



// Result.....................
Size of the array =4, array='{"Apple", "Banana", "Mango", "Peanuts"} 

Afte using array.insart()
Size of the array =5, array='{"NOthing", "Apple", "Banana", "Mango", "Peanuts"} 

After using array.delete(2)
Size of the array =4, array='{"NOthing", "Apple", "Mango", "Peanuts"} 

After using array.pop_front()
Size of the array =3, array='{"Apple", "Mango", "Peanuts"} 

After Using array.pop_back()
Size of the array =2, array='{"Apple", "Mango"} 

After using array.push_front(Notebook)
Size of the array =3, array='{"Nootebook", "Apple", "Mango"} 

After using array.back_front(Book)
Size of the array =4, array='{"Nootebook", "Apple", "Mango", "Book"} 

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Sat Apr 15 05:58:45 2023
Done
