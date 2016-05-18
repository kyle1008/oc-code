//
//  YZArenaNavigationController.m
//  彩票
//
//  Created by yz on 15/6/26.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZArenaNavigationController.h"

@interface YZArenaNavigationController ()

@end

@implementation YZArenaNavigationController
+ (void)initialize
{
    
    UIImage *image = [UIImage imageNamed:@"NLArenaNavBar64"];


    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    

    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    [bar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
        

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
