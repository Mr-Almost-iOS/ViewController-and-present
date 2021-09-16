//
//  SeciondViewController.m
//  ViewController生命周期
//
//  Created by 差不多先生 on 2021/9/15.
//

#import "SeciondViewController.h"

@interface SeciondViewController ()

@end

@implementation SeciondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemOrangeColor];
    _backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backButton.frame = CGRectMake(100, 300, 100, 100);
    [_backButton setTitle:@"return" forState:UIControlStateNormal];
    [_backButton addTarget:self action:@selector(backPress) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_backButton];
    
}
- (void)backPress {
    // 返回上一级
    [self.navigationController popViewControllerAnimated:YES];
    // 返回根视图
    [self.navigationController popToRootViewControllerAnimated:YES];
    // 返回指定的界面
    //objectAtIndex:参数为想要返回的级数
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0]  animated:YES];
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
