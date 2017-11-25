//
//  ViewController.h
//  project
//
//  Created by 我好酷😎 on 2017/11/6.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewController.h"
@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate,UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nametext;

@property (weak, nonatomic) IBOutlet UIPickerView *GenderPickerView;

- (IBAction)savebutton:(id)sender;




@end

