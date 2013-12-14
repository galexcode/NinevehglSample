/*
 *	AppDelegate.h
 *	NinebehglSample
 *	
 *	Created by Sasaki Kai on 12/14/13.
 *	Copyright 2013 __MyCompanyName__. All rights reserved.
 */

#import <UIKit/UIKit.h>

#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
	UIWindow *_window;
	ViewController *_viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) ViewController *viewController;

@end

