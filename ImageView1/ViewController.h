//
//  ViewController.h
//  ImageView1
//
//  Created by HirokiNonaka on 2013/11/05.
//  Copyright (c) 2013年 HirokiNonaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UINavigationControllerDelegate,UIImagePickerControllerDelegate> {
    IBOutlet UIImageView *test;
    __weak IBOutlet UIImageView *image1;
    IBOutlet UIImageView *imageView;
    __weak IBOutlet UIImageView *image2;
}

@property (weak, nonatomic) IBOutlet UIImageView *test;


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)pressLoadImageBtn:(id)sender;
@end