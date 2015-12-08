//
//  ViewController.m
//  ASBirthSheet
//
//  Created by Ashen on 15/12/8.
//  Copyright © 2015年 Ashen. All rights reserved.
//

#import "ViewController.h"
#import "ASBirthSelectSheet.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblShowBirth;
@end

@implementation ViewController
- (IBAction)chooseBirthdayAction:(id)sender {
    ASBirthSelectSheet *datesheet = [[ASBirthSelectSheet alloc] initWithFrame:self.view.bounds];
    datesheet.selectDate = self.lblShowBirth.text;
    datesheet.GetSelectDate = ^(NSString *dateStr) {
        self.lblShowBirth.text = dateStr;
    };
    [self.view addSubview:datesheet];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
