//
//  HomeViewController.m
//  project
//
//  Created by 我好酷😎 on 2017/11/23.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "HomeViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.Namelabel.text = [NSString stringWithFormat:@"%@",_name1];
    
/*  self.Namelabel.text = [NSString stringWithFormat:@"%@",self.nametext.text];
*/
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
