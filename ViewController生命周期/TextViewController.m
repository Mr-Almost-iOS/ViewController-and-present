//
//  TextViewController.m
//  ViewController生命周期
//
//  Created by 差不多先生 on 2021/9/15.
//

#import "TextViewController.h"
#import "SeciondViewController.h"
@interface TextViewController ()

@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _textButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _textButton.frame = CGRectMake(100, 100, 100, 100);
    [_textButton setTitle:@"text" forState:UIControlStateNormal];
    self.view.backgroundColor = [UIColor orangeColor];
    [_textButton addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_textButton];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(pushPress)];
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)pushPress {
    
    SeciondViewController* secondViewController = [[SeciondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
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
