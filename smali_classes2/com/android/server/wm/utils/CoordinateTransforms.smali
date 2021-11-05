.class public Lcom/android/server/wm/utils/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "physicalWidth"    # I
    .param p2, "physicalHeight"    # I
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 76
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 89
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 90
    neg-int v0, p2

    int-to-float v0, v0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 86
    neg-int v0, p1

    int-to-float v0, v0

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 87
    goto :goto_0

    .line 81
    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 82
    neg-int v0, p1

    int-to-float v0, v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 83
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 79
    nop

    .line 95
    :goto_0
    return-void
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "physicalWidth"    # I
    .param p2, "physicalHeight"    # I
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 46
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 59
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 60
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 56
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 57
    goto :goto_0

    .line 51
    :cond_2
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 52
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 53
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 49
    nop

    .line 65
    :goto_0
    return-void
.end method

.method public static transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 4
    .param p0, "transform"    # Landroid/graphics/Matrix;
    .param p1, "inOutRect"    # Landroid/graphics/Rect;
    .param p2, "tmp"    # Landroid/graphics/RectF;

    .line 148
    if-nez p2, :cond_0

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object p2, v0

    .line 151
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 152
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 153
    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    return-void
.end method

.method public static transformToRotation(IIIILandroid/graphics/Matrix;)V
    .locals 4
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I
    .param p4, "out"    # Landroid/graphics/Matrix;

    .line 130
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "flipped":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, p3

    .line 132
    .local v1, "h":I
    :goto_1
    if-eqz v0, :cond_3

    move v2, p3

    goto :goto_2

    :cond_3
    move v2, p2

    .line 134
    .local v2, "w":I
    :goto_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .local v3, "tmp":Landroid/graphics/Matrix;
    invoke-static {p0, v2, v1, p4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 136
    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 137
    invoke-virtual {p4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 138
    return-void
.end method

.method public static transformToRotation(IILandroid/view/DisplayInfo;Landroid/graphics/Matrix;)V
    .locals 4
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 108
    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v0, v1

    .line 109
    .local v0, "flipped":Z
    if-eqz v0, :cond_2

    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_2
    iget v1, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 110
    .local v1, "h":I
    :goto_1
    if-eqz v0, :cond_3

    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_3
    iget v2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 112
    .local v2, "w":I
    :goto_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v3, "tmp":Landroid/graphics/Matrix;
    invoke-static {p0, v2, v1, p3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 114
    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 115
    invoke-virtual {p3, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 116
    return-void
.end method
