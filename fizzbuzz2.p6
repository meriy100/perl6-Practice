my subset Fizz of Int where * %% 3;
my subset Buzz of Int where * %% 5;
my subset FizzBuzz of Int where Fizz&Buzz;
my subset Number of Int where none Fizz|Buzz;

proto sub fizzbuzz ($) { * }
multi sub fizzbuzz (FizzBuzz) { "FizzBuzz" }
multi sub fizzbuzz (Fizz) { "Fizz" }
multi sub fizzbuzz (Buzz) { "Buzz" }
multi sub fizzbuzz (Number $number) { $number }

fizzbuzz($_).say for 1..15;
