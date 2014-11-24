//
//  ViewController.m
//  C348-P03-Exercise03
//
//  Created by Seow Khee Wei (RP) on 3/11/14.
//  Copyright (c) 2014 Republic Polytechnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *outSliderA;
@property (weak, nonatomic) IBOutlet UISlider *outSliderB;
@property (weak, nonatomic) IBOutlet UISlider *outSliderC;
@property (weak, nonatomic) IBOutlet UILabel *outLblA;
@property (weak, nonatomic) IBOutlet UILabel *outLblB;
@property (weak, nonatomic) IBOutlet UILabel *outLblC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    int selectSegmentIndex = [sender selectedSegmentIndex];
    NSString *tempStr;
    
    if (selectSegmentIndex==0){
        tempStr = [NSString stringWithFormat:@"Label A: %f", [[self outSliderA] value]];
        [[self outLblA] setText:tempStr];
    
    }else if (selectSegmentIndex==1){
        tempStr = [NSString stringWithFormat:@"Label B: %f", [[self outSliderB] value]];
        [[self outLblB] setText:tempStr];
        
    }
    else{
        tempStr = [NSString stringWithFormat:@"Label C: %f", [[self outSliderC] value]];
        [[self outLblC] setText:tempStr];
    
    }


}

@end
