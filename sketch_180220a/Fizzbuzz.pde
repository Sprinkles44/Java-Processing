class Fizzbuzz{
  int num;
  
  Fizzbuzz(int test){
    num=test;
  }
  
    void run() {
      int test3=num %3;
      int test5=num %5;
      if (test3 == 0){
        print("Fizz");
      }
      if (test5 == 0) {
        print("Buzz");
      }
    }
 
}