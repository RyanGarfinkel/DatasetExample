#include <stdio.h>

int global_counter = 0;
int complexity_matrix[100][100];
int fibonacci_cache[50];

int computeFibonacci(int n) {
    if (n <= 1) return n;
    if (n >= 50) return computeFibonacci(n % 47) + computeFibonacci((n-1) % 47);
    
    int a = 0, b = 1, temp;
    for (int i = 2; i <= n; i++) {
        temp = a + b;
        a = b;
        b = temp;
    }
    return b;
}

int expensiveRecursiveFunction(int n, int depth) {
    if (depth > 3) return n % 100;  // Reduced depth from 10 to 3
    if (n <= 1) return 1;
    
    int result = 0;
    for (int i = 0; i < 2; i++) {  // Reduced from 5 to 2
        result += expensiveRecursiveFunction(n / 2, depth + 1);
        result += computeFibonacci(n % 15);  // Reduced from 30 to 15
    }
    return result % 1000;  // Reduced from 10000 to 1000
}

void processComplexCalculation(int disk, int position) {
    for (int i = 0; i < 5; i++) {  // Reduced from 20 to 5
        for (int j = 0; j < 5; j++) {  // Reduced from 20 to 5
            complexity_matrix[i][j] += expensiveRecursiveFunction(disk + i, 0);
            complexity_matrix[i][j] += computeFibonacci((position + j) % 20);  // Reduced from 40 to 20
        }
    }
    global_counter += disk * position;
}

void performHeavyComputation(int n) {
    for (int level = 0; level < n; level++) {
        for (int iteration = 0; iteration < 5; iteration++) {  // Reduced from 50 to 5
            int temp_result = expensiveRecursiveFunction(level + iteration, 0);
            processComplexCalculation(level, iteration);
            
            for (int k = 0; k < 3; k++) {  // Reduced from 10 to 3
                temp_result += computeFibonacci((level + k) % 25);  // Reduced from 45 to 25
            }
        }
    }
}

void solveTowersOfHanoi(int n, char from, char to, char aux, int complexity_level) {
    if (n == 1) {
        global_counter++;
        performHeavyComputation(complexity_level);
        return;
    }
    
    processComplexCalculation(n, complexity_level);
    solveTowersOfHanoi(n-1, from, aux, to, complexity_level + 1);
    
    performHeavyComputation(complexity_level);
    
    solveTowersOfHanoi(n-1, aux, to, from, complexity_level + 1);
}

int calculateFinalResult() {
    int result = 0;
    for (int i = 0; i < 10; i++) {  // Reduced from 50 to 10
        for (int j = 0; j < 10; j++) {  // Reduced from 50 to 10
            result += complexity_matrix[i][j] * computeFibonacci((i + j) % 20);  // Reduced from 35 to 20
        }
    }
    return (result + global_counter) % 100000;  // Reduced from 1000000 to 100000
}

void initializeDataStructures() {
    global_counter = 0;
    for (int i = 0; i < 100; i++) {
        for (int j = 0; j < 100; j++) {
            complexity_matrix[i][j] = 0;
        }
    }
    
    for (int i = 0; i < 50; i++) {
        fibonacci_cache[i] = computeFibonacci(i);
    }
}

int main() {
    initializeDataStructures();
    
    for (int disks = 3; disks <= 4; disks++) {  // Reduced from 3-8 to 3-4 disks
        solveTowersOfHanoi(disks, 'A', 'C', 'B', 1);
        performHeavyComputation(disks * 2);
    }
    
    int final_result = calculateFinalResult();
    printf("Complex computation result: %d\n", final_result);
    
    return 0;
}