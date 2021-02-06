.class Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatDisplayInsets"
.end annotation


# instance fields
.field private final mHeight:I

.field final mIsFloating:Z

.field final mNonDecorInsets:[Landroid/graphics/Rect;

.field final mStableInsets:[Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowContainer;)V
    .locals 11
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 8243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8234
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 8240
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 8244
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    .line 8245
    if-eqz v1, :cond_1

    .line 8246
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 8247
    .local v1, "containerBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 8248
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 8251
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 8252
    .local v2, "emptyRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "rotation":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8253
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object v2, v4, v3

    .line 8254
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object v2, v4, v3

    .line 8252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8256
    .end local v3    # "rotation":I
    :cond_0
    return-void

    .line 8260
    .end local v1    # "containerBounds":Landroid/graphics/Rect;
    .end local v2    # "emptyRect":Landroid/graphics/Rect;
    :cond_1
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 8261
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 8262
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 8263
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    const/4 v2, 0x0

    move v8, v2

    .local v8, "rotation":I
    :goto_1
    if-ge v8, v0, :cond_6

    .line 8264
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 8265
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 8266
    const/4 v2, 0x1

    if-eq v8, v2, :cond_3

    const/4 v3, 0x3

    if-ne v8, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    move v9, v2

    .line 8267
    .local v9, "rotated":Z
    if-eqz v9, :cond_4

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    :goto_3
    move v4, v2

    .line 8268
    .local v4, "dw":I
    if-eqz v9, :cond_5

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_4

    :cond_5
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    :goto_4
    move v5, v2

    .line 8269
    .local v5, "dh":I
    invoke-virtual {p1, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 8270
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v10

    .line 8271
    .local v10, "cutout":Landroid/view/DisplayCutout;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v7, v2, v8

    move-object v2, v1

    move v3, v8

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 8272
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8273
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2, v8}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 8263
    .end local v4    # "dw":I
    .end local v5    # "dh":I
    .end local v9    # "rotated":Z
    .end local v10    # "cutout":Landroid/view/DisplayCutout;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8275
    .end local v8    # "rotation":I
    :cond_6
    return-void
.end method


# virtual methods
.method getBoundsByRotation(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 8278
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 8279
    .local v0, "rotated":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 8280
    .local v2, "dw":I
    :goto_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 8281
    .local v3, "dh":I
    :goto_2
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 8282
    return-void
.end method

.method getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 5
    .param p1, "outAppBounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I
    .param p4, "orientation"    # I
    .param p5, "orientationRequested"    # Z
    .param p6, "canChangeOrientation"    # Z

    .line 8295
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_0

    .line 8296
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 8297
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8298
    return-void

    .line 8301
    :cond_0
    if-eqz p6, :cond_2

    .line 8302
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 8303
    if-eqz p5, :cond_1

    .line 8304
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    goto :goto_4

    .line 8306
    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 8309
    :cond_2
    const/4 v0, 0x0

    if-eqz p5, :cond_6

    .line 8310
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 8311
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    if-le v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    if-eq v1, v3, :cond_7

    .line 8314
    const/4 v1, 0x2

    if-ne p4, v1, :cond_5

    .line 8315
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 8316
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 8318
    :cond_5
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 8319
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 8321
    :goto_2
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 8322
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityRecord;->access$400(II)I

    move-result v1

    .line 8321
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 8325
    :cond_6
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8327
    :cond_7
    :goto_3
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8330
    :goto_4
    const/4 v0, -0x1

    if-eq p3, v0, :cond_8

    .line 8332
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v0, v0, p3

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8334
    :cond_8
    return-void
.end method

.method getFrameByOrientation(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 8285
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8286
    .local v0, "longSide":I
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8287
    .local v1, "shortSide":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8288
    .local v3, "isLandscape":Z
    :goto_0
    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    .line 8289
    :goto_1
    if-eqz v3, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    .line 8288
    :goto_2
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8290
    return-void
.end method
