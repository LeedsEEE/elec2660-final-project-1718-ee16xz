//
//  datarecord.m
//  + or -
//
//  Created by 我好酷😎 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "datarecord.h"

@implementation datarecord

@synthesize score = _score;

static datarecord *_sharedInstance;

- (id) init {
    if (self = [super init]) {
        // custom initialization
    }
    return self;
}

+ (datarecord  *) sharedInstance
{
    if (!_sharedInstance) {
        _sharedInstance = [[datarecord alloc] init];
    }
    return _sharedInstance;
}

@end
