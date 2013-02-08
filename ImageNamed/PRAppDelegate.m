//
//  PRAppDelegate.m
//  ImageNamed
//
//  Created by Patrick Robertson on 08/02/2013.
//  Copyright (c) 2013 Patrick Robertson. All rights reserved.
//

#import "PRAppDelegate.h"

@implementation PRAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSArray *imgs = @[NSImageNameQuickLookTemplate, NSImageNameBluetoothTemplate, NSImageNameIChatTheaterTemplate, NSImageNameSlideshowTemplate, NSImageNameActionTemplate , NSImageNameSmartBadgeTemplate, NSImageNameIconViewTemplate, NSImageNameListViewTemplate, NSImageNameColumnViewTemplate, NSImageNameFlowViewTemplate, NSImageNamePathTemplate, NSImageNameInvalidDataFreestandingTemplate, NSImageNameLockLockedTemplate, NSImageNameLockUnlockedTemplate, NSImageNameGoRightTemplate , NSImageNameGoLeftTemplate , NSImageNameRightFacingTriangleTemplate, NSImageNameLeftFacingTriangleTemplate, NSImageNameAddTemplate, NSImageNameRemoveTemplate, NSImageNameRevealFreestandingTemplate, NSImageNameFollowLinkFreestandingTemplate, NSImageNameEnterFullScreenTemplate, NSImageNameExitFullScreenTemplate, NSImageNameStopProgressTemplate, NSImageNameStopProgressFreestandingTemplate, NSImageNameRefreshTemplate, NSImageNameRefreshFreestandingTemplate, NSImageNameBonjour, NSImageNameComputer, NSImageNameFolderBurnable, NSImageNameFolderSmart, NSImageNameFolder, NSImageNameNetwork, NSImageNameDotMac, NSImageNameMobileMe, NSImageNameMultipleDocuments, NSImageNameUserAccounts, NSImageNamePreferencesGeneral, NSImageNameAdvanced, NSImageNameInfo, NSImageNameFontPanel, NSImageNameColorPanel, NSImageNameUser, NSImageNameUserGroup, NSImageNameEveryone  , NSImageNameUserGuest, NSImageNameMenuOnStateTemplate, NSImageNameMenuMixedStateTemplate, NSImageNameApplicationIcon, NSImageNameTrashEmpty, NSImageNameTrashFull, NSImageNameHomeTemplate, NSImageNameBookmarksTemplate, NSImageNameCaution, NSImageNameStatusAvailable, NSImageNameStatusPartiallyAvailable, NSImageNameStatusUnavailable, NSImageNameStatusNone, NSImageNameShareTemplate];
    [imageSelector removeAllItems];
    [imageSelector addItemsWithTitles:[imgs sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)]];
    
    [self showImage:imageSelector];
}

-(IBAction)showImage:(NSPopUpButton *)sender
{
    NSString *imgName = [sender titleOfSelectedItem];
    NSImage *img = [NSImage imageNamed:imgName];
    if (img) {
        [imageView setImage:[NSImage imageNamed:imgName]];
        [descriptionTextField setString:[img description]];
        
    } else {
        [descriptionTextField setString:[NSString stringWithFormat:@"No image for %@. Maybe it's not on your OS? Check NSImage.h for when the image was introduced",imgName]]
        ;
    }
    
}

@end
