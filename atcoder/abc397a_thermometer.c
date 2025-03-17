/* Vicfred
 * https://atcoder.jp/contests/abc397/tasks/abc397_a
 * implementation
 */
#include <stdio.h>

int main() {
    double X;
    scanf("%lf", &X);
    
    if(X >= 38.0) {
        printf("1\n");
    } else if(X >= 37.5) {
        printf("2\n");
    } else {
        printf("3\n");
    }
    
    return 0;
}
