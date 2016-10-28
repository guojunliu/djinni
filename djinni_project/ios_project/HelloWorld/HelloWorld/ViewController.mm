//
//  ViewController.m
//  HelloWorld
//
//  Created by steve on 2016/10/27.
//  Copyright © 2016年 liuguojun. All rights reserved.
//

#import "ViewController.h"
#import "HWHelloWorld.h"

#include <iostream>
#include "hello_world_impl.hpp"

@interface ViewController ()
{
    HWHelloWorld *_helloWorldInterface;
    UIButton *_button;
    UITextView *_textView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // instantiate our library interface
    _helloWorldInterface = [HWHelloWorld create];
    
    
    
    
    //objective-c
    NSString *str = [_helloWorldInterface getHelloWorld];
    NSString *name = [_helloWorldInterface getName];
    
    [_helloWorldInterface setName:@"aasdadq"];
    
    NSString *name1 = [_helloWorldInterface getName];
    
    //objective-c++
    helloworld::HelloWorldImpl hw = helloworld::HelloWorldImpl();
    std::string strCpp = hw.get_hello_world();
    
    std::cout << strCpp << std::endl;
    
    NSString *str1 = [NSString stringWithUTF8String:strCpp.c_str()];
    
    
    
    
    
    // create a button programatically for the demo
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_button addTarget:self action:@selector(buttonWasPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_button setTitle:@"Get Hello World!" forState:UIControlStateNormal];
    _button.frame = CGRectMake(20.0, 20.0, 280.0, 40.0);
    [self.view addSubview:_button];
    
    // create a text view programatically
    _textView = [[UITextView alloc] init];
    // x, y, width, height
    _textView.frame = CGRectMake(20.0, 80.0, 280.0, 380.0);
    [self.view addSubview:_textView];
 
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    imageView.backgroundColor = [UIColor orangeColor];
    imageView.layer.cornerRadius = 50;
    imageView.layer.masksToBounds = YES;
}

- (void)buttonWasPressed:(UIButton*)sender
{
    NSString *response = [_helloWorldInterface getHelloWorld];
    _textView.text = [NSString stringWithFormat:@"%@\n%@", response, _textView.text];
}


@end
