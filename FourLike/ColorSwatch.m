//
//  ColorSwatch.m
//  FourLike
//
//  Created by apple on 15/8/18.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import "ColorSwatch.h"
#import "Colors.h"

@interface ColorSwatch ()

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, strong, readwrite) UIColor *color;

@end

@implementation ColorSwatch
/*
 @dynamic  自己实现gitter，sitter
 */
@dynamic hexString;
@dynamic rgbString;
@dynamic cmykString;
@dynamic cielabString;
@dynamic hsbString;

+ (instancetype)colorSwatchWithColor:(UIColor *)color name:(NSString *)name {
    return [[[self class] alloc] initWithColor:color name:name];
}


- (instancetype)initWithColor:(UIColor *)color name:(NSString *)name {
    self = [super init];
    if(self) {
        self.color = color;
        self.name = name;
    }
    return self;
}

- (NSArray *)relatedColors {
    return [self.color colorSchemeOfType:ColorSchemeAnalagous];
}

- (instancetype)init {
    // By default let's just return black
    return [self initWithColor:[UIColor blackColor] name:@"black"];
}

#pragma mark - Property Overrides  getter
- (NSString *)hexString {
    // Method provided by the Colours class extension
    return [self.color hexString];
}

- (NSString *)rgbString {
    // Method provided by the Colours class extension
    NSDictionary *rgbDict = [self.color rgbaDictionary];
    return [NSString stringWithFormat:@"(%0.2f, %0.2f, %0.2f)", [rgbDict[kColoursRGBA_R] floatValue],
            [rgbDict[kColoursRGBA_G] floatValue],
            [rgbDict[kColoursRGBA_B] floatValue]];
}

- (NSString *)cmykString {
    // Method provided by the Colours class extension
    NSDictionary *cmykDict = [self.color cmykDictionary];
    return [NSString stringWithFormat:@"(%0.2f, %0.2f, %0.2f, %0.2f)", [cmykDict[kColoursCMYK_C] floatValue],
            [cmykDict[kColoursCMYK_M] floatValue],
            [cmykDict[kColoursCMYK_Y] floatValue],
            [cmykDict[kColoursCMYK_K] floatValue]];
}

- (NSString *)hsbString {
    // Method provided by the Colours class extension
    NSDictionary *hsbDict = [self.color hsbaDictionary];
    return [NSString stringWithFormat:@"(%0.2f, %0.2f, %0.2f)", [hsbDict[kColoursHSBA_H] floatValue],
            [hsbDict[kColoursHSBA_S] floatValue],
            [hsbDict[kColoursHSBA_B] floatValue]];
    
}

- (NSString *)cielabString {
    // Method provided by the Colours class extension
    NSDictionary *cieDict = [self.color CIE_LabDictionary];
    return [NSString stringWithFormat:@"(%0.2f, %0.2f, %0.2f)", [cieDict[kColoursCIE_L] floatValue],
            [cieDict[kColoursCIE_A] floatValue],
            [cieDict[kColoursCIE_B] floatValue]];
    
}

@end
