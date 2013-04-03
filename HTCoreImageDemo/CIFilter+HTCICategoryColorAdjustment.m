//
//  CIFilter+HTCICategoryColorAdjustment.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryColorAdjustment.h"

@implementation CIFilter (HTCICategoryColorAdjustment)

+ (CIFilter *)filterColorControlsSaturation:(CGFloat)saturation
                                 brightness:(CGFloat)brightness
                                   contrast:(CGFloat)contrast;
{
    CIFilter *filter = [CIFilter filterWithName:@"CIColorControls"];
    [filter setValue:@(saturation) forKey:@"inputSaturation"];
    [filter setValue:@(brightness) forKey:@"inputBrightness"];
    [filter setValue:@(contrast) forKey:@"inputContrast"];
    return filter;
}

+ (CIFilter *)filterColorMatrixWithAlpha:(CGFloat)alpha;
{
    CIFilter *colorMatrixFilter = [CIFilter filterWithName:@"CIColorMatrix"];
    [colorMatrixFilter setDefaults];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0 Y:0 Z:0 W:alpha]
                         forKey:@"inputAVector"];
    return colorMatrixFilter;
}

+ (CIFilter *)filterColorMatrixWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
{
    CIFilter *colorMatrixFilter = [CIFilter filterWithName:@"CIColorMatrix"];
    [colorMatrixFilter setDefaults];
    [colorMatrixFilter setValue:[CIVector vectorWithX:red Y:0 Z:0 W:0]
                         forKey:@"inputRVector"];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0 Y:green Z:0 W:0]
                         forKey:@"inputGVector"];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0 Y:0 Z:blue W:0]
                         forKey:@"inputBVector"];
    [colorMatrixFilter setValue:[CIVector vectorWithX:0 Y:0 Z:0 W:alpha]
                         forKey:@"inputAVector"];
    return colorMatrixFilter;
}

+ (CIFilter *)filterExposureAdjustWithInputEV:(CGFloat)inputEV
{
    CIFilter *exposureAdjustFilter = [CIFilter filterWithName:@"CIExposureAdjust"];
    [exposureAdjustFilter setDefaults];
    [exposureAdjustFilter setValue:@(inputEV) forKey:@"inputEV"];
    return exposureAdjustFilter;
}

+ (CIFilter *)filterGammaAdjustWithInputPower:(CGFloat)inputPower
{
    CIFilter *gammaAdjustFilter = [CIFilter filterWithName:@"CIGammaAdjust"];
    [gammaAdjustFilter setDefaults];
    [gammaAdjustFilter setValue:@(inputPower) forKey:@"inputPower"];
    return gammaAdjustFilter;
}

+ (CIFilter *)filterHueAdjustWithInputAngle:(CGFloat)inputAngle
{
    CIFilter *hueAdjustFilter = [CIFilter filterWithName:@"CIHueAdjust"];
    [hueAdjustFilter setDefaults];
    [hueAdjustFilter setValue:@(inputAngle) forKey:@"inputAngle"];
    return hueAdjustFilter;
}

+ (CIFilter *)filterTemperatureAndTintWithNeutral:(CGPoint)neutral targetNeutral:(CGPoint)targetNeutral
{
    CIFilter *temperateAndTintFilter = [CIFilter filterWithName:@"CITemperatureAndTint"];
    [temperateAndTintFilter setDefaults];
    [temperateAndTintFilter setValue:[CIVector vectorWithCGPoint:neutral] forKey:@"inputNeutral"];
    [temperateAndTintFilter setValue:[CIVector vectorWithCGPoint:targetNeutral] forKey:@"inputTargetNeutral"];
    return temperateAndTintFilter;
}

+ (CIFilter *)filterToneCurveWithControlPoint0:(CGPoint)point0 point1:(CGPoint)point1 point2:(CGPoint)point2 point3:(CGPoint)point3
{
    CIFilter *toneCurveFilter = [CIFilter filterWithName:@"CIToneCurve"];
    [toneCurveFilter setDefaults];
    [toneCurveFilter setValue:[CIVector vectorWithCGPoint:point0] forKey:@"inputPoint0"];
    [toneCurveFilter setValue:[CIVector vectorWithCGPoint:point1] forKey:@"inputPoint1"];
    [toneCurveFilter setValue:[CIVector vectorWithCGPoint:point2] forKey:@"inputPoint2"];
    [toneCurveFilter setValue:[CIVector vectorWithCGPoint:point3] forKey:@"inputPoint3"];
    return toneCurveFilter;
}

+ (CIFilter *)filterVibranceWithInputAmount:(CGFloat)inputAmount
{
    CIFilter *vibranceFilter = [CIFilter filterWithName:@"CIVibrance"];
    [vibranceFilter setDefaults];
    [vibranceFilter setValue:@(inputAmount) forKey:@"inputAmount"];
    return vibranceFilter;
}

+ (CIFilter *)filterWhitePointAdjustWithInputColor:(UIColor *)inputColor
{
    CIFilter *whitePointFilter = [CIFilter filterWithName:@"CIWhitePointAdjust"];
    [whitePointFilter setDefaults];
    [whitePointFilter setValue:[CIColor colorWithCGColor:inputColor.CGColor] forKey:@"inputColor"];
    return whitePointFilter;
}


@end
