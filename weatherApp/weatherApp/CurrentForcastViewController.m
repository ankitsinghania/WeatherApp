//
//  CurrentForcastViewController.m
//  weatherApp
//
//  Created by Ankit Singhania on 8/16/13.
//  Copyright (c) 2013 Ankit Singhania. All rights reserved.
//

#import "CurrentForcastViewController.h"

@interface CurrentForcastViewController ()

@property (strong, nonatomic) NSString *myCityName;
@property (strong, nonatomic) NSString *myHighTemp;
@property (strong, nonatomic) NSString *myLowTemp;
@property (strong, nonatomic) NSString *myHumidity;

@end

@implementation CurrentForcastViewController

-(id)initWithCityName:(NSString *)cityName highTemp:(NSString *)highTemp lowTemp:(NSString *)lowTemp humidity:(NSString *)humidity {
    self = [super init];
    if (self) {
        _myCityName = cityName;
        _myHighTemp = highTemp;
        _myLowTemp = lowTemp;
        _myHumidity = humidity;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@:%@:%@:%@",_myCityName,_myHighTemp,_myLowTemp,_myHumidity);
    _cityName.text = _myCityName;
    _highTemp.text = [NSString stringWithFormat:@"%@",_myHighTemp];
    _lowTemp.text = [NSString stringWithFormat:@"%@",_myLowTemp];
    _humidity.text = [NSString stringWithFormat:@"%@",_myHumidity];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
