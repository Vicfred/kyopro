// Vicfred
// https://atcoder.jp/contests/abc180/tasks/abc180_b
// math
#include <stdio.h>
#include <math.h>

int main() {
    int n;
    scanf("%d\n", &n);

    long long int manhattan = 0L;
    double euclidean = 0.0L;
    long long int chebyshev = 0L;

    long long int x;
    for(int i = 0; i < n; i++) {
        scanf("%lld", &x);
        x = fabs(x);
        manhattan += x;
        euclidean += x*x;
        chebyshev = fmax(chebyshev, x);
    }

    euclidean = sqrt(euclidean);

    printf("%lld\n%.12lf\n%lld\n", manhattan, euclidean, chebyshev);
    
    return 0;
}
