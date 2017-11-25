//
//  ViewController.m
//  project
//
//  Created by 我好酷😎 on 2017/11/6.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.GenderPickerView.delegate = self;
    self.GenderPickerView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


# pragma mark Picker View Delegate Method
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    
    NSString *_row = [[NSString alloc] init];
    if (row == 0) {
        _row = @"Female";
    } else {
        _row = @"Male";
    }
    return _row;
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
}


#pragma mark Picker View Data Source Method
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return 2;
}


#pragma mark Text Field Delegate Method
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

/*- (IBAction)backgroundPressed:(id)sender {
    if([self.nametext isFirstResponder]){
        [self.nametext resignFirstResponder];
    }
}
*/

- (IBAction)savebutton:(id)sender {
    NSLog(@"%@", self.nametext.text);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    HomeViewController *hv;
    hv = [segue destinationViewController];
    hv.name1 = self.nametext.text;
}




@end
