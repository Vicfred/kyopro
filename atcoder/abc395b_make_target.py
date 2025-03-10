def create_grid(n):
    grid = [['#' for _ in range(n + 1)] for _ in range(n + 1)]
    
    for i in range(1, n + 1):
        j = n + 1 - i
        if i <= j:
            for k in range(i, j + 1):
                for l in range(i, j + 1):
                    grid[k][l] = '#' if i % 2 == 1 else '.'
    
    for i in range(1, n + 1):
        print("".join(grid[i][1:]))

if __name__ == "__main__":
    n = int(input())
    create_grid(n)
