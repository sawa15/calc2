#include <iostream>
#include <stack>
#include <string>
#include <vector>
#include <cmath>

using namespace std;


class Calc {
    vector<double> nums;
    vector<char> chars;
    vector<double> combo;
    string input;
public:
    Calc(string str) {
        input = str;
        evaluate();
    }

    void printOPZ() {
        int j = 0;
        int k = 0;
        cout << "# OPZ: ";
        for (int i = 0; i < combo.size(); i++) {
            if (combo[i] == 0) {
                cout << chars[j] << " ";
                j++;
            }
            else {
                cout << nums[k] << " ";
                k++;
            }
        }
        cout << endl;
    }

    double calculate() {
        int j = 0;
        int k = 0;
        double a = 0;
        double b = 0;
        cout << "# CALCULATING: " << endl;
        stack<double> localStack;
        for (int i = 0; i < combo.size(); i++) {
            if (combo[i] == 0) {

                switch (chars[j]) { // самому стыдно за то что дальше, но ничего с этим поделать не смог, не бей
                    case '+':
                        a = localStack.top();
                        localStack.pop();
                        b = localStack.top();
                        localStack.pop();
                        localStack.push(b + a);
                        cout << endl << "+: " << b << " + " << a << " = " << b + a;
                        break;
                    case '-':
                        a = localStack.top();
                        localStack.pop();
                        b = localStack.top();
                        localStack.pop();
                        localStack.push(b - a);
                        cout << endl << "-: " << b << " - " << a << " = " << b - a;
                        break;
                    case '*':
                        a = localStack.top();
                        localStack.pop();
                        b = localStack.top();
                        localStack.pop();
                        localStack.push(b * a);
                        cout << endl << "*: " << b << " * " << a << " = " << b * a;
                        break;
                    case '/':
                        a = localStack.top();
                        localStack.pop();
                        b = localStack.top();
                        localStack.pop();
                        localStack.push(b / a);
                        cout << endl << "/: " << b << " / " << a << " = " << b / a;
                        break;
                    case '^':
                        a = localStack.top();
                        localStack.pop();
                        b = localStack.top();
                        localStack.pop();
                        localStack.push(pow(b, a));
                        cout << endl << "^: " << b << " ^ " << a << " = " << pow(b, a);
                        break;
                    case 'a':
                        a = localStack.top();
                        localStack.pop();
                        localStack.push(abs(a));
                        cout << endl << "a: abs(" << a << ") = " << abs(a);
                        break;
                    case 'c':
                        a = localStack.top();
                        localStack.pop();
                        localStack.push(cos(a));
                        cout << endl << "c: cos(" << a << ") = " << cos(a);
                        break;
                    case 's':
                        a = localStack.top();
                        localStack.pop();
                        localStack.push(sin(a));
                        cout << endl << "s: sin(" << a << ") = " << sin(a);
                        break;

                }
                j++;
            }
            else {
                localStack.push(nums[k]);
                k++;
            }
        }
        return localStack.top();
    }

private:
    void evaluate() {
        stack<char> *stack1 = new stack<char>;
        int i = 0;
        int j = 0;
        bool flagReal = false;

        while (i < input.size()) {
            if (isNum(input[i])) {
                if (input[i] == '.') {
                    i++;
                    flagReal = true;
                    j = 1;
                    continue;
                }
                if (i > 0 && isNum(input[i - 1])) {
                    if (!flagReal)
                        nums[nums.size() - 1] = nums[nums.size() - 1] * 10 + (input[i] - 48);
                    else {
                        nums[nums.size() - 1] = nums[nums.size() - 1] + (input[i] - 48) * pow(10, -j);
                        j++;
                    }

                }
                else {
                    combo.push_back(1);
                    flagReal = false;
                    nums.push_back(input[i] - 48);
                }
            }
            else if (input[i] == '+' || input[i] == '-' || input[i] == '*' || input[i] == '/' || input[i] == '^' ||
                     input[i] == 's' || input[i] == 'c' || input[i] == 'a') {
                if (!stack1->empty() && getPriority(input[i]) <= getPriority(stack1->top())) {
                    while (!stack1->empty() && getPriority(input[i]) <= getPriority(stack1->top())) {
                        combo.push_back(0);
                        chars.push_back(stack1->top());
                        stack1->pop();
                    }

                    stack1->push(input[i]);
                }
                else {
                    stack1->push(input[i]);
                }
            }
            else if (input[i] == '(') {
                stack1->push(input[i]);
            }
            else if (input[i] == ')') {
                dropStack(stack1);
            }

            i++;
        }
        dropStack(stack1);
    }

    int getPriority(char c) {
        int res = 0;
        if (c == '(')
            res = 0;
        else if (c == '+' || c == '-')
            res = 1;
        else if (c == '*' || c == '/')
            res = 2;
        else
            res = 3;
        return res;
    }

    bool isNum(char c) {
        return (c >= '0' && c <= '9' || c == '.');
    }

    void dropStack(stack<char> *stack1) {
        while (!stack1->empty() && stack1->top() != '(') {
            chars.push_back(stack1->top());
            combo.push_back(0);
            stack1->pop();
        }

        if (!stack1->empty() && stack1->top() == '(') {
            stack1->pop();
        }

        if (!stack1->empty() && (stack1->top() == 's' || stack1->top() == 'c' || stack1->top() == 'a')) {
            chars.push_back(stack1->top());
            combo.push_back(0);
            stack1->pop();
        }
    }
};

string getInput() {
    string res = "";
    char c = '\0';
    cin >> c;
    while (c != 'e') {
        if (c == 's' || c == 'c' || c == 'a') {
            res += c;
            cin >> c >> c;
        }
        else if (c == '-' && (res[res.size() - 1] == '(' || res.size() == 0)) {
            res += "0-";
        }
        else {
            res += c;
        }
        cin >> c;
    }
    return res;
}

string clean(string input) {
    string res = "";
    int i = 0;
    while (i < input.size()) {
        if (input[i] == 's' || input[i] == 'c' || input[i] == 'a') {
            res += input[i];
            i += 2;
        }
        else if (input[i] == '-' && (res[res.size() - 1] == '(' || res.size() == 0)) {
            res += "0-";
        }
        else {
            res += input[i];
        }
        i++;
    }
    return res;
}

int main(int argc, char **argv) {
    string input = "";
    if (argc > 1) {
        for (int i = 1; i < argc; i++) {
            input += argv[i];
        }
        input = clean(input);
    }
    else
        input = getInput();
    cout << endl << "# INPUT: " << input << endl;

    Calc c(input);
    c.printOPZ();
    cout << endl << c.calculate();
    return 0;
}
/*
 *
 */

