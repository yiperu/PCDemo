//
//  Square.m
//  PCDemo
//
//  Created by Henry AT on 9/24/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "Square.h"

@implementation Square

@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)sendMoveRequest {
    [self.delegate timerDidTick];
}

-(void)initiateMovement {
    [NSTimer scheduledTimerWithTimeInterval:0.125
                                     target:self
                                   selector:@selector(sendMoveRequest)
                                   userInfo:nil
                                    repeats:YES];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
