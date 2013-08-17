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
@property (strong, nonatomic) NSString *myCurrentTemp;
@property (strong, nonatomic) NSString *myHighTemp;
@property (strong, nonatomic) NSString *myLowTemp;
@property (strong, nonatomic) NSString *myHumidity;

@end

@implementation CurrentForcastViewController

-(id)initWithCityName:(NSString *)cityName currentTemp:(NSString *)currentTemp highTemp:(NSString *)highTemp lowTemp:(NSString *)lowTemp humidity:(NSString *)humidity {
    self = [super init];
    if (self) {
        _myCityName = cityName;
        _myCurrentTemp = currentTemp;
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
    int currentTempF = (([_myCurrentTemp intValue] - 273.15) * 1.8)+ 32;
    int highTempF = (([_myHighTemp intValue] - 273.15) * 1.8)+ 32;
    int lowTempF = (([_myLowTemp intValue] - 273.15) * 1.8)+ 32;
    //NSLog(@"Current Temp :%d",currentTempF);
    
    _cityName.text = _myCityName;
    _currentTemp.text = [NSString stringWithFormat:@"%d",currentTempF];
    _highTemp.text = [NSString stringWithFormat:@"%d",highTempF];
    _lowTemp.text = [NSString stringWithFormat:@"%d",lowTempF];
    _humidity.text = [NSString stringWithFormat:@"%@",_myHumidity];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
