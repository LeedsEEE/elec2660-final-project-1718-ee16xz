//
//  game2ViewController.m
//  project
//
//  Created by 我好酷😎 on 2017/11/28.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "game2ViewController.h"

@interface game2ViewController ()

@end

@implementation game2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.totallabel.text = self.total;
    self.rightlabel.text = self.right;
    self.wronglabel.text = self.wrong;
    self.accuracylabel.text = self.accuracy;
    
    datarecord *data = [datarecord sharedInstance];
    [data setScore:[NSString stringWithFormat:@"%@",self.right]];
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
