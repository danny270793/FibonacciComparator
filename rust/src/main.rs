use std::env;

fn fibonacci(n: i64) -> i64 {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

fn main() {
    let args: Vec<String> = env::args().collect();

    let argument: &String = &args[1];
    let number: i64 = argument.parse::<i64>().unwrap();
    let result: i64 = fibonacci(number);
    println!("Fibonacci({}): {}", number, result);
}
