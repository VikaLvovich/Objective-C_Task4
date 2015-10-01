//
//  ViewController.m
//  LVTask4
//
//  Created by fpmi on 26.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "KLApple.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelTree;
@property (weak, nonatomic) IBOutlet UILabel *labelApple;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.labelTree setNumberOfLines:0];
    [self.labelApple setNumberOfLines:0];
    AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self.labelTree setText: [delegate.tree informationAboutTree]];
    [self.labelApple setText: @""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonGrowPressed:(id)sender {
    
    AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [delegate.tree grow];
    [self.labelTree setText: [delegate.tree informationAboutTree]];
    NSMutableString * s = [NSMutableString stringWithCapacity:100];
    for (int i = 0; i < [delegate.tree.apples count]; i++)
    {
        [s appendFormat:@"%@\n",[[delegate.tree.apples objectAtIndex:i] informationAboutApple]];
    }
    [self.labelApple setText: s];
    
    
}

- (IBAction)buttonShakePressed:(id)sender {
    
    AppDelegate * delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [delegate.tree shake];
    [self.labelTree setText: [delegate.tree informationAboutTree]];
    NSMutableString * s = [NSMutableString stringWithCapacity:100];
    for (int i = 0; i < [delegate.tree.apples count]; i++)
    {
        [s appendFormat:@"%@\n",[[delegate.tree.apples objectAtIndex:i] informationAboutApple]];
    }
    [self.labelApple setText: s];

}

@end
