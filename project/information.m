//
//  information.m
//  project
//
//  Created by 我好酷😎 on 2017/11/23.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "information.h"

@implementation information

- (id)init
{
    self = [super init];
    if (self) {
        self.colorarray = [NSArray arrayWithObjects:
                           [UIColor brownColor],
                           [UIColor redColor],
                                nil];
        
        self.numberarray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", nil];
    }
    return self;
}


@end
