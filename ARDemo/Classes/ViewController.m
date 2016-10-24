//
//  ViewController.m
//  ARDemo
//

#import "ViewController.h"
#import "ARViewController.h"

@interface ViewController () <ARViewControllerDelegate>
{
    ARViewController *arViewCtrl;
}

@end

@implementation ViewController

- (IBAction)testClick:(UIButton *)sender {
    // Override point for customization after application launch.
    NSDictionary *config = @{AR_CONFIG_INIT_FLAG : @"Your License Key",
                             
                             AR_CONFIG_DATA_SETS : @[
                                     @{
                                         AR_CONFIG_DATASET_NAME : @"ARDemo",
                                         AR_CONFIG_DATASET_PATH : [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"datasets/ImageTargets/ARDemo.xml"]
                                         }
                                     ],
                             AR_CONFIG_MODEL  : @[
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"MolView",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/molecule/molecule.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"Poster",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/pokemon/dragonite/dragonite-pokemon-go.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"monet",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/pokemon/pikachu/pikachu-pokemon-go.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"Amenhotep",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/sculpture/Amenhotep III/sculpt.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"mary",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/sculpture/alabasteryy/alabasteryy.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"heart",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/bio/heart.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"cover",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/pokemon/pikachu/pikachu-pokemon-go.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"another_trans-1-tert-butyl-3-methylcyclohexane",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/trans-1-tert-butyl-3-methylcyclohexane/trans-1-tert-butyl-3-methylcyclohexane.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"simvastatin-zocor",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/zocor/zocor.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"motrin",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/motrin/motrin.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"lovastatin-Mevacor",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/mevacor/mevacor.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"glucose",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/glucose/glucose.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"cholesterol",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/cholesterol/cholesterol.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"ansaid",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/ansaid/ansaid.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"atorvastatin-lipitor",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/lipitor/lipitor.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"1-2distributedcyclohexane",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/cis-1-ethyl-2-methylcyclohexane/cis-1-ethyl-2-methylcyclohexane.obj"]
                                         },
                                     @{
                                         AR_CONFIG_TARGET_NAME  :   @"trans-1-tert-butyl-3-methylcyclohexane",
                                         AR_CONFIG_MODEL_PATH   :   [[[NSBundle mainBundle]bundlePath] stringByAppendingPathComponent:@"models/orgo/trans-1-tert-butyl-3-methylcyclohexane/trans-1-tert-butyl-3-methylcyclohexane.obj"]
                                         }
                                     ]};
    
    arViewCtrl = [[ARViewController alloc]initWithParam:config];
    arViewCtrl.delegate = self;
    [self presentViewController:arViewCtrl animated:NO completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self performSelector:@selector(testClick:) withObject:_button afterDelay:1.5 ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}

- (void) didDismissARviewController:(ARViewController *)arviewctrl
{
    [self dismissViewControllerAnimated:NO completion:nil];
//    [arviewctrl release];
}

@end
