//
//  SingletonDispatcher.m
//  Calc
//
//  Created by 山崎進 on 2015/02/20.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import "SingletonDispatcher.h"
#import "Number.h"
#import "AllClear.h"

@implementation SingletonDispatcher

- (id)init {
    if(self = [super init]) {
        Number* number = [[Number alloc] initWithString:@"number"];
        self.nameToSingleton = [NSDictionary dictionaryWithObjectsAndKeys:
                                number, @"0",
                                number, @"1",
                                number, @"2",
                                number, @"3",
                                number, @"4",
                                number, @"5",
                                number, @"6",
                                number, @"7",
                                number, @"8",
                                number, @"9",
                                [[AllClear alloc] initWithString:@"AllClear"], @"AC",
                            nil];
    }
    return self;
}

- (void)push:(NSString *)buttonName {
    [(Element*)[self.nameToSingleton objectForKey:buttonName] print];
}




@end
