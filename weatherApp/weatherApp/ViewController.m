//
//  ViewController.m
//  weatherApp
//
//  Created by Ankit Singhania on 8/16/13.
//  Copyright (c) 2013 Ankit Singhania. All rights reserved.
//

#import "ViewController.h"
#import "CurrentForcastViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSString *searchTerm = _textField.text;
    NSString *requestURL = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@", searchTerm];
    NSLog(@"%@",requestURL);
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:requestURL]];
        //NSLog(@"%@",data);
        [self performSelectorOnMainThread:@selector(fetchedForcasts:) withObject:data waitUntilDone:YES];
    });
}

-(void)fetchedForcasts:(NSData *)responseData{
    NSError *error;
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
    //NSLog(@"%@",json);
    NSString *name = [json objectForKey:@"name"];
    NSString *high = [[json objectForKey:@"main"] objectForKey:@"temp_max"];
    NSString *low = [[json objectForKey:@"main"] objectForKey:@"temp_min"];
    NSString *hum = [[json objectForKey:@"main"] objectForKey:@"humidity"];
    
    NSLog(@"%@:%@:%@:%@",name,high,low,hum);
    
    CurrentForcastViewController *view = [[CurrentForcastViewController alloc]initWithCityName:name highTemp:high lowTemp:low humidity:hum];
    [self.navigationController pushViewController:view animated:YES];
    
}

@end
