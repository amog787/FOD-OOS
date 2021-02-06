.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewportDraggingState"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field mZoomedInBeforeDrag:Z

.field final synthetic this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 512
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 564
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 521
    .local v0, "action":I
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto :goto_1

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 524
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v2, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 526
    goto :goto_1

    .line 528
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 532
    .local v2, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 533
    .local v9, "eventY":F
    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v3, v3, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 534
    invoke-static {v4}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v4

    .line 533
    invoke-virtual {v3, v4, v2, v9}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v3, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v4

    iget-boolean v7, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    const/4 v8, 0x0

    move v5, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/MagnificationController;->setCenter(IFFZI)Z

    .line 538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_0

    .line 540
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 543
    .end local v2    # "eventX":F
    .end local v9    # "eventY":F
    :goto_0
    goto :goto_1

    .line 529
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should have one pointer down."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$400(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V

    .line 548
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 549
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v2, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 551
    nop

    .line 559
    :goto_1
    return-void

    .line 555
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewportDraggingState{mZoomedInBeforeDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastMoveOutsideMagnifiedRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
