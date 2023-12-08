import sys

def fibonacci(n):
    if (n <= 1):
        return n
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)

desired = int(sys.argv[1])
result = fibonacci(desired)

print(f'Fibonacci({desired}): {result}')
