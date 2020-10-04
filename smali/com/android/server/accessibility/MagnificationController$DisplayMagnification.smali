.class final Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayMagnification"
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1


# instance fields
.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mDeleteAfterUnregister:Z

.field private final mDisplayId:I

.field private mIdOfLastServiceToMagnify:I

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private mRegistered:Z

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationController;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationController;I)V
    .locals 4
    .param p2, "displayId"    # I

    .line 114
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 96
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 115
    iput p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 116
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object p1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;ILcom/android/server/accessibility/MagnificationController$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 117
    return-void
.end method


# virtual methods
.method getCenterX()F
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 199
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 198
    return v0
.end method

.method getCenterY()F
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 205
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 204
    return v0
.end method

.method getIdOfLastServiceToMagnify()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method getMagnificationBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 338
    return-void
.end method

.method getMagnificationRegion(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outRegion"    # Landroid/graphics/Region;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 343
    return-void
.end method

.method getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 390
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentScale()F

    move-result v0

    .line 391
    .local v0, "scale":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentOffsetX()F

    move-result v1

    .line 392
    .local v1, "offsetX":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentOffsetY()F

    move-result v2

    .line 393
    .local v2, "offsetY":F
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 394
    neg-float v3, v1

    float-to-int v3, v3

    neg-float v4, v2

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 395
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 396
    return-void
.end method

.method getMaxOffsetXLocked()F
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMaxOffsetYLocked()F
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMinOffsetXLocked()F
    .locals 5

    .line 555
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 556
    .local v0, "viewportWidth":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 557
    .local v1, "viewportLeft":F
    add-float v2, v1, v0

    add-float v3, v1, v0

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method getMinOffsetYLocked()F
    .locals 5

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 568
    .local v0, "viewportHeight":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 569
    .local v1, "viewportTop":F
    add-float v2, v1, v0

    add-float v3, v1, v0

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method getOffsetX()F
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getOffsetY()F
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getScale()F
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method getSentOffsetX()F
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getSentOffsetY()F
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getSentScale()F
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method isMagnifying()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRegistered()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    return v0
.end method

.method magnificationRegionContains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method offsetMagnifiedRegion(FFI)V
    .locals 4
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "id"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 517
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v0, p1

    .line 522
    .local v0, "nonNormOffsetX":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v1, p2

    .line 523
    .local v1, "nonNormOffsetY":F
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 526
    :cond_1
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    .line 527
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 529
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 530
    return-void
.end method

.method onMagnificationChangedLocked()V
    .locals 7

    .line 323
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getAms()Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result v6

    .line 323
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;FFF)V

    .line 325
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregister(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method public onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "magnificationRegion"    # Landroid/graphics/Region;

    .line 243
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;

    .line 245
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v1

    .line 243
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 251
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 251
    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 4
    .param p1, "rotation"    # I

    .line 260
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 260
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public onUserContextChanged()V
    .locals 4

    .line 267
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 268
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 267
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 269
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    return-void
.end method

.method register()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    .line 129
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set magnification callbacks fail, displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnificationController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 138
    return v1
.end method

.method requestRectangleOnScreen(IIII)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 348
    .local v1, "magnifiedFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 349
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    monitor-exit v0

    return-void

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 354
    .local v2, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 358
    sub-int v3, p3, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 360
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 361
    .local v3, "direction":I
    if-nez v3, :cond_1

    .line 362
    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    .local v4, "scrollX":F
    goto :goto_0

    .line 364
    .end local v4    # "scrollX":F
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    int-to-float v4, v4

    .line 366
    .end local v3    # "direction":I
    .restart local v4    # "scrollX":F
    :goto_0
    goto :goto_1

    .end local v4    # "scrollX":F
    :cond_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v3, :cond_3

    .line 367
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, p1, v3

    int-to-float v4, v3

    .restart local v4    # "scrollX":F
    goto :goto_1

    .line 368
    .end local v4    # "scrollX":F
    :cond_3
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le p3, v3, :cond_4

    .line 369
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, p3, v3

    int-to-float v4, v3

    .restart local v4    # "scrollX":F
    goto :goto_1

    .line 371
    .end local v4    # "scrollX":F
    :cond_4
    const/4 v4, 0x0

    .line 374
    .restart local v4    # "scrollX":F
    :goto_1
    sub-int v3, p4, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_5

    .line 375
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    .local v3, "scrollY":F
    goto :goto_2

    .line 376
    .end local v3    # "scrollY":F
    :cond_5
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v3, :cond_6

    .line 377
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    .restart local v3    # "scrollY":F
    goto :goto_2

    .line 378
    .end local v3    # "scrollY":F
    :cond_6
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le p4, v3, :cond_7

    .line 379
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p4, v3

    int-to-float v3, v3

    .restart local v3    # "scrollY":F
    goto :goto_2

    .line 381
    .end local v3    # "scrollY":F
    :cond_7
    const/4 v3, 0x0

    .line 384
    .restart local v3    # "scrollY":F
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v5

    .line 385
    .local v5, "scale":F
    mul-float v6, v4, v5

    mul-float v7, v3, v5

    const/4 v8, -0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 386
    .end local v1    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v2    # "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    .end local v3    # "scrollY":F
    .end local v4    # "scrollX":F
    .end local v5    # "scale":F
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reset(Z)Z
    .locals 3
    .param p1, "animate"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 408
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 412
    .local v0, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 413
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 415
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 417
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 419
    return v1
.end method

.method sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .locals 4
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationController;->access$500(Lcom/android/server/accessibility/MagnificationController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_0

    .line 306
    :cond_0
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$CXn5BYHEDMuDgWNKCgknaVOAyJ8;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$CXn5BYHEDMuDgWNKCgknaVOAyJ8;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 308
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 306
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 309
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    .end local v0    # "m":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method setForceShowMagnifiableBounds(Z)V
    .locals 2
    .param p1, "show"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->setForceShowMagnifiableBounds(IZ)V

    .line 404
    :cond_0
    return-void
.end method

.method setScale(FFFZI)Z
    .locals 19
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 425
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    return v0

    .line 429
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41000000    # 8.0f

    move/from16 v2, p1

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    .line 431
    .end local p1    # "scale":F
    .local v7, "scale":F
    iget-object v8, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 432
    .local v8, "viewport":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v8}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 433
    iget-object v9, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 434
    .local v9, "spec":Landroid/view/MagnificationSpec;
    iget v10, v9, Landroid/view/MagnificationSpec;->scale:F

    .line 435
    .local v10, "oldScale":F
    nop

    .line 436
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, v9, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v0, v2

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float v11, v0, v10

    .line 437
    .local v11, "oldCenterX":F
    nop

    .line 438
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, v9, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float v12, v0, v10

    .line 439
    .local v12, "oldCenterY":F
    iget v0, v9, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v0, p2, v0

    div-float v13, v0, v10

    .line 440
    .local v13, "normPivotX":F
    iget v0, v9, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v0, p3, v0

    div-float v14, v0, v10

    .line 441
    .local v14, "normPivotY":F
    sub-float v0, v11, v13

    div-float v1, v10, v7

    mul-float v15, v0, v1

    .line 442
    .local v15, "offsetX":F
    sub-float v0, v12, v14

    div-float v1, v10, v7

    mul-float v16, v0, v1

    .line 443
    .local v16, "offsetY":F
    add-float v17, v13, v15

    .line 444
    .local v17, "centerX":F
    add-float v18, v14, v16

    .line 445
    .local v18, "centerY":F
    move/from16 v5, p5

    iput v5, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 446
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result v0

    return v0
.end method

.method setScaleAndCenter(FFFZI)Z
    .locals 2
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 452
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    return v0

    .line 462
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    .line 463
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v1, p4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 464
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq p5, v1, :cond_1

    .line 465
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 467
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMagnification[mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister(Z)V
    .locals 4
    .param p1, "delete"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 156
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->access$300(Lcom/android/server/accessibility/MagnificationController;IZ)V

    .line 159
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 160
    return-void
.end method

.method unregisterPending(Z)V
    .locals 1
    .param p1, "delete"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 171
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 174
    return-void
.end method

.method updateCurrentSpecWithOffsetsLocked(FF)Z
    .locals 4
    .param p1, "nonNormOffsetX"    # F
    .param p2, "nonNormOffsetY"    # F

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "changed":Z
    nop

    .line 540
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    move-result v2

    .line 539
    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 541
    .local v1, "offsetX":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 543
    const/4 v0, 0x1

    .line 545
    :cond_0
    nop

    .line 546
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    move-result v3

    .line 545
    invoke-static {p2, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 547
    .local v2, "offsetY":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v2, v3, Landroid/view/MagnificationSpec;->offsetY:F

    .line 549
    const/4 v0, 0x1

    .line 551
    :cond_1
    return v0
.end method

.method updateMagnificationRegion(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "magnified"    # Landroid/graphics/Region;

    .line 278
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v1, :cond_0

    .line 281
    monitor-exit v0

    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 285
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 288
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 294
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateMagnificationSpecLocked(FFF)Z
    .locals 5
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 483
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result p2

    .line 486
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result p3

    .line 489
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result p1

    .line 494
    :cond_2
    const/4 v0, 0x0

    .line 496
    .local v0, "changed":Z
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 497
    .local v1, "normScale":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    .line 498
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 499
    const/4 v0, 0x1

    .line 502
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float v4, p2, v1

    sub-float/2addr v2, v4

    .line 504
    .local v2, "nonNormOffsetX":F
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    mul-float v3, p3, v1

    sub-float/2addr v4, v3

    .line 506
    .local v4, "nonNormOffsetY":F
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 508
    if-eqz v0, :cond_4

    .line 509
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 512
    :cond_4
    return v0
.end method
