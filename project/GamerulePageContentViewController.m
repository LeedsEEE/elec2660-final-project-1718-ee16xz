//
//  GamerulePageContentViewController.m
//  project
//
//  Created by 我好酷😎 on 2017/12/2.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "GamerulePageContentViewController.h"

@interface GamerulePageContentViewController ()

@end

@implementation GamerulePageContentViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.Ruleimage.image = [UIImage imageNamed:self.imagefile];
    self.Rulelabel.text = self.ruletext;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
