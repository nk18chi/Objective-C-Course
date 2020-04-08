//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "FoodTypeCharge.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        FoodTruck *truckC = [[FoodTruck alloc] initWithName:@"hello something" andFoodType:@"something"];
        FoodTruck *truckD = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
        Cook *cook1 = [Cook new];
        truckA.delegate = cook1;
        FoodTypeCharge *cook2 = [FoodTypeCharge new];
        truckB.delegate = cook2;
        FoodTypeCharge *cook3 = [FoodTypeCharge new];
        truckC.delegate = cook3;
        FoodTypeCharge *cook4 = [FoodTypeCharge new];
        truckD.delegate = cook4;
        
        [truckA serve:10];
        [truckB serve:10];
        [truckC serve:10];
        [truckD serve:10];
        
        [truckA cashOut];
        [truckB cashOut];
        [truckC cashOut];
        [truckD cashOut];
        

    }
    return 0;
}
