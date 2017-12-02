//
//  GamerulePageContentViewController.h
//  project
//
//  Created by 我好酷😎 on 2017/12/2.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GamerulePageContentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *Ruleimage;
@property (weak, nonatomic) IBOutlet UILabel *Rulelabel;

@property NSUInteger pageindex;
@property NSString *imagefile;
@property NSString *ruletext;
@end
