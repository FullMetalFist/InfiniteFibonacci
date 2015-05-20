//
//  IFFiboFinderSpec.m
//  InfiniteFibonacci
//
//  Created by Michael Vilabrera on 5/20/15.
//  Copyright 2015 Giving Tree. All rights reserved.
//

#import "Specta.h"
#import "IFFiboFinder.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"


SpecBegin(IFFiboFinder)

describe(@"IFFiboFinder", ^{
    __block IFFiboFinder *fiboObj;
    beforeAll(^{
        fiboObj = [[IFFiboFinder alloc] init];
    });
    
    describe(@"findFibo", ^{
        it(@"should return the nth number of the Fibonacci sequence", ^{
            expect([fiboObj findFiboNumber:0]).to.equal(0);
        });
        it(@"should return the nth number of the Fibonacci sequence", ^{
            expect([fiboObj findFiboNumber:93]).to.equal(12200160415121876738);
            
            // for some reason, can't test beyond #94
            // numbers are too large (?) expecta won't recognize it.
//            expect([fiboObj findFiboNumber:94]).to.equal(19740274219868223167);
        });
    });
    
    beforeEach(^{
        
    });
    
    it(@"", ^{
        
    });  
    
    afterEach(^{
        
    });
    
    afterAll(^{
        
    });
});

SpecEnd
