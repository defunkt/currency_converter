//
//  ConverterController.h
//  Currency Converter
//
//  Created by Chris Wanstrath on 4/22/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Converter.h"

@interface ConverterController : NSObject {
    IBOutlet NSTextField *amountField;
    
    IBOutlet NSTextField *dollarField;
    
    IBOutlet NSPopUpButton *ratePopUp;
    
    IBOutlet NSButton *convertButton;
    
    Converter *converter;
}

-(id)init;

-(void)convert;
-(IBAction)convert:(id)sender;

-(IBAction)switchObject:(id)sender;

- (void)controlTextDidChange:(NSNotification *)aNotification;

@end