//
//  ViewController.m
//  timer
//
//  Created by mayumi on 2015/05/07.
//  Copyright (c) 2015年 mayumi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize lbl;

NSDate *stdate;
BOOL timeflg=FALSE;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(onTimer:)
                                           userInfo:nil
                                            repeats:YES];
}
- (void)viewDidUnload
{
    [self setLbl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    [timer invalidate];//★タイマー解放忘れずに
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onTimer:(NSTimer*)timer {
    //　グローバルなフラグがTRUEのとき、
    //　つまり、startボタンが押されたら常に真となり下記処理が実行される
    if(timeflg){
        NSDate *now = [NSDate date];
        self.lbl.text = [NSString stringWithFormat:@"%.0f",
                         [now timeIntervalSinceDate:stdate]];
    }
}

- (IBAction)startCount:(id)sender {
    timeflg = TRUE;
    stdate = [NSDate date];
}
@end
