//
//  ForthViewController.h
//  NinebehglSample
//
//  Created by Sasaki Kai on 12/16/13.
//
//

#import <UIKit/UIKit.h>

@interface ForthViewController : UIViewController <NGLViewDelegate> {
    NGLMesh *_mesh;
    NGLCamera *_camera;
}

@end
