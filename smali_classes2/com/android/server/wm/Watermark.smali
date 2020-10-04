.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V
    .locals 16
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "tokens"    # [Ljava/lang/String;

    .line 55
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .line 64
    iput-object v3, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v0

    .line 67
    .local v4, "builder":Ljava/lang/StringBuilder;
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 68
    .local v0, "len":I
    and-int/lit8 v6, v0, -0x2

    .line 69
    .end local v0    # "len":I
    .local v6, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 70
    iget-object v7, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 71
    .local v7, "c1":I
    iget-object v8, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v8, v8, v5

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 72
    .local v8, "c2":I
    const/16 v9, 0x46

    const/16 v10, 0x66

    const/16 v11, 0x41

    const/16 v12, 0x61

    if-lt v7, v12, :cond_0

    if-gt v7, v10, :cond_0

    add-int/lit8 v13, v7, -0x61

    add-int/lit8 v13, v13, 0xa

    .end local v7    # "c1":I
    .local v13, "c1":I
    goto :goto_1

    .line 73
    .end local v13    # "c1":I
    .restart local v7    # "c1":I
    :cond_0
    if-lt v7, v11, :cond_1

    if-gt v7, v9, :cond_1

    add-int/lit8 v13, v7, -0x41

    add-int/lit8 v13, v13, 0xa

    .end local v7    # "c1":I
    .restart local v13    # "c1":I
    goto :goto_1

    .line 74
    .end local v13    # "c1":I
    .restart local v7    # "c1":I
    :cond_1
    add-int/lit8 v13, v7, -0x30

    .line 75
    .end local v7    # "c1":I
    .restart local v13    # "c1":I
    :goto_1
    if-lt v8, v12, :cond_2

    if-gt v8, v10, :cond_2

    add-int/lit8 v7, v8, -0x61

    add-int/lit8 v7, v7, 0xa

    .end local v8    # "c2":I
    .local v7, "c2":I
    goto :goto_2

    .line 76
    .end local v7    # "c2":I
    .restart local v8    # "c2":I
    :cond_2
    if-lt v8, v11, :cond_3

    if-gt v8, v9, :cond_3

    add-int/lit8 v7, v8, -0x41

    add-int/lit8 v7, v7, 0xa

    .end local v8    # "c2":I
    .restart local v7    # "c2":I
    goto :goto_2

    .line 77
    .end local v7    # "c2":I
    .restart local v8    # "c2":I
    :cond_3
    add-int/lit8 v7, v8, -0x30

    .line 78
    .end local v8    # "c2":I
    .restart local v7    # "c2":I
    :goto_2
    mul-int/lit8 v8, v13, 0x10

    add-int/2addr v8, v7

    rsub-int v8, v8, 0xff

    int-to-char v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .end local v7    # "c2":I
    .end local v13    # "c1":I
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 85
    const/16 v0, 0x14

    const/4 v7, 0x1

    invoke-static {v3, v7, v7, v0, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    .line 88
    .local v8, "fontSize":I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v9, v8

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v9, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    .line 93
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    iget-object v10, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 94
    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v10, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 96
    iget v0, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    const/4 v10, 0x2

    mul-int/2addr v0, v10

    invoke-static {v3, v10, v5, v0, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 98
    iget v0, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v10, 0x3

    mul-int/2addr v0, v10

    invoke-static {v3, v10, v5, v0, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 100
    const/4 v0, 0x4

    const/high16 v10, -0x50000000

    invoke-static {v3, v0, v5, v10, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v10

    .line 102
    .local v10, "shadowColor":I
    const/4 v0, 0x5

    const v11, 0x60ffffff

    invoke-static {v3, v0, v5, v11, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v11

    .line 104
    .local v11, "color":I
    const/4 v0, 0x6

    const/4 v12, 0x7

    invoke-static {v3, v0, v5, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    .line 106
    .local v12, "shadowRadius":I
    const/16 v0, 0x8

    invoke-static {v3, v0, v5, v5, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v13

    .line 108
    .local v13, "shadowDx":I
    const/16 v0, 0x9

    invoke-static {v3, v0, v5, v5, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 111
    .local v5, "shadowDy":I
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v14, v12

    int-to-float v15, v13

    int-to-float v7, v5

    invoke-virtual {v0, v14, v15, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 114
    const/4 v7, 0x0

    .line 116
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v14, "WatermarkSurface"

    .line 117
    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 118
    const/4 v14, 0x1

    invoke-virtual {v0, v14, v14}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v14, -0x3

    .line 119
    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    move-object v7, v0

    .line 121
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 122
    const v0, 0xf4240

    invoke-virtual {v7, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 124
    invoke-virtual {v7}, Landroid/view/SurfaceControl;->show()V

    .line 125
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v7}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_3

    .line 126
    :catch_0
    move-exception v0

    .line 128
    :goto_3
    iput-object v7, v1, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 129
    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 15

    .line 141
    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v0, :cond_4

    .line 142
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 143
    .local v0, "dw":I
    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 145
    .local v1, "dh":I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 146
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    .local v3, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 149
    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 152
    :goto_0
    goto :goto_1

    .line 151
    :catch_0
    move-exception v5

    goto :goto_1

    .line 150
    :catch_1
    move-exception v5

    goto :goto_0

    .line 153
    :goto_1
    if-eqz v4, :cond_4

    .line 154
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 156
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 157
    .local v2, "deltaX":I
    iget v5, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 161
    .local v5, "deltaY":I
    iget v6, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int v7, v0, v6

    div-int/2addr v7, v2

    .line 162
    .local v7, "div":I
    add-int/2addr v6, v0

    mul-int v8, v7, v2

    sub-int/2addr v6, v8

    .line 163
    .local v6, "rem":I
    div-int/lit8 v8, v2, 0x4

    .line 164
    .local v8, "qdelta":I
    if-lt v6, v8, :cond_0

    sub-int v9, v2, v8

    if-le v6, v9, :cond_1

    .line 165
    :cond_0
    div-int/lit8 v9, v2, 0x3

    add-int/2addr v2, v9

    .line 168
    :cond_1
    iget v9, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v9, v9

    .line 169
    .local v9, "y":I
    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v10, v10

    .line 170
    .local v10, "x":I
    :cond_2
    :goto_2
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v11, v1

    if-ge v9, v11, :cond_3

    .line 171
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v10

    int-to-float v13, v9

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    add-int/2addr v10, v2

    .line 173
    if-lt v10, v0, :cond_2

    .line 174
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v0

    sub-int/2addr v10, v11

    .line 175
    add-int/2addr v9, v5

    goto :goto_2

    .line 178
    :cond_3
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 181
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "deltaX":I
    .end local v3    # "dirty":Landroid/graphics/Rect;
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "deltaY":I
    .end local v6    # "rem":I
    .end local v7    # "div":I
    .end local v8    # "qdelta":I
    .end local v9    # "y":I
    .end local v10    # "x":I
    :cond_4
    return-void
.end method

.method positionSurface(II)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 132
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    .line 133
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 134
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setBufferSize(II)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 138
    :cond_1
    return-void
.end method
