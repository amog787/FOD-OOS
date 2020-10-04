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
.field final mDisplayHeight:I

.field final mDisplayWidth:I

.field final mNonDecorInsets:[Landroid/graphics/Rect;

.field final mStableInsets:[Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 11
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 4106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4098
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 4104
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 4107
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    .line 4108
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    .line 4109
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 4110
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    const/4 v2, 0x0

    move v8, v2

    .local v8, "rotation":I
    :goto_0
    if-ge v8, v0, :cond_4

    .line 4111
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 4112
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 4113
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    const/4 v3, 0x3

    if-ne v8, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    move v9, v2

    .line 4114
    .local v9, "rotated":Z
    if-eqz v9, :cond_2

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    :goto_2
    move v4, v2

    .line 4115
    .local v4, "dw":I
    if-eqz v9, :cond_3

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    :goto_3
    move v5, v2

    .line 4116
    .local v5, "dh":I
    invoke-virtual {p1, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 4117
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v10

    .line 4118
    .local v10, "cutout":Landroid/view/DisplayCutout;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v7, v2, v8

    move-object v2, v1

    move v3, v8

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 4119
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4120
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2, v8}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 4110
    .end local v4    # "dw":I
    .end local v5    # "dh":I
    .end local v9    # "rotated":Z
    .end local v10    # "cutout":Landroid/view/DisplayCutout;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4122
    .end local v8    # "rotation":I
    :cond_4
    return-void
.end method


# virtual methods
.method getDisplayBoundsByOrientation(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 4132
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4133
    .local v0, "longSide":I
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4134
    .local v1, "shortSide":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4135
    .local v3, "isLandscape":Z
    :goto_0
    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    .line 4136
    :goto_1
    if-eqz v3, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    .line 4135
    :goto_2
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4137
    return-void
.end method

.method getDisplayBoundsByRotation(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 4125
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4126
    .local v0, "rotated":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    .line 4127
    .local v2, "dw":I
    :goto_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayHeight:I

    .line 4128
    .local v3, "dh":I
    :goto_2
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4129
    return-void
.end method
