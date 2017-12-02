//
//  GameruleRootViewController.h
//  project
//
//  Created by 我好酷😎 on 2017/12/2.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamerulePageContentViewController.h"

@interface GameruleRootViewController : UIViewController<UIPageViewControllerDataSource>

@property (nonatomic,strong) UIPageViewController *pageviewcontroller;
@property (nonatomic,strong) NSArray *ruleimagearray;
@property (nonatomic,strong) NSArray *ruletextarray;

- (GamerulePageContentViewController *)viewcontrolleratindex:(NSUInteger)index;



@end
