//
//  CurrentForcastViewController.h
//  weatherApp
//
//  Created by Ankit Singhania on 8/16/13.
//  Copyright (c) 2013 Ankit Singhania. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrentForcastViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *cityName;
@property (weak, nonatomic) IBOutlet UILabel *highTemp;
@property (weak, nonatomic) IBOutlet UILabel *lowTemp;
@property (weak, nonatomic) IBOutlet UILabel *humidity;

-(id)initWithCityName:(NSString *)cityName highTemp:(NSString *)highTemp lowTemp:(NSString *)lowTemp humidity:(NSString *)humidity;
@end
