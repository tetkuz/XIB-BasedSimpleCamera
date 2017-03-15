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
    _cameraLabel.text = @"Even Cooler Camera";
}

- (IBAction)cancelButton:(UIButton *)sender {
    _cameraLabel.text = @"I want to exit";
}
@end
