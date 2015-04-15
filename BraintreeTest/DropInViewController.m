//
//  DropInViewController.m
//  BraintreeTest
//
//  Created by Mary Jenel Myers on 4/14/27 H.
//  Copyright (c) 27 Heisei Mary Jenel Myers. All rights reserved.
//

#import "DropInViewController.h"

@interface DropInViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *BackgroundImage;

@end

@implementation DropInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //create blured image
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc]initWithEffect:blur];
    effectView.frame = self.view.frame;
    [self.BackgroundImage addSubview:effectView];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
