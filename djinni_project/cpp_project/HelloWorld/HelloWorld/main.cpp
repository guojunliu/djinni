//
//  main.cpp
//  HelloWorld
//
//  Created by steve on 2016/10/27.
//  Copyright © 2016年 liuguojun. All rights reserved.
//

#include <iostream>
using namespace std;

#include "hello_world_impl.hpp"

int main(int argc, const char * argv[]) {
    // insert code here...
    cout << "Hello, World!\n";
    
    helloworld::HelloWorldImpl hw = helloworld::HelloWorldImpl();
    
    string myString = hw.get_hello_world();
    cout << myString << endl;
    
    return 0;
}
