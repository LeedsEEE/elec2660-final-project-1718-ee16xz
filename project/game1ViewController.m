//
//  game1ViewController.m
//  project
//
//  Created by 我好酷😎 on 2017/11/28.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "game1ViewController.h"


@interface game1ViewController ()

@end

@implementation game1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //change the height of progress bar
    [self.progressview setTransform:CGAffineTransformMakeScale(1.0, 4.0)];
    
    // set the time limit of the game: 20s
    self.runtime = 20;
    // create the timer - timeinterval: count every 1s;
    //                    target:timer self;
    //                    selector:the message to send to target when the timer fires
    //                    repeat: repeat everytime when load the view
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerfire:) userInfo:nil repeats:YES];
    
   //set the all results to 0 first
    self.totaltimes = 0;
    self.correcttimes = 0;
    self.wrongtimes = 0;
    self.accuracy = 0;
    
    //hidden four answers button first
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
   //initilize the information class
    self.data = [[information alloc] init];
 
    [self labelproperties];
    [self audioplayer];
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
    NSUInteger wrongvalue1_;
    wrongvalue1_ = self.value + 3;
    NSUInteger wrongvalue2_;
    wrongvalue2_ = self.value + 2;
    NSUInteger wrongvalue3_;
    wrongvalue3_ = self.value - 2;
    
    self.answerarray = [NSMutableArray arrayWithObjects:[NSString stringWithFormat: @"%ld",self.value],
                        [NSString stringWithFormat:@"%ld",wrongvalue1_],
                        [NSString stringWithFormat:@"%ld",wrongvalue2_],
                        [NSString stringWithFormat:@"%ld",wrongvalue3_],
                        nil];
    
    //I've learnt how to randomly generate the titles for four answer buttons without repeating on the following website:https://stackoverflow.com/questions/14431873/how-to-generate-random-values-from-an-array-without-repeating-any-in-objective-c
    
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
}


#pragma mark button A is pressed
- (IBAction)answerA:(id)sender {
    //check if number shown on buttona is right
    NSInteger a = [self.titlea integerValue];
    NSInteger A = [[NSString stringWithFormat:@"%ld",self.value] integerValue];
    if (a == A){
        NSLog(@"buttona is correct");
        self.runtime += 2;
        self.correcttimes ++;
        self.correcttimes = self.correcttimes;
        
        //if the sound is already playing,stop it first
        if([self.check isPlaying]){
            [self.check stop];
            self.check.currentTime = 0.0;
        }
        [self.check play];
        
    }else{
        self.wrongtimes ++;
        self.wrongtimes = self.wrongtimes;
    }
    
    //if buttona is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
    
    [self labelproperties];

}

#pragma mark button B is pressed
- (IBAction)answerB:(id)sender {
    //check if number shown on buttonb is right
    NSInteger b = [self.titleb integerValue];
    NSInteger B = [[NSString stringWithFormat:@"%ld",self.value] integerValue];
    if (b == B){
        NSLog(@"buttonb is correct");
        self.runtime += 2;
        self.correcttimes ++;
        self.correcttimes = self.correcttimes;
        //if the sound is already playing,stop it first
        if([self.check isPlaying]){
            [self.check stop];
            self.check.currentTime = 0.0;
        }
        [self.check play];
        
    }else{
        self.wrongtimes ++;
        self.wrongtimes = self.wrongtimes;
    }
    
    //if buttonb is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
    
    [self labelproperties];

}

#pragma mark button C is pressed
- (IBAction)answerC:(id)sender {
    //check if number shown on buttonc is right
    NSInteger c = [self.titlec integerValue];
    NSInteger C = [[NSString stringWithFormat:@"%ld",self.value] integerValue];
    if (c == C){
        NSLog(@"buttonc is correct");
        self.runtime += 2;
        self.correcttimes ++;
        self.correcttimes = self.correcttimes;
        
        //if the sound is already playing,stop it first
        if([self.check isPlaying]){
            [self.check stop];
            self.check.currentTime = 0.0;
        }
        [self.check play];
        
    }else{
        self.wrongtimes ++;
        self.wrongtimes = self.wrongtimes;
    }
    
    //if buttonc is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
    
    [self labelproperties];
}

