//
//  Number.m
//  Calc
//
//  Created by 山崎進 on 2015/02/19.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import "Number.h"

@implementation Number

- (id)initWithString:(NSString *)name {
    return [super initWithString:name];
}

- (void)print {
    NSLog(@"Number %@", self.name);
}

@end
