//
//  CIFilter+HTCICategoryTileEffect.m
//  HTCoreImageDemo
//
//  Created by Jacob Jennings on 4/2/13.
//  Copyright (c) 2013 HotelTonight. All rights reserved.
//

#import "CIFilter+HTCICategoryTileEffect.h"

@implementation CIFilter (HTCICategoryTileEffect)

+ (CIFilter *)filterAffineClampWithTransform:(CGAffineTransform)transform
{
    CIFilter *filter = [CIFilter filterWithName:@"CIAffineClamp"];
    [filter setDefaults];
    [filter setValue:[NSValue valueWithBytes:&transform
                                    objCType:@encode(CGAffineTransform)]
              forKey:@"inputTransform"];
    return filter;
}

+ (CIFilter *)filterAffineTileWithTransform:(CGAffineTransform)transform
{
    CIFilter *filter = [CIFilter filterWithName:@"CIAffineTile"];
    [filter setDefaults];
    [filter setValue:[NSValue valueWithBytes:&transform
                                    objCType:@encode(CGAffineTransform)]
              forKey:@"inputTransform"];
    return filter;
}

+ (CIFilter *)filterEightfoldReflectedTileWithCenter:(CGPoint)center angle:(CGFloat)angle width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CIEightfoldReflectedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)filterFourfoldReflectedTileWithCenter:(CGPoint)center
                                              angle:(CGFloat)angle
                                         acuteAngle:(CGFloat)acuteAngle
                                              width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CIFourfoldReflectedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(acuteAngle) forKey:@"inputAcuteAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)filterFourfoldRotatedTileWithCenter:(CGPoint)center
                                            angle:(CGFloat)angle
                                            width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CIFourfoldRotatedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)filterFourfoldTranslatedTileWithCenter:(CGPoint)center
                                               angle:(CGFloat)angle
                                          acuteAngle:(CGFloat)acuteAngle
                                               width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CIFourfoldTranslatedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(acuteAngle) forKey:@"inputAcuteAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)filterGlideReflectedTileWithCenter:(CGPoint)center angle:(CGFloat)angle width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CIGlideReflectedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)filterPerspectiveTileWithTopLeft:(CGPoint)topLeft topRight:(CGPoint)topRight bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
    CIFilter *filter = [CIFilter filterWithName:@"CIPerspectiveTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:topLeft] forKey:@"inputTopLeft"];
    [filter setValue:[CIVector vectorWithCGPoint:topRight] forKey:@"inputTopRight"];
    [filter setValue:[CIVector vectorWithCGPoint:bottomRight] forKey:@"inputBottomRight"];
    [filter setValue:[CIVector vectorWithCGPoint:bottomLeft] forKey:@"inputBottomLeft"];
    return filter;
}

+ (CIFilter *)filterSixfoldReflectedTileWithCenter:(CGPoint)center angle:(CGFloat)angle width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CISixfoldReflectedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)filterSixfoldRotatedTileWithCenter:(CGPoint)center angle:(CGFloat)angle width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CISixfoldRotatedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)filterTriangleKaleidoscopeWithPoint:(CGPoint)point
                                             size:(CGFloat)size
                                         rotation:(CGFloat)rotation
                                            decay:(CGFloat)decay
{
    CIFilter *filter = [CIFilter filterWithName:@"CITriangleKaleidoscope"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:point] forKey:@"inputPoint"];
    [filter setValue:@(size) forKey:@"inputSize"];
    [filter setValue:@(rotation) forKey:@"inputRotation"];
    [filter setValue:@(decay) forKey:@"inputDecay"];
    return filter;
}

+ (CIFilter *)filterTriangleTileWithCenter:(CGPoint)center angle:(CGFloat)angle width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CITriangleTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}

+ (CIFilter *)twelvefoldReflectedTileWithCenter:(CGPoint)center angle:(CGFloat)angle width:(CGFloat)width
{
    CIFilter *filter = [CIFilter filterWithName:@"CITwelvefoldReflectedTile"];
    [filter setDefaults];
    [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
    [filter setValue:@(angle) forKey:@"inputAngle"];
    [filter setValue:@(width) forKey:@"inputWidth"];
    return filter;
}


@end
