//
//  CustomOverlayView.h
//  XIB-BasedSimpleCamera
//
//  Created by tamura on 2017/03/15.
//  Copyright © 2017年 kiroru-inc.jp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomOverlayView : UIView

@property (weak, nonatomic) IBOutlet UILabel *cameraLabel;

- (IBAction)shootButton:(UIButton *)sender;
- (IBAction)cancelButton:(UIButton *)sender;

@end
