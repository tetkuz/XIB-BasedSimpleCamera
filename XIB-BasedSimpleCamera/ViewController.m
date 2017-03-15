//
//  ViewController.m
//  XIB-BasedSimpleCamera
//
//  Created by tamura on 2017/03/14.
//  Copyright © 2017年 kiroru-inc.jp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shootPhoto:(UIButton *)sender {
    if ([UIImagePickerController availableCaptureModesForCameraDevice:UIImagePickerControllerCameraDeviceFront] != nil) {
        UIImagePickerController *picker = [UIImagePickerController new];
        picker.allowsEditing = false;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        picker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
        picker.showsCameraControls = true;
        
        picker.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:picker animated:YES completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"No Camera" message:@"Sorry, this device has no camera" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

@end
