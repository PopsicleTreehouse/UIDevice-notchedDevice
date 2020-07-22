#include "UIDevice+notchedDevice.h"

@implementation UIDevice (notchedDevice) // ty burrit0z for making this to work
static NSString *modelID = [UIDevice.currentDevice _currentProduct]; // get the device Identifier
static NSString *model = [UIDevice.currentDevice model]; // get the device model

-(BOOL)isNotched {
    NSArray *notchedDevices = [NSArray initWithObjects:@"iPhone6,1", @"iPhone6,2", @"iPhone7,1", @"iPhone7,2", @"iPhone8,1", @"iPhone8,2", @"iPhone8,4", @"iPhone9,1", @"iPhone9,2", @"iPhone9,3", @"iPhone9,4", @"iPhone10,1", @"iPhone10,2", @"iPhone10,4". @"iPhone10,5". @"iPhone12,0", nil];
    if([notchedDevices containsObject: modelName]) { 
        return NO;
    } else {
        return YES;
    }
}

-(BOOL)isAnIpad {
    if([model isEqualToString:@"iPad"]){
        return YES;
    } else {
        return NO;
    }
}

-(BOOL)isAnIpod {
    if([model isEqualToString:@"iPod"]){
        return YES;
    } else {
        return NO;
    }
} // yeah this is a copy pasta from the previous method shut up now :(

@end

// How to use this ? it's really simple
// Copy pasterinio these two files to your project, don't forget to include the .h file and then
// Just use these :
// [UIDevice.currentDevice isNotched]; This will return a BOOL that is equal to YES if the device is notched
// [UIDevice.currentDevice isAniPad]; This will return a BOOL that is equal to YES if the device is an iPad
// [UIDevice.currentDevice isAniPod]; This will return a BOOL that is equal to YES if the device is an iPod
//
// You can use those like this :
// BOOL isNotchedDevice = [UIDevice.currentDevice isNotched];
//
// This is pretty useless but you know
// https://wompampsupport.azureedge.net/fetchimage?siteId=7575&v=2&jpgQuality=100&width=700&url=https%3A%2F%2Fi.kym-cdn.com%2Fentries%2Ficons%2Ffacebook%2F000%2F028%2F021%2Fwork.jpg