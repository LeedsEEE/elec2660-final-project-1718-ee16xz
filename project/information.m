//
//  information.m
//  project
//
//  Created by 我好酷😎 on 2017/11/23.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "information.h"

@implementation information

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.genderarray = [NSArray arrayWithObjects:
        [NSString stringWithFormat:@"Female"],
        [NSString stringWithFormat:@"Male"],
                            nil];
    }
    return self;
}


@end
