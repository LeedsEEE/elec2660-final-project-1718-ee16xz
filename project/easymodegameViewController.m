//
//  easymodegameViewController.m
//  + or -
//
//  Created by 我好酷😎 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "easymodegameViewController.h"

@interface easymodegameViewController ()

@end

@implementation easymodegameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //hidden the four answer buttons first
    self.button1.hidden = true;
    self.button2.hidden = true;
    self.button3.hidden = true;
    self.button4.hidden = true;

    //initilize the information class
    self.data1 = [[information alloc] init];
    
    [self labelproperties];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rememberbutton1:(id)sender {
}

- (IBAction)answer1:(id)sender {
}

- (IBAction)answer2:(id)sender {
}

- (IBAction)answer3:(id)sender {
}

- (IBAction)answer4:(id)sender {
}

//use the void function to set the label properties
- (void)labelproperties{
    //set text and background of the label
    //set the initial random backgroundcolor by using the for loop
    for (int color = 0; color <_data1.colorarray.count ; color++) {
        int color1 = arc4random() %[_data1.colorarray count];
        self.label1.backgroundColor = [self.data1.colorarray objectAtIndex:color1];
        
        int color2 = arc4random()%[_data1.colorarray count];
        self.label2.backgroundColor = [self.data1.colorarray objectAtIndex:color2];
    }

    //random textindex for each label
    NSUInteger text1 = arc4random() % 10;
    NSUInteger text2 = arc4random() % 10;
    //set the text of the labels
    self.label1.text = [NSString stringWithFormat:@"%@",[self.data1.numberarray objectAtIndex:text1]];
    self.label2.text = [NSString stringWithFormat:@"%@",[self.data1.numberarray objectAtIndex:text2]];
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
