//
//  AppDelegate.m
//  NSTextView_test
//
//  Created by Gregory Casamento on 9/11/20.
//  Copyright © 2020 Open Logic Corporation. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property IBOutlet NSWindow *window;
@property IBOutlet NSTextView *textView;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application


}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void) outputToLog
{
    NSString *string = [self.textView string];
    string = [string stringByAppendingFormat:@"This is a test... %@\n", [NSDate now]];
    [self.textView setString: string];
    [self.textView scrollToEndOfDocument:self];
}

- (IBAction) runTest: (id)sender
{
    [self outputToLog];
}

@end
