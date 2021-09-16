//
//  ViewController.m
//  ViewController生命周期
//
//  Created by 差不多先生 on 2021/9/12.
//

#import "ViewController.h"
#import "TextViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   _pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _pushButton.frame = CGRectMake(150, 50, 100, 100);
    [_pushButton setTitle:@"push" forState:UIControlStateNormal];
    [_pushButton addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_pushButton];
    
}
- (void)pressButton {
    TextViewController* textViewController = [[TextViewController alloc] init];
    textViewController.modalPresentationStyle = UIModalPresentationFullScreen;
   
    UINavigationController* navigitionController = [[UINavigationController alloc] initWithRootViewController:textViewController];
    navigitionController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:navigitionController animated:YES completion:nil];
    
}
- (void)loadView {
    [super loadView];
    NSLog(@"loadView");
}
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear！");
}
- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear！");
}
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear！");
}
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear！");
}
- (void)viewDidLayoutSubviews {
    NSLog(@"viewDidLayoutSubviews！");
}
- (void)viewWillLayoutSubviews {
    NSLog(@"viewWillLayoutSubviews！");
}

@end
