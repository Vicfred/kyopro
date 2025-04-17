// vicfred
// https://open.kattis.com/problems/stockprices
// priority queue
#include <algorithm>
#include <iostream>
#include <queue>
#include <string>
#include <utility>
#include <vector>

using namespace std;

typedef pair<int, int> pi;

int main() {
    int t;
    cin >> t;
    
    while(t--) {
        int n;
        cin >> n;

        priority_queue<pi> bids;
        priority_queue<pi, vector<pi>, greater<pi>> asks;

        int last_price;
        last_price = -1;

        for(int idx = 0; idx < n; idx++) {
            string direction, tmp;
            int quantity, price;
            cin >> direction;
            cin >> quantity;
            cin >> tmp;
            cin >> tmp;
            cin >> price;

            if(direction == "buy")
                bids.push(make_pair(price, quantity));
            if(direction == "sell")
                asks.push(make_pair(price, quantity));

            //cout << "compras: " << bids.size() << endl;
            //cout << "ventas: " << asks.size() << endl;

            while(true) {
                if(bids.empty() or asks.empty())
                    break;
                if(bids.top().first < asks.top().first)
                    break;
                if(bids.top().second <= 0) {
                    bids.pop();
                    break;
                }

                auto ask = bids.top();
                bids.pop();

                //cout << "compra: " << ask.first << " "
                //    << ask.second << endl;

                auto sell = asks.top();
                asks.pop();

                //cout << "venta: " << sell.first << " "
                //    << sell.second << endl;

                int taken = min(ask.second, sell.second);
                ask.second -= taken;
                sell.second -= taken;

                //cout << "cantidad: " << taken << endl;

                last_price = sell.first;

                //cout << "precio: " << last_price << endl;

                if(ask.second > 0)
                    bids.push(ask);
                if(sell.second > 0)
                    asks.push(sell);
            }

            if(asks.empty())
                cout << "-";
            else
                cout << asks.top().first;
            cout << " ";

            if(bids.empty())
                cout << "-";
            else
                cout << bids.top().first;
            cout << " ";

            if(last_price == -1)
                cout << "-";
            else
                cout << last_price;
            cout << endl;
        }
        //cout << "========" << endl;
    }

    return 0;
}

