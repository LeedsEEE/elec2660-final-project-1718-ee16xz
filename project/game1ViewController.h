//
//  game1ViewController.h
//  project
//
//  Created by 我好酷😎 on 2017/11/28.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "information.h"
#import "game2ViewController.h"

@interface game1ViewController : UIViewController

@property (strong,nonatomic) information *data;

@property (weak, nonatomic) IBOutlet UIProgressView *progressview;
@property (weak, nonatomic) IBOutlet UIButton *buttona;
@property (weak, nonatomic) IBOutlet UIButton *buttonb;
@property (weak, nonatomic) IBOutlet UIButton *buttonc;
@property (weak, nonatomic) IBOutlet UIButton *buttond;
@property (weak, nonatomic) IBOutlet UIButton *buttonremember;

@property (weak, nonatomic) IBOutlet UILabel *firstlabel;
@property (weak, nonatomic) IBOutlet UILabel *secondlabel;
@property (weak, nonatomic) IBOutlet UILabel *thirdlabel;


- (IBAction)rememberbuttonpressed:(id)sender;
- (IBAction)answerA:(id)sender;
- (IBAction)answerB:(id)sender;
- (IBAction)answerC:(id)sender;
- (IBAction)answerD:(id)sender;

@property (strong,nonatomic) NSMutableArray *answerarray;
@property NSString * titlea;
@property NSString * titleb;
@property NSString * titlec;
@property NSString * titled;

@property NSInteger correcttimes;
@property NSInteger wrongtimes;
@property NSInteger totaltimes;
@property float accuracy;

@property (strong,nonatomic) AVAudioPlayer *check;

@property (strong,nonatomic) NSTimer *timer;
@property NSInteger runtime;


@property (nonatomic)NSUInteger value;
-(unsigned long)value;

@end
