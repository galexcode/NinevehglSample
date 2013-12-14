/*
 *	ViewController.h
 *	NinebehglSample
 *	
 *	Created by Sasaki Kai on 12/14/13.
 *	Copyright 2013 __MyCompanyName__. All rights reserved.
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NGLViewDelegate>
{
@private
	NGLMesh *_mesh;
	NGLCamera *_camera;
}

@end
