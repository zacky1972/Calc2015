//
//  Element.m
//  Calc
//
//  Created by 山崎進 on 2015/02/19.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import "Element.h"

@implementation Element

- (id)initWithString:(NSString *)name {
    if(self = [super init]) {
        self.name = name;
    }
    return self;
}



@end
