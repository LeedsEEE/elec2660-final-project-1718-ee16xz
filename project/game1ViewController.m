//
//  game1ViewController.m
//  project
//
//  Created by 我好酷😎 on 2017/11/28.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "game1ViewController.h"
#import "information.h"
@interface game1ViewController ()

@end

@implementation game1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //hidden four answers button
    //show three labels and remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    //initilize the information class
    self.data = [[information alloc] init];
    
    //information(text and background) of the label  when start the game
    //random backgroundcolorindex for each label
    NSUInteger colora = arc4random() % 2;   //randomly generate the integers from 0~1;
    NSUInteger colorb = arc4random() % 2;
    NSUInteger colorc = arc4random() % 2;
    //random textindex for each label
    NSUInteger texta = arc4random() % 10;
    NSUInteger textb = arc4random() % 10;
    NSUInteger textc = arc4random() % 10;
    
    //set the initial backgroundcolor
    self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
    self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
    self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];
    
    //set the initial text
    self.firstlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:texta]];
    self.secondlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textb]];
    self.thirdlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textc]];
    
/*    //init the values shown on each label
    NSInteger A = 0;
    NSInteger B = 0;
    NSInteger C = 0;
    //BBB
    if (self.firstlabel.backgroundColor == [UIColor brownColor] &&
        self.secondlabel.backgroundColor == [UIColor brownColor] &&
        self.thirdlabel.backgroundColor == [UIColor brownColor]) {
        A = A + [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BBB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //BBR
    else if (self.firstlabel.backgroundColor == [UIColor brownColor] &&
             self.secondlabel.backgroundColor == [UIColor brownColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BBR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //BRB
    else if (self.firstlabel.backgroundColor == [UIColor brownColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor brownColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BRB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //BRR
    else if (self.firstlabel.backgroundColor == [UIColor brownColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BRR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RRR
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RRR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RRB
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor brownColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RRB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RBR
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor brownColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RBR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RBB
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor brownColor] &&
             self.thirdlabel.backgroundColor == [UIColor brownColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RBB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }*/
    

    
  
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


- (IBAction)rememberbuttonpressed:(id)sender {
    //When the remember button is pressed, three labels and itself are disappeared.
    //Four answer buttons show on the UI
    self.firstlabel.hidden = true;
    self.secondlabel.hidden = true;
    self.thirdlabel.hidden = true;
    self.buttonremember.hidden = true;
    
    self.buttona.hidden = false;
    self.buttonb.hidden = false;
    self.buttonc.hidden = false;
    self.buttond.hidden = false;
    
    NSLog(@"%ld",self.value);
  
    //create another three wrong values
    NSInteger value1_;
    value1_ = self.value + 3;
    NSInteger value2_;
    value2_ = (self.value/2)+4;
    NSInteger value3_;
    value3_ = self.value - 2;
    
    self.answerarray = [NSMutableArray arrayWithObjects:[NSString stringWithFormat: @"%ld",self.value],
                        [NSString stringWithFormat:@"%ld",value1_],
                        [NSString stringWithFormat:@"%ld",value2_],
                        [NSString stringWithFormat:@"%ld",value3_],
                        nil];
  //randomly generate the titles of four answer buttons without repeating
    for (int i = 0; i< _answerarray.count; i++) {
        NSUInteger ansa = arc4random()%[_answerarray count];
        [_buttona setTitle:[self.answerarray objectAtIndex:ansa] forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansa];
        
        NSUInteger ansb = arc4random()%[_answerarray count];
        NSString *titleb = [self.answerarray objectAtIndex:ansb];
        [_buttonb setTitle:titleb forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansb];
        
        NSUInteger ansc = arc4random()%[_answerarray count];
        NSString *titlec = [self.answerarray objectAtIndex:ansc];
        [_buttonc setTitle:titlec forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansc];
        
        NSUInteger ansd = arc4random()%[_answerarray count];
        NSString *titled = [self.answerarray objectAtIndex:ansd];
        [_buttond setTitle:titled forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansd];
    }

    NSLog(@"%@",self.answerarray);
    


}

- (IBAction)answerA:(id)sender {
    //if buttona is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
}
- (IBAction)answerB:(id)sender {
    //if buttonb is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
}
- (IBAction)answerC:(id)sender {
    //if buttonc is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
}
- (IBAction)answerD:(id)sender {
    //if buttond is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
}

-(unsigned long)value {
    NSInteger A = 0;
    NSInteger B = 0;
    NSInteger C = 0;
    //BBB
    if (self.firstlabel.backgroundColor == [UIColor brownColor] &&
        self.secondlabel.backgroundColor == [UIColor brownColor] &&
        self.thirdlabel.backgroundColor == [UIColor brownColor]) {
        A = A + [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BBB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //BBR
    else if (self.firstlabel.backgroundColor == [UIColor brownColor] &&
             self.secondlabel.backgroundColor == [UIColor brownColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BBR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //BRB
    else if (self.firstlabel.backgroundColor == [UIColor brownColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor brownColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BRB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //BRR
    else if (self.firstlabel.backgroundColor == [UIColor brownColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BRR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RRR
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RRR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RRB
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor redColor] &&
             self.thirdlabel.backgroundColor == [UIColor brownColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RRB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RBR
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor brownColor] &&
             self.thirdlabel.backgroundColor == [UIColor redColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RBR");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    //RBB
    else if (self.firstlabel.backgroundColor == [UIColor redColor]&&
             self.secondlabel.backgroundColor == [UIColor brownColor] &&
             self.thirdlabel.backgroundColor == [UIColor brownColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"RBB");
        NSLog(@"%ld",(long)A);
        NSLog(@"%ld",(long)B);
        NSLog(@"%ld",(long)C);
    }
    return _value;
}
@end
