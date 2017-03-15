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

@implementation ViewController {
    UIImagePickerController *picker;
}

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
        picker = [UIImagePickerController new];
        picker.allowsEditing = false;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        picker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
        picker.showsCameraControls = false;
       
        CustomOverlayViewController *customViewController = [[CustomOverlayViewController alloc]
                                                             initWithNibName:@"CustomOverlayViewController"
                                                             bundle:nil];
        CustomOverlayView *customView = (CustomOverlayView *) customViewController.view;
        customView.frame = picker.view.frame;
        customView.delegate = self;
        
        picker.modalPresentationStyle = UIModalPresentationFullScreen;
        picker.cameraOverlayView = customView;
        [self presentViewController:picker animated:YES completion:^(){ picker.cameraOverlayView = customView; }];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"No Camera" message:@"Sorry, this device has no camera" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage *image = (UIImage *) info[UIImagePickerControllerOriginalImage];
    UIImageWriteToSavedPhotosAlbum(image, self, nil, nil);
}

- (void) imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) didShoot:(CustomOverlayView *)overlayView
{
    NSLog(@"didShoot");
    [picker takePicture];
    overlayView.cameraLabel.text = @"Shot Photo";
}

- (void) didCancel:(CustomOverlayView *)overlayView
{
    NSLog(@"didCancel");
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
