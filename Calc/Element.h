//
//  Element.h
//  Calc
//
//  Created by 山崎進 on 2015/02/19.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Element : NSObject

@property NSString* name;

- (id)initWithString:(NSString*)name;

- (void)print;

@end
