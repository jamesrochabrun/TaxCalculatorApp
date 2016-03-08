//
//  ViewController.m
//  TaxCalculatorApp
//
//  Created by James Rochabrun on 08-03-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double sfTax;
@property double chiTax;
@property double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = .0875;
    self.chiTax = .1025;
    self.nyTax = .8875;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCalculateButtonTaped:(UIButton *)sender {
    
    double tax;

    if(self.segmentedControl.selectedSegmentIndex
 == 0){
        tax = self.sfTax;
    } else if (    self.segmentedControl.selectedSegmentIndex
==1) {
        tax = self.chiTax;
    } else {
        tax = self.nyTax;
    }
    
    //converting the textField in to a double.
    
    double amount = [self.priceTextField.text doubleValue];

    double result =  tax * amount;
    
    self.resultLabel.text = [NSString stringWithFormat:@"$%.2f", result];
    
}

@end












