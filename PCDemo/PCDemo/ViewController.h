//
//  ViewController.h
//  PCDemo
//
//  Created by Henry AT on 9/24/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Square.h"
#import "UIView+UIView_WhereAmi.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *squarePosition;
@property (nonatomic, strong) Square *aSquare;

@end
