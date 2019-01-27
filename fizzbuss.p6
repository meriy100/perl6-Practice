proto sub fizzbuzz ($) { * }
multi sub fizzbuzz (Int $ where * %% 15) { "FuzzBuzz" }
multi sub fizzbuzz (Int $ where * %% 3) { "Fizz" }
multi sub fizzbuzz (Int $ where * %% 5) { "Buzz" }
multi sub fizzbuzz (Int $number) { $number }

fizzbuzz($_).say for 1..15;
