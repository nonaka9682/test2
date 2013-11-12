//
//  ViewController.m
//  ImageView1
//
//  Created by HirokiNonaka on 2013/11/05.
//  Copyright (c) 2013年 HirokiNonaka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    
}


- (IBAction)pressLoadImageBtn:(id)sender {
    NSLog(@"ボタンを押した！");
    // インタフェース使用可能なら
    if ( [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary] ) {
        // UIImageControllerの初期化
        UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
        /* UIImageControllerで取得できるデータは以下の3つ
         * SourceTypeCamera                : カメラを起動する
         * SourceTypePhotoLibrary        : フォトライブラリーを開く
         * SourceTypeSavedPhotosAlbum    : （カメラがあるiPhoneは）カメラロールから選択する
         */
        [ipc setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
        // Delegateセット
        [ipc setDelegate:self];
        // NOを設定するとイメージを取得できない
        [ipc setAllowsEditing:YES];
        // 指定したViewを一番上に表示する
        [self presentViewController:ipc  animated:YES completion: nil];
    }
}

//イメージ取得後に呼び出される関数
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    // 選択したイメージをimageにセットする
    UIImage *imagen = [info objectForKey:UIImagePickerControllerEditedImage];


    // imageをImageViewerにセットする
    [self.imageView setImage:imagen];//imageviewに表示
    [self.test setImage:imagen];//testに表示
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPos = [touch locationInView:self.view];
    image1.center = touchPos;
    
    
}


/*
[[UIApplication sharedApplication] endIgnoringInteractionEvents];

if([[UIApplication sharedApplication] isIgnoringInteractionEvents])
{
    NSLog("Touch Abailable");
} else {
    NSLog("Touch Unavailable");
}



imagen.userInteravtionEnabled = YES;

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if([event touchesForView:imagen] != NULL)
    {
    
    }
}

*/


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
