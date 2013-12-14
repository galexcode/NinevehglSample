/*
 *	AppDelegate.m
 *	NinebehglSample
 *	
 *	Created by Sasaki Kai on 12/14/13.
 *	Copyright 2013 __MyCompanyName__. All rights reserved.
 */

#import "AppDelegate.h"

#pragma mark -
#pragma mark Constants
#pragma mark -
//**********************************************************************************************************
//
//	Constants
//
//**********************************************************************************************************

#pragma mark -
#pragma mark Private Interface
#pragma mark -
//**********************************************************************************************************
//
//	Private Interface
//
//**********************************************************************************************************

#pragma mark -
#pragma mark Public Interface
#pragma mark -
//**********************************************************************************************************
//
//	Public Interface
//
//**********************************************************************************************************

@implementation AppDelegate

#pragma mark -
#pragma mark Properties
//**************************************************
//	Properties
//**************************************************

@synthesize window = _window, viewController = _viewController;

#pragma mark -
#pragma mark Constructors
//**************************************************
//	Constructors
//**************************************************

#pragma mark -
#pragma mark Private Methods
//**************************************************
//	Private Methods
//**************************************************

#pragma mark -
#pragma mark Self Public Methods
//**************************************************
//	Self Public Methods
//**************************************************

#pragma mark -
#pragma mark Override Public Methods
//**************************************************
//	Override Public Methods
//**************************************************

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)options
{
	return YES;
}

- (void) applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state.
}

- (void) applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, etc.
	// At this point, NinevehGL will automatically stops the renders.
}

- (void) applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state.
}

- (void) applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive.
	// At this point, NinevehGL will resume the renders.
}

- (void) applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate.
}

- (void) dealloc
{
	[_viewController release];
	[_window release];
	
	[super dealloc];
}

@end