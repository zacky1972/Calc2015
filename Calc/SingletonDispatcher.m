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
        self.nameToSingleton = [NSDictionary dictionaryWithObjectsAndKeys:
                                [[Number alloc] initWithString:@"0"], @"0",
                                [[Number alloc] initWithString:@"1"], @"1",
                                [[Number alloc] initWithString:@"2"], @"2",
                                [[Number alloc] initWithString:@"3"], @"3",
                                [[Number alloc] initWithString:@"4"], @"4",
                                [[Number alloc] initWithString:@"5"], @"5",
                                [[Number alloc] initWithString:@"6"], @"6",
                                [[Number alloc] initWithString:@"7"], @"7",
                                [[Number alloc] initWithString:@"8"], @"8",
                                [[Number alloc] initWithString:@"9"], @"9",
                                [[AllClear alloc] initWithString:@"AllClear"], @"AC",
                            nil];
    }
    return self;
}

- (void)push:(NSString *)buttonName {
    [(Element*)[self.nameToSingleton objectForKey:buttonName] print];
}




@end
