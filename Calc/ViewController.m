//
//  ViewController.m
//  Calc
//
//  Created by 山崎進 on 2015/02/18.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)initButtonTargetToPushButton {
    id object;
    NSEnumerator* enumerator = self.view.subviews.objectEnumerator;
    while (object = [enumerator nextObject]) {
        if([object isMemberOfClass:[UIButton class]]) {
            [object addTarget:self action:@selector(pushButton:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dispatcher = [SelectorDispatcher new];
    
    [self initButtonTargetToPushButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)pushButton:(id)sender {
    [_dispatcher push:[sender titleLabel].text];
}

@end
