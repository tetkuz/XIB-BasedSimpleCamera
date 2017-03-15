//
//  CustomOverlayView.h
//  XIB-BasedSimpleCamera
//
//  Created by tamura on 2017/03/15.
//  Copyright © 2017年 kiroru-inc.jp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomOverlayView;

@protocol CustomOverlayDelegate <NSObject>

@required
-(void)didShoot:(CustomOverlayView *)overlayView;
-(void)didCancel:(CustomOverlayView *)overlayView;
@end

@interface CustomOverlayView : UIView

@property (weak, nonatomic) id<CustomOverlayDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *cameraLabel;

- (IBAction)shootButton:(UIButton *)sender;
- (IBAction)cancelButton:(UIButton *)sender;

@end
