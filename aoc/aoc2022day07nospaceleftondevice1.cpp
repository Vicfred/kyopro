// vicfred
// https://adventofcode.com/2022/day/7
// data structures, implementation
#include <fstream>
#include <iostream>
#include <istream>
#include <iterator>
#include <memory>
#include <set>
#include <sstream>
#include <string>
#include <vector>

using namespace std;
struct node {
  node *parent;
  string name;
  vector<node *> children;
  long long size;
  bool is_directory;
};

long long total_size(node *root) {
  long long answer = 0LL;
  if (root->children.size() == 0) {
    return root->size;
  }
  /*
  cout << "node " << root->name << " has children: ";
  for (const auto &child : root->children) {
    cout << child->name << " ";
  }
  cout << endl;
  */
  for (const auto &child : root->children) {
    // cout << "child " << child->name << " with size: " << child->size << endl;
    answer += total_size(child);
  }
  return answer;
}

int main() {
  /*
  node* root = new node;
  root->name = "/";
  root->parent = nullptr;
  root->size = 0;
  root->is_directory = true;
  node* d = new node;
  d->parent = root;
  d->name = "d";
  d->size = 0;
  d->is_directory = true;
  node* j = new node;
  j->name = "j";
  j->parent = d;
  j->size = 1234;
  j->is_directory = false;
  d->children.push_back(j);
  root->children.push_back(d);
  cout << total_size(root) << endl;
  */
  set<node *> directories;
  node *root = new node;
  root->name = "/";
  root->parent = nullptr;
  root->size = 0;
  root->is_directory = true;
  node *current = root;
  directories.insert(root);
  ifstream input("input.txt");
  for (string line; getline(input, line);) {
    istringstream iss(line);
    vector<string> tokens(istream_iterator<string>{iss},
                          istream_iterator<string>());
    // command
    if (tokens[0] == "$") {
      if (tokens[1] == "cd") {
        if (tokens[2] == "/") {
          current = root;
        } else if (tokens[2] == "..") {
          if (current == root) {
            current = root;
          } else {
            current = current->parent;
          }
        } else {
          for (const auto &child : current->children) {
            if (child->name == tokens[2]) {
              // TODO: test this when nodes have children
              current = child;
            }
          }
        }
      } else if (tokens[1] == "ls") {
        continue;
      }
      continue;
    }
    node *child = new node;
    child->parent = current;
    child->name = tokens[1];
    if (tokens[0] == "dir") {
      directories.insert(child);
      child->size = 0;
      child->is_directory = true;
    } else {
      // cout << line << endl;
      child->size = stoll(tokens[0]);
      child->is_directory = false;
    }
    current->children.push_back(child);
  }
  long long ans = 0LL;
  for (auto item : directories) {
    long long current_size = total_size(item);
    // cout << item->name << " " << current_size << endl;
    if (current_size <= 100000) {
      ans += current_size;
    }
  }
  cout << ans << endl;
  return 0;
}
