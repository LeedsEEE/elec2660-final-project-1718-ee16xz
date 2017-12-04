//
//  easymodegameViewController.h
//  + or -
//
//  Created by 我好酷😎 on 2017/12/4.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "information.h"
#import <AVFoundation/AVFoundation.h>
#import "game2ViewController.h"
@interface easymodegameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIProgressView *progressview1;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UIButton *rememberbuttonpressed;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

- (IBAction)rememberbutton1:(id)sender;
- (IBAction)answer1:(id)sender;
- (IBAction)answer2:(id)sender;
- (IBAction)answer3:(id)sender;
- (IBAction)answer4:(id)sender;

@property (strong,nonatomic) information *data1;

@property(nonatomic,strong) NSMutableArray *answerarray1;
@property NSString * title1;
@property NSString * title2;
@property NSString * title3;
@property NSString * title4;

@property NSInteger correcttimes;
@property NSInteger wrongtimes;
@property NSInteger totaltimes;
@property float accuracy;

@property (strong,nonatomic) AVAudioPlayer *checkanswer;
@property (strong,nonatomic) NSTimer *timer1;
@property NSInteger runtime1;

@property (nonatomic) NSUInteger rightvalue;
-(unsigned long)rightvalue;
@end
