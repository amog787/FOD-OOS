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
.method constructor <init>(Ljava/util/function/Supplier;Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16
    .param p2, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "dm"    # Landroid/util/DisplayMetrics;
    .param p4, "tokens"    # [Ljava/lang/String;
    .param p5, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/server/wm/DisplayContent;",
            "Landroid/util/DisplayMetrics;",
            "[",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    .line 59
    .local p1, "surfaceFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/Surface;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v0, "Watermark"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    iput-object v5, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/wm/Watermark;->mDisplay:Landroid/view/Display;

    .line 68
    iput-object v3, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v5, "builder":Ljava/lang/StringBuilder;
    iget-object v6, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 72
    .local v6, "len":I
    and-int/lit8 v6, v6, -0x2

    .line 73
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_4

    .line 74
    iget-object v9, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 75
    .local v9, "c1":I
    iget-object v10, v1, Lcom/android/server/wm/Watermark;->mTokens:[Ljava/lang/String;

    aget-object v10, v10, v7

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 76
    .local v10, "c2":I
    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x41

    const/16 v14, 0x61

    if-lt v9, v14, :cond_0

    if-gt v9, v12, :cond_0

    add-int/lit8 v15, v9, -0x61

    add-int/lit8 v15, v15, 0xa

    .end local v9    # "c1":I
    .local v15, "c1":I
    goto :goto_1

    .line 77
    .end local v15    # "c1":I
    .restart local v9    # "c1":I
    :cond_0
    if-lt v9, v13, :cond_1

    if-gt v9, v11, :cond_1

    add-int/lit8 v15, v9, -0x41

    add-int/lit8 v15, v15, 0xa

    .end local v9    # "c1":I
    .restart local v15    # "c1":I
    goto :goto_1

    .line 78
    .end local v15    # "c1":I
    .restart local v9    # "c1":I
    :cond_1
    add-int/lit8 v15, v9, -0x30

    .line 79
    .end local v9    # "c1":I
    .restart local v15    # "c1":I
    :goto_1
    if-lt v10, v14, :cond_2

    if-gt v10, v12, :cond_2

    add-int/lit8 v9, v10, -0x61

    add-int/lit8 v9, v9, 0xa

    .end local v10    # "c2":I
    .local v9, "c2":I
    goto :goto_2

    .line 80
    .end local v9    # "c2":I
    .restart local v10    # "c2":I
    :cond_2
    if-lt v10, v13, :cond_3

    if-gt v10, v11, :cond_3

    add-int/lit8 v9, v10, -0x41

    add-int/lit8 v9, v9, 0xa

    .end local v10    # "c2":I
    .restart local v9    # "c2":I
    goto :goto_2

    .line 81
    .end local v9    # "c2":I
    .restart local v10    # "c2":I
    :cond_3
    add-int/lit8 v9, v10, -0x30

    .line 82
    .end local v10    # "c2":I
    .restart local v9    # "c2":I
    :goto_2
    mul-int/lit8 v10, v15, 0x10

    add-int/2addr v10, v9

    rsub-int v10, v10, 0xff

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .end local v9    # "c2":I
    .end local v15    # "c1":I
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 84
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 89
    const/16 v8, 0x14

    const/4 v9, 0x1

    invoke-static {v3, v9, v9, v8, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    .line 92
    .local v8, "fontSize":I
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 93
    int-to-float v11, v8

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-object v10, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v11, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v10, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 97
    .local v10, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v11, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    iget-object v12, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    iput v11, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 98
    iget v11, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v12, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v11, v12

    iput v11, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 100
    iget v11, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    invoke-static {v3, v12, v7, v11, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v11

    iput v11, v1, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 102
    iget v11, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v12, 0x3

    mul-int/2addr v11, v12

    invoke-static {v3, v12, v7, v11, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v11

    iput v11, v1, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 104
    const/4 v11, 0x4

    const/high16 v12, -0x50000000

    invoke-static {v3, v11, v7, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v11

    .line 106
    .local v11, "shadowColor":I
    const/4 v12, 0x5

    const v13, 0x60ffffff

    invoke-static {v3, v12, v7, v13, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    .line 108
    .local v12, "color":I
    const/4 v13, 0x6

    const/4 v14, 0x7

    invoke-static {v3, v13, v7, v14, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v13

    .line 110
    .local v13, "shadowRadius":I
    const/16 v14, 0x8

    invoke-static {v3, v14, v7, v7, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v14

    .line 112
    .local v14, "shadowDx":I
    const/16 v15, 0x9

    invoke-static {v3, v15, v7, v7, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v7

    .line 115
    .local v7, "shadowDy":I
    iget-object v15, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v15, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v9, v13

    int-to-float v2, v14

    int-to-float v3, v7

    invoke-virtual {v15, v9, v2, v3, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v9, "WatermarkSurface"

    .line 121
    invoke-virtual {v3, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 122
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v9}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v9, -0x3

    .line 123
    invoke-virtual {v3, v9}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object v2, v3

    .line 126
    const v3, 0xf4240

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 127
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v2, v4, v3, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 131
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_3

    .line 132
    :catch_0
    move-exception v0

    .line 134
    :goto_3
    iput-object v2, v1, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 135
    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 15

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-eqz v0, :cond_4

    .line 148
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 149
    .local v0, "dw":I
    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 151
    .local v1, "dh":I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 152
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .local v3, "dirty":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 155
    .local v4, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 158
    :goto_0
    goto :goto_1

    .line 157
    :catch_0
    move-exception v5

    goto :goto_1

    .line 156
    :catch_1
    move-exception v5

    goto :goto_0

    .line 159
    :goto_1
    if-eqz v4, :cond_4

    .line 160
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 163
    .local v2, "deltaX":I
    iget v5, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 167
    .local v5, "deltaY":I
    iget v6, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int v7, v0, v6

    div-int/2addr v7, v2

    .line 168
    .local v7, "div":I
    add-int/2addr v6, v0

    mul-int v8, v7, v2

    sub-int/2addr v6, v8

    .line 169
    .local v6, "rem":I
    div-int/lit8 v8, v2, 0x4

    .line 170
    .local v8, "qdelta":I
    if-lt v6, v8, :cond_0

    sub-int v9, v2, v8

    if-le v6, v9, :cond_1

    .line 171
    :cond_0
    div-int/lit8 v9, v2, 0x3

    add-int/2addr v2, v9

    .line 174
    :cond_1
    iget v9, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v9, v9

    .line 175
    .local v9, "y":I
    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v10, v10

    .line 176
    .local v10, "x":I
    :cond_2
    :goto_2
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v11, v1

    if-ge v9, v11, :cond_3

    .line 177
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v12, v10

    int-to-float v13, v9

    iget-object v14, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    add-int/2addr v10, v2

    .line 179
    if-lt v10, v0, :cond_2

    .line 180
    iget v11, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v11, v0

    sub-int/2addr v10, v11

    .line 181
    add-int/2addr v9, v5

    goto :goto_2

    .line 184
    :cond_3
    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 187
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

.method positionSurface(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 138
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    .line 139
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 140
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 144
    :cond_1
    return-void
.end method
