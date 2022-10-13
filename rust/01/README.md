# kata_01 fizz buzz

Print the numbers from 1 to 100. For multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. Print "FizzBuzz" for numbers which are multiples of both three and five.

## Implementations

### With match

```rust
fn main() {
    for i in 1..102 {
        match (i%3, i%5) {
            (0, 0) => println!("FizzBuzz"),
            (0, _) => println!("Fizz"),
            (_, 0) => println!("Buzz"),
            (_, _) => println!("{}", i)
        }
    }
}
```

### With if-else conditional

```rust
fn main() {
    for x in 1..=100 {
        if x % 3 == 0 && x % 5 == 0 {
            println!("FizzBuzz")
        } else if x % 3 == 0 {
            println!("Fizz")
        } else if x % 5 == 0 {
            println!("Buzz")
        } else {
            println!("{}", x)
        }
    }
}
```
