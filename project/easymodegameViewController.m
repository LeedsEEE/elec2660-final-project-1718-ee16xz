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
    
    // set the time limit of the game: 30s
     self.runtime1 = 30;
    // create the timer - timeinterval: count every 1s;
    //                    target:timer self;
    //                    selector:the message to send to target when the timer fires
    //                    repeat: repeat everytime when load the view
     self.timer1 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerfire:) userInfo:nil repeats:YES];
    
    //hidden the four answer buttons first
    self.button1.hidden = true;
    self.button2.hidden = true;
    self.button3.hidden = true;
    self.button4.hidden = true;

    //initilize the information class
    self.data1 = [[information alloc] init];
    
    [self labelproperties];
    [self audioplayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark rememberbutton
- (IBAction)rememberbutton1:(id)sender {
    //when the remember button is pressed, two labels and the button disappear
    self.label1.hidden = true;
    self.label2.hidden = true;
    self.rememberbuttonpressed.hidden = true;
    
    //four answer buttons appear
    self.button1.hidden = false;
    self.button2.hidden = false;
    self.button3.hidden = false;
    self.button4.hidden = false;
    
    //create another three wrong values
    NSUInteger wrongvalue1;
    wrongvalue1 = self.rightvalue + 4;
    NSUInteger wrongvalue2;
    wrongvalue2 = self.rightvalue + 2;
    NSUInteger wrongvalue3;
    wrongvalue3 = self.rightvalue - 3;
    
    self.answerarray1 = [NSMutableArray arrayWithObjects:[NSString stringWithFormat: @"%ld",self.rightvalue],
                        [NSString stringWithFormat:@"%ld",wrongvalue1],
                        [NSString stringWithFormat:@"%ld",wrongvalue2],
                        [NSString stringWithFormat:@"%ld",wrongvalue3],
                        nil];
    

//I've learnt how to randomly generate the titles for four answer buttons without repeating on the following website:https://stackoverflow.com/questions/14431873/how-to-generate-random-values-from-an-array-without-repeating-any-in-objective-c
    
    for (int i = 0; i< _answerarray1.count; i++) {
        NSUInteger ans1 = arc4random()%[_answerarray1 count];
        self.title1 = [self.answerarray1 objectAtIndex:ans1];
        [_button1 setTitle:self.title1 forState:UIControlStateNormal];
        [_answerarray1 removeObjectAtIndex:ans1];
        
        NSUInteger ans2 = arc4random()%[_answerarray1 count];
        self.title2 = [self.answerarray1 objectAtIndex:ans2];
        [_button2 setTitle:self.title2 forState:UIControlStateNormal];
        [_answerarray1 removeObjectAtIndex:ans2];
        
        NSUInteger ans3 = arc4random()%[_answerarray1 count];
        self.title3 = [self.answerarray1 objectAtIndex:ans3];
        [_button3 setTitle:self.title3 forState:UIControlStateNormal];
        [_answerarray1 removeObjectAtIndex:ans3];
        
        NSUInteger ans4 = arc4random()%[_answerarray1 count];
        self.title4 = [self.answerarray1 objectAtIndex:ans4];
        [_button4 setTitle:self.title4 forState:UIControlStateNormal];
        [_answerarray1 removeObjectAtIndex:ans4];
        
    }
    NSLog(@"right answer is %ld",self.rightvalue);
}


#pragma mark button1
- (IBAction)answer1:(id)sender {
    //check if button1 display the right answer
    NSInteger ba = [self.title1 integerValue];
    NSInteger bA = [[NSString stringWithFormat:@"%ld",self.rightvalue] integerValue];
    if(ba == bA){
        NSLog(@"button a is correct answer");
        
        // display the sound if choose the right answer
        //if the sound is already playing,stop it first
        if([self.checkanswer isPlaying]){
            [self.checkanswer stop];
            self.checkanswer.currentTime = 0.0;
        }
        [self.checkanswer play];
        
    }else{
        NSLog(@"button a is incorrect");
    }
    
    //when the answer button is pressed, two labels and the remember button appear
    self.button1.hidden = true;
    self.button2.hidden = true;
    self.button3.hidden = true;
    self.button4.hidden = true;
    
    self.label1.hidden = false;
    self.label2.hidden = false;
    self.rememberbuttonpressed.hidden = false;
    
    [self labelproperties];
}

#pragma mark button2
- (IBAction)answer2:(id)sender {
    //check if button1 display the right answer
    NSInteger bb = [self.title2 integerValue];
    NSInteger bB = [[NSString stringWithFormat:@"%ld",self.rightvalue] integerValue];
    if(bb == bB){
        NSLog(@"button b is correct answer");
        
        // display the sound if choose the right answer
        //if the sound is already playing,stop it first
        if([self.checkanswer isPlaying]){
            [self.checkanswer stop];
            self.checkanswer.currentTime = 0.0;
        }
        [self.checkanswer play];
    }else{
        NSLog(@"button b is incorrect");
    }
    
    //when the answer button is pressed, two labels and the remember button appear
    self.button1.hidden = true;
    self.button2.hidden = true;
    self.button3.hidden = true;
    self.button4.hidden = true;
    
    self.label1.hidden = false;
    self.label2.hidden = false;
    self.rememberbuttonpressed.hidden = false;
  
    [self labelproperties];
}

#pragma mark button3
- (IBAction)answer3:(id)sender {
    //check if button1 display the right answer
    NSInteger bc = [self.title3 integerValue];
    NSInteger bC = [[NSString stringWithFormat:@"%ld",self.rightvalue] integerValue];
    if(bc == bC){
        NSLog(@"button c is correct answer");
        
        // display the sound if choose the right answer
        //if the sound is already playing,stop it first
        if([self.checkanswer isPlaying]){
            [self.checkanswer stop];
            self.checkanswer.currentTime = 0.0;
        }
        [self.checkanswer play];
    }else{
        NSLog(@"button c is incorrect");
    }
    
    //when the answer button is pressed, two labels and the remember button appear
    self.button1.hidden = true;
    self.button2.hidden = true;
    self.button3.hidden = true;
    self.button4.hidden = true;
    
    self.label1.hidden = false;
    self.label2.hidden = false;
    self.rememberbuttonpressed.hidden = false;

    [self labelproperties];
}

#pragma mark button4
- (IBAction)answer4:(id)sender {
    //check if button1 display the right answer
    NSInteger bd = [self.title4 integerValue];
    NSInteger bD = [[NSString stringWithFormat:@"%ld",self.rightvalue] integerValue];
    if(bd == bD){
        NSLog(@"button d is correct answer");
        
        // display the sound if choose the right answer
        //if the sound is already playing,stop it first
        if([self.checkanswer isPlaying]){
            [self.checkanswer stop];
            self.checkanswer.currentTime = 0.0;
        }
        [self.checkanswer play];
    }else{
        NSLog(@"button d is incorrect");
    }
    
    //when the answer button is pressed, two labels and the remember button appear
    self.button1.hidden = true;
    self.button2.hidden = true;
    self.button3.hidden = true;
    self.button4.hidden = true;
    
    self.label1.hidden = false;
    self.label2.hidden = false;
    self.rememberbuttonpressed.hidden = false;

    [self labelproperties];
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


-(unsigned long)rightvalue{
    NSInteger M = 0;
    NSInteger Q = 0;
//OO
    if(self.label1.backgroundColor == [UIColor orangeColor] &&
       self.label2.backgroundColor == [UIColor orangeColor]){
        M = M + [self.label1.text integerValue];
        Q = Q + [self.label2.text integerValue];
        self.rightvalue = M + Q;
        NSLog(@"OO");
    }
//OB
    else if(self.label1.backgroundColor == [UIColor orangeColor] && self.label2.backgroundColor == [UIColor blackColor]){
        M = M + [self.label1.text integerValue];
        Q = Q - [self.label2.text integerValue];
        self.rightvalue = M + Q;
        NSLog(@"OB");
    }
//BO
    else if (self.label1.backgroundColor == [UIColor blackColor] && self.label2.backgroundColor == [UIColor orangeColor]){
        M = M - [self.label1.text integerValue];
        Q = Q + [self.label2.text integerValue];
        self.rightvalue = M + Q;
        NSLog(@"BO");
    }
//BB
    else if (self.label1.backgroundColor == [UIColor blackColor] && self.label2.backgroundColor == [UIColor blackColor]){
        M = M - [self.label1.text integerValue];
        Q = Q - [self.label2.text integerValue];
        self.rightvalue = M + Q;
        NSLog(@"BB");
    }
    return _rightvalue;
}

#pragma mark timerfire
-(void) timerfire:(NSTimer *)timer1{
    self.runtime1 --;
    
    // set the progress view which indicates the runtime
/*    self.progressview.progress = (30-_runtime1)/30.0f;*/
    
    NSLog(@"%ld",self.runtime1);
    
    if (self.runtime1 == 0) {
        [timer1 invalidate];
        NSLog(@"timer stop");
        //when the timer is stopped, goes to the next view controller
        /*[self performSegueWithIdentifier:@"showresults" sender:nil];*/
    }
}

#pragma mark audioplayer
// learnt how to use audioplayer from the resource provided on the vle (the tutorial given by Dr Evans)
-(void) audioplayer {
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"wav"];
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filepath];
    
    self.checkanswer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    [self.checkanswer prepareToPlay];
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
