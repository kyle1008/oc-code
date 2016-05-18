//
//  YZHtmlViewController.m
//  彩票
//
//  Created by yz on 15/6/29.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZHtmlViewController.h"

@interface YZHtmlViewController ()<UIWebViewDelegate>

@end

@implementation YZHtmlViewController

- (void)loadView
{
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.view = webView;
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    UIWebView *webView = (UIWebView *)self.view;
    
    webView.delegate = self;
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:_html.html ofType:nil];
//    
//    // 带有中文传url会失败，需要先转化为百分号.
//    filePath = [filePath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    
    
//    NSURL *url = [NSURL URLWithString:filePath];
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:_html.html withExtension:nil];
    
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *javascript = [NSString stringWithFormat:@"window.location.href = '#%@';",_html.ID];
    [webView stringByEvaluatingJavaScriptFromString:javascript];
}




@end