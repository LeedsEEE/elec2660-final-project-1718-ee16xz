//
//  game2ViewController.h
//  project
//
//  Created by 我好酷😎 on 2017/11/28.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "game1ViewController.h"
#import "datarecord.h"

@interface game2ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *totallabel;
@property (weak, nonatomic) IBOutlet UILabel *rightlabel;
@property (weak, nonatomic) IBOutlet UILabel *wronglabel;
@property (weak, nonatomic) IBOutlet UILabel *accuracylabel;

@property NSString *right;
@property NSString *wrong;
@property NSString *total;
@property NSString *accuracy;


@end
