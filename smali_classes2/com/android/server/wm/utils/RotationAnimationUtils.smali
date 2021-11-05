.class public Lcom/android/server/wm/utils/RotationAnimationUtils;
.super Ljava/lang/Object;
.source "RotationAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .line 122
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 136
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 131
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 132
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 133
    goto :goto_0

    .line 127
    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 128
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 129
    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 125
    nop

    .line 139
    :goto_0
    return-void
.end method

.method public static getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F
    .locals 6
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 104
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 105
    return v0

    .line 108
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 109
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    .local v2, "crop":Landroid/graphics/Rect;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 112
    invoke-static {p1, v2, v3}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    .line 113
    .local v3, "buffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v3, :cond_1

    .line 114
    return v0

    .line 117
    :cond_1
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 118
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 117
    invoke-static {v0, v4}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    return v0
.end method

.method public static getMedianBorderLuma(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)F
    .locals 14
    .param p0, "graphicBuffer"    # Landroid/graphics/GraphicBuffer;
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 46
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v4

    .line 50
    invoke-static {v1, v3, v4, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 52
    .local v1, "ir":Landroid/media/ImageReader;
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 53
    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    .line 54
    .local v2, "image":Landroid/media/Image;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 59
    .local v0, "plane":Landroid/media/Image$Plane;
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 60
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 61
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 62
    .local v6, "height":I
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 63
    .local v7, "pixelStride":I
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 64
    .local v8, "rowStride":I
    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    new-array v9, v9, [F

    .line 67
    .local v9, "borderLumas":[F
    const/4 v10, 0x0

    .line 68
    .local v10, "l":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_0
    if-ge v11, v5, :cond_2

    .line 69
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "l":I
    .local v12, "l":I
    invoke-static {v4, v11, v3, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v10

    .line 70
    add-int/lit8 v10, v12, 0x1

    .end local v12    # "l":I
    .restart local v10    # "l":I
    add-int/lit8 v13, v6, -0x1

    invoke-static {v4, v11, v13, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v12

    .line 68
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 74
    .end local v11    # "x":I
    :cond_2
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_1
    if-ge v11, v6, :cond_3

    .line 75
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "l":I
    .restart local v12    # "l":I
    invoke-static {v4, v3, v11, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v10

    .line 76
    add-int/lit8 v10, v12, 0x1

    .end local v12    # "l":I
    .restart local v10    # "l":I
    add-int/lit8 v13, v5, -0x1

    invoke-static {v4, v13, v11, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v12

    .line 74
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 80
    .end local v11    # "y":I
    :cond_3
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 84
    invoke-static {v9}, Ljava/util/Arrays;->sort([F)V

    .line 85
    array-length v3, v9

    div-int/lit8 v3, v3, 0x2

    aget v3, v9, v3

    return v3

    .line 55
    .end local v0    # "plane":Landroid/media/Image$Plane;
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "pixelStride":I
    .end local v8    # "rowStride":I
    .end local v9    # "borderLumas":[F
    .end local v10    # "l":I
    :cond_4
    :goto_2
    return v0

    .line 47
    .end local v1    # "ir":Landroid/media/ImageReader;
    .end local v2    # "image":Landroid/media/Image;
    :cond_5
    :goto_3
    return v0
.end method

.method private static getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pixelStride"    # I
    .param p4, "rowStride"    # I

    .line 90
    mul-int v0, p2, p4

    mul-int v1, p1, p3

    add-int/2addr v0, v1

    .line 91
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 92
    .local v1, "pixel":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 93
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 94
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 95
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 96
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->luminance()F

    move-result v2

    return v2
.end method
