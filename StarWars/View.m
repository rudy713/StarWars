//
//  View.m
//  StarWars
//
//  Created by Rudy Pospisil on 22/04/12.
//  Copyright (c) 2012 rudypospisil@gmail.com. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {

        NSString *string1 = @"David O. Selznick";
        NSString *string2 = @"presents";
        UIFont *font = [UIFont boldSystemFontOfSize: 32];
        CGSize size1 = [string1 sizeWithFont: font];
        CGSize size2 = [string2 sizeWithFont: font];
        
        CGRect topLine = CGRectMake(
                                    (self.bounds.size.width - size1.width)/2,
                                    ((self.bounds.size.height - size1.height)/2)-size1.height/2,
                                    size1.width,
                                    size1.height
                                    );
        CGRect bottomLine = CGRectMake(
                                    (self.bounds.size.width - size2.width)/2,
                                    ((self.bounds.size.height - size2.height)/2)+size2.height/2,
                                    size2.width,
                                    size2.height
                                    );
        
        UILabel *label1 = [[UILabel alloc] initWithFrame: topLine];
        label1.backgroundColor = [UIColor clearColor];
        label1.font = font;
        label1.text = string1;
        label1.textColor = [UIColor whiteColor];
        [self addSubview: label1];
        
        label2 = [[UILabel alloc] initWithFrame: bottomLine];
        label2.backgroundColor = [UIColor clearColor];
        label2.font = font;
        label2.text = string2;
        label2.textColor = [UIColor whiteColor];
        [self addSubview: label2];
        
        self.alpha = 0.0;
        [UIView animateWithDuration: 3.0
                              delay: 0.0
                            options: UIViewAnimationCurveEaseInOut
                         animations: ^{
                             self.alpha = 1.0;
                         }
                         completion: NULL
         ];

        [UIView animateWithDuration: 8.0
                              delay: 0.0
                            options: UIViewAnimationCurveEaseInOut
                         animations: ^{
                             label1.alpha = 0.0;
                             //label2.alpha = 0.0;
                             label1.transform = CGAffineTransformScale(label1.transform, 0.01, 0.01);
                             //self.transform = CGAffineTransformTranslate(self.transform, .1, .1);
                         }
                         completion: NULL
         ];

        [UIView animateWithDuration: 8.0
                              delay: 3.0
                            options: UIViewAnimationCurveEaseInOut
                         animations: ^{
                             label2.alpha = 0.0;
                             label2.transform = CGAffineTransformScale(label2.transform, 0.01, 0.01);
                         }
                         completion: NULL
         ];
        
        //UIImage *image = [UIImage imageNamed: @"Star_Wars_Logo.png"];

        UIImageView *image = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"Star_Wars_Logo.png"]];
        
        image.alpha = 0.1;
        image.transform = CGAffineTransformScale(image.transform, 0.1, 0.1);
        image.center = CGPointMake(160,220);
        
        [self insertSubview:(image) belowSubview:(label1)];
        
        [UIView animateWithDuration: 50.0
                              delay: 1.0
                            options: UIViewAnimationCurveEaseOut
                         animations: ^{
                             image.alpha = 1.0;
                             image.transform = CGAffineTransformScale(image.transform, 100.0, 100.0);
                         }
                         completion: NULL
         ];
            
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
}
*/

@end
