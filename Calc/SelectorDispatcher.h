//
//  Dispatcher.h
//  Calc
//
//  Created by 山崎進 on 2015/02/19.
//  Copyright (c) 2015年 zacky1972. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectorDispatcher : NSObject

@property NSDictionary* nameToSelector;

- (void)push:(NSString*)buttonName;

@end
