//
//  Converter.m
//  Currency Converter
//
//  Created by Chris Wanstrath on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "Converter.h"

@implementation Converter
@synthesize sourceCurrencyAmount, rate, symbol;

- (float)convertCurrency {
    return self.sourceCurrencyAmount / self.rate;
}

- (void)setCurrency:(NSString*)currency {
    if ([currency isEqualToString:@"Euros"]) {
        self.symbol = @"€";
        self.rate = 1.5884;
    } else if ([currency isEqualToString:@"Pesos"]) {
        self.symbol = @"$";
        self.rate = 0.095578;
    } else if ([currency isEqualToString:@"Yen"]) {
        self.symbol = @"¥";
        self.rate = 0.009674;
    }
}
@end
