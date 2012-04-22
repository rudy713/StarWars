//
//  StarWarsAppDelegate.h
//  StarWars
//
//  Created by Rudy Pospisil on 22/04/12.
//  Copyright (c) 2012 rudypospisil@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h> 
@class View;

@interface StarWarsAppDelegate : UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;

@end
