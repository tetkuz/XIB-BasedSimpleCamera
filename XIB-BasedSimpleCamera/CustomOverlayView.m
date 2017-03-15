//
//  CustomOverlayView.m
//  XIB-BasedSimpleCamera
//
//  Created by tamura on 2017/03/15.
//  Copyright © 2017年 kiroru-inc.jp. All rights reserved.
//

#import "CustomOverlayView.h"

@implementation CustomOverlayView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)shootButton:(UIButton *)sender {
    NSLog(@"shootButton");
    _cameraLabel.text = @"Even Cooler Camera";
    [self.delegate didShoot:self];
}

- (IBAction)cancelButton:(UIButton *)sender {
    NSLog(@"cancelButton");
    _cameraLabel.text = @"I want to exit";
    [self.delegate didCancel:self];
}
@end
