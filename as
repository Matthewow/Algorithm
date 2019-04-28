#include <iostream>
using namespace std;
void Q1() {
	int iter = 0;
	double best = 0;
	int bestd = 0;
	int count = 0;
	int record[100000];

	while (1) {
		cin >> iter;
		if (iter == 0)
			break;
		while (iter > 0) {
			double d, p;
			cin >> d >> p;
			double value = p / (d*d);
			if (best == 0) {
				best = value;
				bestd = d;
			}
			else if (value < best) {
				best = value;
				bestd = d;
			}
			iter--;
			
		}
		record[count++] = bestd;
		best = 0;
		bestd = 0;
	}

	for (int i = 0; i < count; i++) {
		cout << "Menu " << i + 1 << ": ";
		cout << record[i] << endl;
	}

}

int main() {
	Q1();
	return 0;
}
