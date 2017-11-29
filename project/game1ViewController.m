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
 
    //set text and background of the label  when start the game
    //one method of setting the initial random backgroundcolor ----use for loop
    for (int color = 0; color <_data.colorarray.count ; color++) {
        int colora = arc4random() %[_data.colorarray count];
        self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
        
        int colorb = arc4random()%[_data.colorarray count];
        self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
     
        int colorc = arc4random()%[_data.colorarray count];
        self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];
    }
/*
   //another method of setting backgroundcolor
    NSUInteger colora = arc4random() % 2;   //randomly generate the integers from 0~1;
    NSUInteger colorb = arc4random() % 2;
    NSUInteger colorc = arc4random() % 2;
    
   //set the initial backgroundcolor
    self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
    self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
    self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];*/
    
    //random textindex for each label
    NSUInteger texta = arc4random() % 10;
    NSUInteger textb = arc4random() % 10;
    NSUInteger textc = arc4random() % 10;
    //set the initial text
    self.firstlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:texta]];
    self.secondlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textb]];
    self.thirdlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textc]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


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
  
    //create another three wrong values
    NSUInteger value1_;
    value1_ = self.value + 3;
    NSUInteger value2_;
    value2_ = self.value + 2;
    NSUInteger value3_;
    value3_ = self.value - 2;
    
    self.answerarray = [NSMutableArray arrayWithObjects:[NSString stringWithFormat: @"%ld",self.value],
                        [NSString stringWithFormat:@"%ld",value1_],
                        [NSString stringWithFormat:@"%ld",value2_],
                        [NSString stringWithFormat:@"%ld",value3_],
                        nil];
  //randomly generate the titles of four answer buttons without repeating
    for (int i = 0; i< _answerarray.count; i++) {
        NSUInteger ansa = arc4random()%[_answerarray count];
        self.titlea = [self.answerarray objectAtIndex:ansa];
        [_buttona setTitle:self.titlea forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansa];
        
        NSUInteger ansb = arc4random()%[_answerarray count];
        self.titleb = [self.answerarray objectAtIndex:ansb];
        [_buttonb setTitle:self.titleb forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansb];
        
        NSUInteger ansc = arc4random()%[_answerarray count];
        self.titlec = [self.answerarray objectAtIndex:ansc];
        [_buttonc setTitle:self.titlec forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansc];
        
        NSUInteger ansd = arc4random()%[_answerarray count];
        self.titled = [self.answerarray objectAtIndex:ansd];
        [_buttond setTitle:self.titled forState:UIControlStateNormal];
        [_answerarray removeObjectAtIndex:ansd];
        
    }

    NSLog(@"right answer is %ld",self.value);
    
 /*   NSLog(@"%@",self.titlea);
    NSLog(@"%@",[NSString stringWithFormat:@"%ld",self.value]);*/
    
    NSInteger i = [self.titlea integerValue];
    NSInteger j = [[NSString stringWithFormat:@"%ld",self.value] integerValue];
    if (i == j){
        NSLog(@"yes");
    }

}

#pragma mark button A is pressed
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
    
    //information(text and background) of the label
    //random backgroundcolorindex for each label
    NSUInteger colora = arc4random() % 2;   //randomly generate the integers from 0~1;
    NSUInteger colorb = arc4random() % 2;
    NSUInteger colorc = arc4random() % 2;
    //random textindex for each label
    NSUInteger texta = arc4random() % 10;
    NSUInteger textb = arc4random() % 10;
    NSUInteger textc = arc4random() % 10;
    
    //set the backgroundcolor
    self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
    self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
    self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];
    
    //set the text
    self.firstlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:texta]];
    self.secondlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textb]];
    self.thirdlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textc]];
    

   /* NSLog(@"%@",self.buttona.titleLabel.text);*/
    
}

#pragma mark button B is pressed
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
    
    //information(text and background) of the label
    //random backgroundcolorindex for each label
    NSUInteger colora = arc4random() % 2;   //randomly generate the integers from 0~1;
    NSUInteger colorb = arc4random() % 2;
    NSUInteger colorc = arc4random() % 2;
    //random textindex for each label
    NSUInteger texta = arc4random() % 10;
    NSUInteger textb = arc4random() % 10;
    NSUInteger textc = arc4random() % 10;
    
    //set the backgroundcolor
    self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
    self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
    self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];
    
    //set the text
    self.firstlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:texta]];
    self.secondlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textb]];
    self.thirdlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textc]];
}

