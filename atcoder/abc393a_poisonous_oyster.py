# Vicfred
# https://atcoder.jp/contests/abc393/tasks/abc393_a
# implementation

def main():
    s1, s2 = input().split()
    if s1 == "fine" and s2 == "fine":
        print("4")
    if s1 == "fine" and s2 == "sick":
        print("3")
    if s1 == "sick" and s2 == "fine":
        print("2")
    if s1 == "sick" and s2 == "sick":
        print("1")

if __name__ == "__main__":
    main()
