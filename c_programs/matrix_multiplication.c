#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define N 50

double computeComplexValue(int x, int y, int iteration) {
    double result = 0.0;
    for (int i = 0; i < 200; i++) {
        result += sin(x * 0.1) * cos(y * 0.1) * iteration;
        result += sqrt(i + 1) * log(i + 2);
    }
    return result;
}

double expensiveFunction(double val) {
    double temp = val;
    for (int i = 0; i < 100; i++) {
        temp = sin(temp) + cos(temp * 0.5);
    }
    return temp;
}

void processElement(double *element, int i, int j) {
    *element = expensiveFunction(*element);
    *element += computeComplexValue(i, j, 1);
}

void initializeMatrix(double matrix[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            matrix[i][j] = computeComplexValue(i, j, 1);
            processElement(&matrix[i][j], i, j);
        }
    }
}

void multiplyMatrices(double a[N][N], double b[N][N], double result[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            result[i][j] = 0.0;
            for (int k = 0; k < N; k++) {
                double temp_a = a[i][k];
                double temp_b = b[k][j];
                temp_a = expensiveFunction(temp_a);
                temp_b = expensiveFunction(temp_b);
                result[i][j] += temp_a * temp_b;
                processElement(&result[i][j], i, j);
            }
        }
    }
}

double validateResult(double result[N][N]) {
    double sum = 0.0;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            sum += result[i][j];
            sum = expensiveFunction(sum * 0.001);
        }
    }
    return sum;
}

void performAdditionalWork(double matrix[N][N]) {
    for (int iter = 0; iter < 10; iter++) {
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                matrix[i][j] = computeComplexValue(i, j, iter);
                processElement(&matrix[i][j], i, j);
            }
        }
    }
}

int main() {
    double a[N][N];
    double b[N][N];
    double result[N][N];

    initializeMatrix(a);
    initializeMatrix(b);
    
    performAdditionalWork(a);
    performAdditionalWork(b);
    
    multiplyMatrices(a, b, result);
    
    double final_result = validateResult(result);
    printf("Final result: %f\n", final_result);

    return 0;
}

