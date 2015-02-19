//
//  Dispatcher.m
//  Calc
//
//  Created by 山崎進 on 2015/02/19.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import "SelectorDispatcher.h"

@implementation SelectorDispatcher

- (id)init {
    if(self = [super init]) {
        self.nameToSelector = [NSDictionary dictionaryWithObjectsAndKeys:
                               @"pushNumber:", @"0",
                               @"pushNumber:", @"1",
                               @"pushNumber:", @"2",
                               @"pushNumber:", @"3",
                               @"pushNumber:", @"4",
                               @"pushNumber:", @"5",
                               @"pushNumber:", @"6",
                               @"pushNumber:", @"7",
                               @"pushNumber:", @"8",
                               @"pushNumber:", @"9",
                               @"allClear", @"AC",
                               nil];
    }
    return self;
}

- (void)push:(NSString *)buttonName {
    [self performSelector:NSSelectorFromString([self.nameToSelector objectForKey:buttonName])
               withObject:buttonName afterDelay:0.0];
}

- (void)pushNumber:(NSString *)number {
    NSLog(@"%@", number);
}

- (void)allClear {
    NSLog(@"all clear");
}


@end
