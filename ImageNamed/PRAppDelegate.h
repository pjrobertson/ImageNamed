//
//  PRAppDelegate.h
//  ImageNamed
//
//  Created by Patrick Robertson on 08/02/2013.
//  Copyright (c) 2013 Patrick Robertson. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PRAppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSPopUpButton *imageSelector;
    IBOutlet NSImageView *imageView;
    IBOutlet NSTextView *descriptionTextField;
}

@property (assign) IBOutlet NSWindow *window;

-(IBAction)showImage:(NSPopUpButton *)sender;

@end
