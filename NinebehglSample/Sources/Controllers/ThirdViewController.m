//
//  ThirdViewController.m
//  NinebehglSample
//
//  Created by Sasaki Kai on 12/14/13.
//
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    
    NSDictionary *settings = [NSDictionary dictionaryWithObjectsAndKeys:
							  kNGLMeshOriginalYes, kNGLMeshKeyOriginal,
							  kNGLMeshCentralizeYes, kNGLMeshKeyCentralize,
							  @"0.3", kNGLMeshKeyNormalize,
							  nil];
	
	_mesh = [[NGLMesh alloc] initWithFile:@"Lightbulb.obj" settings:settings delegate:nil];
    
    NGLSurfaceMulti *surfaces = [[NGLSurfaceMulti alloc] initWithSurfaces:
                                 [NGLSurface surfacetWithStart:0 length:600 identifier:0],
                                 [NGLSurface surfacetWithStart:600 length:1200 identifier:1],
                                 [NGLSurface surfacetWithStart:1200 length:1800 identifier:2],
                                 [NGLSurface surfacetWithStart:1800 length:9000 identifier:3], nil];
    NGLMaterialMulti *materials = [[NGLMaterialMulti alloc] initWithMaterials:
                                   [NGLMaterial materialPewter],
                                   [NGLMaterial materialRuby],
                                   [NGLMaterial materialSilver],
                                   [NGLMaterial materialTurqoise], nil];
    _mesh.material = materials;
    _mesh.surface = surfaces;
    
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
