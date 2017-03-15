//
//  ViewController.h
//  XIB-BasedSimpleCamera
//
//  Created by tamura on 2017/03/14.
//  Copyright © 2017年 kiroru-inc.jp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

- (IBAction)shootPhoto:(UIButton *)sender;

@end