#pragma mark button C is pressed
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
    
    //information(text and background) of the label
    //random backgroundcolorindex for each label
    NSUInteger colora = arc4random() % 2;   //randomly generate the integers from 0~1;
    NSUInteger colorb = arc4random() % 2;
    NSUInteger colorc = arc4random() % 2;
    //random textindex for each label
    NSUInteger texta = arc4random() % 10;
    NSUInteger textb = arc4random() % 10;
    NSUInteger textc = arc4random() % 10;
    
    //set the backgroundcolor
    self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
    self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
    self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];
    
    //set the text
    self.firstlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:texta]];
    self.secondlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textb]];
    self.thirdlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textc]];
}

# pragma mark button D is pressed
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
    
    //information(text and background) of the label
    //random backgroundcolorindex for each label
    NSUInteger colora = arc4random() % 2;   //randomly generate the integers from 0~1;
    NSUInteger colorb = arc4random() % 2;
    NSUInteger colorc = arc4random() % 2;
    //random textindex for each label
    NSUInteger texta = arc4random() % 10;
    NSUInteger textb = arc4random() % 10;
    NSUInteger textc = arc4random() % 10;
    
    //set the backgroundcolor
    self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
    self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
    self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];
    
    //set the text
    self.firstlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:texta]];
    self.secondlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textb]];
    self.thirdlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textc]];
}

-(unsigned long)value {
    NSInteger A = 0;
    NSInteger B = 0;
    NSInteger C = 0;
    //OOO
    if (self.firstlabel.backgroundColor == [UIColor orangeColor] &&
        self.secondlabel.backgroundColor == [UIColor orangeColor] &&
        self.thirdlabel.backgroundColor == [UIColor orangeColor]) {
        A = A + [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"OOO");

    }
    //OOB
    else if (self.firstlabel.backgroundColor == [UIColor orangeColor] &&
             self.secondlabel.backgroundColor == [UIColor orangeColor] &&
             self.thirdlabel.backgroundColor == [UIColor blackColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"OOB");

    }
    //OBO
    else if (self.firstlabel.backgroundColor == [UIColor orangeColor]&&
             self.secondlabel.backgroundColor == [UIColor blackColor] &&
             self.thirdlabel.backgroundColor == [UIColor orangeColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"OBO");

    }
    //OBB
    else if (self.firstlabel.backgroundColor == [UIColor orangeColor]&&
             self.secondlabel.backgroundColor == [UIColor blackColor] &&
             self.thirdlabel.backgroundColor == [UIColor blackColor]){
        A = A + [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"OBB");
    }
    //BBB
    else if (self.firstlabel.backgroundColor == [UIColor blackColor]&&
             self.secondlabel.backgroundColor == [UIColor blackColor] &&
             self.thirdlabel.backgroundColor == [UIColor blackColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BBB");

    }
    //BBO
    else if (self.firstlabel.backgroundColor == [UIColor blackColor]&&
             self.secondlabel.backgroundColor == [UIColor blackColor] &&
             self.thirdlabel.backgroundColor == [UIColor orangeColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B - [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BBO");

    }
    //BOB
    else if (self.firstlabel.backgroundColor == [UIColor blackColor]&&
             self.secondlabel.backgroundColor == [UIColor orangeColor] &&
             self.thirdlabel.backgroundColor == [UIColor blackColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C - [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BOB");

    }
    //BOO
    else if (self.firstlabel.backgroundColor == [UIColor blackColor]&&
             self.secondlabel.backgroundColor == [UIColor orangeColor] &&
             self.thirdlabel.backgroundColor == [UIColor orangeColor]){
        A = A - [self.firstlabel.text integerValue];
        B = B + [self.secondlabel.text integerValue];
        C = C + [self.thirdlabel.text integerValue];
        self.value = A + B + C;
        NSLog(@"BOO");
    }
      return _value;
}

@end
