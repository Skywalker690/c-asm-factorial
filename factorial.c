#include <stdio.h>

// Declaration of assembly function
extern long long fact(int n);

int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Factorial is not defined for negative numbers.\n");
        return 1;
    }

    long long result = fact(n);
    printf("Factorial of %d is %lld\n", n, result);

    return 0;
}
