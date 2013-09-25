//
//  Square.h
//  PCDemo
//
//  Created by Henry AT on 9/24/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
El protocolo. Metodos se define aqui, no es parte del la clase Square
 */

@protocol squareEvents <NSObject>

- (void)timerDidTick;

@end


@interface Square : UIView

// Usaremos id por que no sabemos la clase que adoptaremos
@property (nonatomic, strong) id <squareEvents> delegate;

-(void)initiateMovement;

@end
