//
//  ConverterController.m
//  Currency Converter
//
//  Created by Chris Wanstrath on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ConverterController.h"

@implementation ConverterController
-(id)init {
    converter = [[Converter alloc] init];
    return [super init];
}

-(void)convert {
    [self convert:nil];
}

-(IBAction)convert:(id)sender {
    converter.sourceCurrencyAmount = [dollarField floatValue];
    
    NSString* amount = converter.symbol;
    amount = [amount stringByAppendingFormat:@"%.02f", [converter convertCurrency]];
    
    [amountField setStringValue:amount];
}

-(IBAction)switchObject:(id)sender {
    [converter setCurrency:[sender titleOfSelectedItem]];
    if ([dollarField floatValue] > 0) [self convert];
}


- (void)controlTextDidChange:(NSNotification *)aNotification {
    if ([dollarField floatValue] <= 0) [amountField setIntValue:0];
    else if ([dollarField floatValue] > 0 && converter.rate > 0) [self convert];
}
@end
