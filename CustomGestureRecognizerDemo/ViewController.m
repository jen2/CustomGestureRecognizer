//
//  ViewController.m
//  CustomGestureRecognizerDemo
//
//  Created by Jennifer A Sipila on 3/21/16.
//  Copyright © 2016 Jennifer A Sipila. All rights reserved.
//

#import "ViewController.h"
#import "zLetterGestureRecognizer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addGestureRecognizer:[[ZLetterGestureRecognizer alloc] initWithTarget:self action:@selector(zLetterMade:)]];
    
}

-(void)zLetterMade:(ZLetterGestureRecognizer *)zLetterRecognizer
{
    NSLog(@"Z letter made by the user!!"); //This will be printed when the gesture is recognized.
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Your Gesture was recognized!"
                                                                             message:@"Nice job!"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];
    
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];

}



@end
