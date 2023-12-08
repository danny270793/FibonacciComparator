function fibonacci(n: number): number {
    if (n <= 1) {
        return n
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

const desired: string = process.argv[2]
const result: number = fibonacci(desired)

console.log(`Fibonacci(${desired}): ${result}`)
