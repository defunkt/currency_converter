//
//  Converter.h
//  Currency Converter
//
//  Created by Chris Wanstrath on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Converter : NSObject {
    float sourceCurrencyAmount, rate;
    NSString* symbol;
}

@property(readwrite) float sourceCurrencyAmount, rate;
@property(readwrite, retain) NSString* symbol;
- (float)convertCurrency;
- (void)setCurrency:(NSString*)currency;
@end
