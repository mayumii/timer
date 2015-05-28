//
//  ViewController.h
//  timer
//
//  Created by mayumi on 2015/05/07.
//  Copyright (c) 2015年 mayumi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer* timer;
}
-(void)onTimer:(NSTimer*)timer;

- (IBAction)startCount:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lbl;

@end

