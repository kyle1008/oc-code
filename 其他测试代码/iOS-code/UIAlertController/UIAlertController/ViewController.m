//
//  ViewController.m
//  UIAlertController
//
//  Created by Kyle on 16/5/12.
//  Copyright © 2016年 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void) showOkayorCancelAlert{
    
    NSString *title = NSLocalizedString(@"A short Title is Best", nil);
    NSString *message = NSLocalizedString(@"A Message should be a short, complete entence.", nil);
    NSString *cancelButtonTitle = NSLocalizedString(@"Cancel", nil);
    NSString *otherButtonTitle = NSLocalizedString(@"OK", nil);
    
UIAlertAction *alertController = [UIAlertController alertControllerWithTitle:title message:message  preferredStyle:UIAlertControllerStyleAlert];
    
    //creat the action
    UIAlertAction *cancelAnction =[UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"The\"Okay/Cancel\"alert's cancel action occured.");
    }];
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"The\"Okay/Cancel\"alert's other action occured.");
    }];
    
    //add the actions
    [alertController addAction:cancelAnction];
    [alertController addAction:otherAction];
    [self presentedViewController:alertController animated:YES completion:nil];
    
    
                                            
                                                                                                                        
    
}
                                                                                                                            
                                                                                                                    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