# pragma mark button D is pressed
- (IBAction)answerD:(id)sender {
    //check if number shown on buttond is right
    NSInteger d = [self.titled integerValue];
    NSInteger D = [[NSString stringWithFormat:@"%ld",self.value] integerValue];
    if (d == D){
        NSLog(@"buttond is correct");
        self.runtime += 2;
        self.correcttimes ++;
        self.correcttimes = self.correcttimes;
        
        //if the sound is already playing,stop it first
        if([self.check isPlaying]){
            [self.check stop];
            self.check.currentTime = 0.0;
        }
            [self.check play];
        
    }else{
        self.wrongtimes ++;
        self.wrongtimes = self.wrongtimes;
    }
    
    //if buttond is pressed, four answer buttons are hidden, and three labels appear with remember button
    self.buttona.hidden = true;
    self.buttonb.hidden = true;
    self.buttonc.hidden = true;
    self.buttond.hidden = true;
    
    self.firstlabel.hidden = false;
    self.secondlabel.hidden = false;
    self.thirdlabel.hidden = false;
    self.buttonremember.hidden = false;
    
    [self labelproperties];
}


// the method of calculating the correct value
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


//use the void function to set the label properties
- (void)labelproperties{
    //set text and background of the labels
    //one method of setting the random backgroundcolor for the labels----use for loop
    for (int color = 0; color <_data.colorarray.count ; color++) {
        int colora = arc4random() %[_data.colorarray count];
        self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
        
        int colorb = arc4random()%[_data.colorarray count];
        self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
        
        int colorc = arc4random()%[_data.colorarray count];
        self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];
    }
    
    /*   //another method of setting backgroundcolor
     self.colora = arc4random() % 2;   //randomly generate the integers from 0~1;
     self.colorb = arc4random() % 2;
     self.colorc = arc4random() % 2;
     
     //set the initial backgroundcolor
     self.firstlabel.backgroundColor = [self.data.colorarray objectAtIndex:colora];
     self.secondlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorb];
     self.thirdlabel.backgroundColor = [self.data.colorarray objectAtIndex:colorc];*/
    
    //random textindex for each label
    NSUInteger texta = arc4random() % 10;
    NSUInteger textb = arc4random() % 10;
    NSUInteger textc = arc4random() % 10;
    //set the text of the labels
    self.firstlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:texta]];
    self.secondlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textb]];
    self.thirdlabel.text = [NSString stringWithFormat:@"%@",[self.data.numberarray objectAtIndex:textc]];
}


#pragma mark nstimer
-(void) timerfire:(NSTimer *)timer{
    self.runtime --;

    // set the progress view which indicates the runtime
    self.progressview.progress = (20-_runtime)/20.0f;
    
    
    if (self.runtime == 0) {
        [timer invalidate];
        NSLog(@"timer stop");
        NSLog(@"%ld",self.correcttimes);
        NSLog(@"%ld",self.wrongtimes);
        //when the timer is stopped, goes to the next view controller
        [self performSegueWithIdentifier:@"showresults" sender:nil];
    }
}


#pragma mark audioplayer
// learnt how to use audioplayer from the resource provided on the vle (the tutorial given by Dr Evans)
-(void) audioplayer {
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"wav"];
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:filepath];
    
    
    self.check = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    [self.check prepareToPlay];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    self.totaltimes = self.correcttimes + self.wrongtimes;
    if (self.totaltimes == 0){
        self.accuracy = 0.0;
    }else{
    self.accuracy = (((float)self.correcttimes) / ((float)self.totaltimes))*100.00;
    }
    
    game2ViewController *g2 = [segue destinationViewController];
    g2.right = [NSString stringWithFormat:@"%ld",self.correcttimes];
    g2.wrong = [NSString stringWithFormat:@"%ld",self.wrongtimes];
    g2.total = [NSString stringWithFormat:@"%ld",self.totaltimes];
    g2.accuracy = [NSString stringWithFormat:@"%.2f",self.accuracy];
}

@end
