//
//  SeconfViewController.m
//  NinebehglSample
//
//  Created by Sasaki Kai on 12/14/13.
//
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void) drawView
{
	_mesh.rotateY += 2.0f;
	_mesh.rotateX -= 0.5f;
	
	[_camera drawCamera];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
	// Setting the loading process parameters. To take advantage of the NGL Binary feature,
	// remove the line "kNGLMeshOriginalYes, kNGLMeshKeyOriginal,". Your mesh will be loaded 950% faster.
	NSDictionary *settings = [NSDictionary dictionaryWithObjectsAndKeys:
							  kNGLMeshOriginalYes, kNGLMeshKeyOriginal,
							  kNGLMeshCentralizeYes, kNGLMeshKeyCentralize,
							  @"0.3", kNGLMeshKeyNormalize,
							  nil];
	
	_mesh = [[NGLMesh alloc] initWithFile:@"Lotus_HW_OBJ.obj" settings:settings delegate:nil];
    
    NGLMaterial *material = [NGLMaterial materialEmerald];
    
    _mesh.material = material;
    [_mesh compileCoreMesh];
 	
	_camera = [[NGLCamera alloc] initWithMeshes:_mesh, nil];
	[_camera autoAdjustAspectRatio:YES animated:YES];
	
	// Starts the debug monitor.
	[[NGLDebug debugMonitor] startWithView:(NGLView *)self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
