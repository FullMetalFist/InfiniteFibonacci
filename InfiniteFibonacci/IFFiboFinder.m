//
//  IFFiboFinder.m
//  InfiniteFibonacci
//
//  Created by Michael Vilabrera on 5/20/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "IFFiboFinder.h"

@implementation IFFiboFinder

-(NSUInteger)findFiboNumber:(NSInteger)someNumber
{
    NSUInteger isBaseCase = [self checkFiboBaseCaseWithNumber:someNumber];
    
    if (isBaseCase != -1) {
        return isBaseCase;
    } else {
        return [self calculateFiboNumber:someNumber];
    }
}

- (NSUInteger)checkFiboBaseCaseWithNumber:(NSInteger)baseCaseNumber
{
    if (baseCaseNumber < 2) {
        return baseCaseNumber;
    } else {
        return -1;
    }
}

- (NSUInteger)calculateFiboNumber:(NSInteger)fiboCalculation
{
    NSInteger twoFiboAgo = 0;
    NSInteger oneFiboAgo = 1;
    NSInteger currentFiboNumber = 0;
    for (NSInteger i = 2; i <= fiboCalculation; i++) {
        currentFiboNumber = twoFiboAgo + oneFiboAgo;
        twoFiboAgo = oneFiboAgo;
        oneFiboAgo = currentFiboNumber;
    }
    return currentFiboNumber;
}


@end
