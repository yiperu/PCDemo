//
//  ViewController.m
//  PCDemo
//
//  Created by Henry AT on 9/24/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

@synthesize squarePosition = _sPos;
@synthesize aSquare = _aSquare;

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect squareFrame = CGRectMake(0, 0, 50, 50);
    self.aSquare = [[Square alloc] initWithFrame:squareFrame];
    self.aSquare.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.aSquare];
    
    [self.aSquare setDelegate:self];
    [self.aSquare initiateMovement];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(void)timerDidTick {

    CGPoint newCenter = CGPointMake(self.aSquare.center.x, self.aSquare.center.y + 1);
    [self.aSquare setCenter:newCenter];
    
    CGPoint currentPosition = [self.aSquare whereAmI];
    self.squarePosition.text = [NSString stringWithFormat:@"(%g, %g)", currentPosition.x, currentPosition.y];
}



-(void)viewDidUnload {
    [super viewDidUnload];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

@end
