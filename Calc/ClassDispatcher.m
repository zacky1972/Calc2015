//
//  ClassDispatcher.m
//  Calc
//
//  Created by 山崎進 on 2015/02/19.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import "ClassDispatcher.h"
#import "Element.h"

@implementation ClassDispatcher

- (id)init {
    if(self = [super init]) {
        self.nameToClass = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"Number", @"0",
                            @"Number", @"1",
                            @"Number", @"2",
                            @"Number", @"3",
                            @"Number", @"4",
                            @"Number", @"5",
                            @"Number", @"6",
                            @"Number", @"7",
                            @"Number", @"8",
                            @"Number", @"9",
                            @"AllClear", @"AC",
                            nil];
    }
    return self;
}

- (void)push:(NSString *)buttonName {
    [(Element*)[[NSClassFromString([self.nameToClass objectForKey:buttonName]) alloc]
                initWithString:buttonName]
     print];
}


@end
