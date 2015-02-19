//
//  ViewController.h
//  Calc
//
//  Created by 山崎進 on 2015/02/18.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dispatcher.h"

@interface ViewController : UIViewController

@property Dispatcher* dispatcher;

- (IBAction)pushButton:(id)sender;

@end

