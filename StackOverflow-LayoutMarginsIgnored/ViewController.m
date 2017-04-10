//
//  ViewController.m
//  StackOverflow-LayoutMarginsIgnored
//
//  Created by Iulian Onofrei on 10/04/2017.
//  Copyright © 2017 Iulian Onofrei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *firstView;
@property (strong, nonatomic) IBOutlet UIView *secondView;

@end

@implementation ViewController

- (void)viewDidLoad {

	[super viewDidLoad];
}

- (void)didReceiveMemoryWarning {

	[super didReceiveMemoryWarning];
}

- (IBAction)onShowLayoutMarginsTap:(UIButton *)sender {

	NSString *message = [NSString stringWithFormat:@"first: %@\nsecond: %@", NSStringFromUIEdgeInsets(self.firstView.layoutMargins), NSStringFromUIEdgeInsets(self.secondView.layoutMargins)];

	UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];

	[alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];

	[self presentViewController:alertController animated:YES completion:nil];
}

@end
