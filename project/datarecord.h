//
//  datarecord.h
//  + or -
//
//  Created by 我好酷😎 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface datarecord : NSObject

@property (nonatomic,copy) NSString *score;

+ (datarecord*) sharedInstance;

@end
