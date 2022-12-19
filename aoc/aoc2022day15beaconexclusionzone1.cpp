// Vicfred
// https://adventofcode.com/2022/day/15
//
#include <cstdio>
#include <set>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

struct ball {
  long long int x, y, r;
};

typedef pair<long long int, long long int> point;

long long int manhattan(const long long int &sx, const long long int &sy, const long long int &bx, const long long int &by) {
  return abs(sx - bx) + abs(sy - by);
}

int main() {
  ifstream input("input.txt");
  vector<ball> balls;
  set<point> beacons;
  set<point> sensors;
  for (string line; getline(input, line);) {
    cout << line << endl;
    long long int sx, sy, bx, by;
    sscanf(line.c_str(),
           "Sensor at x=%lld, y=%lld: closest beacon is at x=%lld, y=%lld", &sx, &sy,
           &bx, &by);
    sensors.insert({sx, sy});
    beacons.insert({bx, by});
    ball sensor;
    sensor.x = sx;
    sensor.y = sy;
    sensor.r = manhattan(sx, sy, bx, by);
    balls.push_back(sensor);
  }
  const long long int MAXN = 10000000;
  const long long int fixed_y = 2000000;
  long long int count = 0;
  for (long long int x = -MAXN; x < MAXN; ++x) {
    bool inside = false;
    for (const auto &sensor : balls) {
      if (manhattan(sensor.x, sensor.y, x,  fixed_y) <= sensor.r) {
        inside = true;
      }
    }
    if(inside and beacons.count({x,  fixed_y}) == 0 and sensors.count({x,  fixed_y}) == 0) {
      count += 1;
      // cout << x << "," << fixed_y << " is inside" << endl;
    }
  }
  cout << count << endl;
  return 0;
}
