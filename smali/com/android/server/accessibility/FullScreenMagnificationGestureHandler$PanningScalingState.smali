.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanningScalingState"
.end annotation


# instance fields
.field mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaling:Z

.field final mScalingThreshold:F

.field private final mScrollGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    .line 392
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 389
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 393
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 394
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500bf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 397
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    .line 398
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p2, p0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 399
    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 400
    new-instance v1, Landroid/view/GestureDetector;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p2, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 491
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 493
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 407
    .local v0, "action":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    if-ne v1, v2, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    goto :goto_0

    .line 413
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 417
    :cond_2
    :goto_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 13
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 442
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 443
    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    .line 445
    return v2

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    sub-float/2addr v0, v3

    .line 448
    .local v0, "deltaScale":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScalingThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    .line 449
    return v1

    .line 452
    .end local v0    # "deltaScale":F
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v0

    .line 453
    .local v0, "initialScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v0

    .line 458
    .local v2, "targetScale":F
    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    .line 460
    const/high16 v3, 0x41000000    # 8.0f

    .local v3, "scale":F
    goto :goto_1

    .line 461
    .end local v3    # "scale":F
    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    cmpg-float v3, v2, v0

    if-gez v3, :cond_4

    .line 463
    const/high16 v3, 0x40000000    # 2.0f

    .restart local v3    # "scale":F
    goto :goto_1

    .line 468
    .end local v3    # "scale":F
    :cond_4
    move v3, v2

    .line 471
    .restart local v3    # "scale":F
    :goto_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v11

    .line 472
    .local v11, "pivotX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v12

    .line 474
    .local v12, "pivotY":F
    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v4, v4, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v5, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v5}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, v3

    move v7, v11

    move v8, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/MagnificationController;->setScale(IFFFZI)Z

    .line 476
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 481
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 486
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->clear()V

    .line 487
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 428
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 429
    return v2

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, p4, v3}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(IFFI)V

    .line 437
    return v2
.end method

.method public persistScaleAndTransitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 420
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->persistScale()V

    .line 421
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->clear()V

    .line 422
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 423
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingState{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
