.class Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mPrimaryPointerId:I

.field private final mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/gestures/TouchState;

    .line 372
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    .line 373
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    .line 374
    return-void
.end method

.method private findPrimaryPointerId()I
    .locals 8

    .line 500
    const/4 v0, -0x1

    .line 501
    .local v0, "primaryPointerId":I
    const-wide v1, 0x7fffffffffffffffL

    .line 504
    .local v1, "minDownTime":J
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 505
    .local v3, "pointerIdBits":I
    :goto_0
    if-lez v3, :cond_1

    .line 506
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 507
    .local v4, "pointerId":I
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v3, v5

    .line 508
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->access$200(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide v5

    .line 509
    .local v5, "downPointerTime":J
    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    .line 510
    move-wide v1, v5

    .line 511
    move v0, v4

    .line 513
    .end local v4    # "pointerId":I
    .end local v5    # "downPointerTime":J
    :cond_0
    goto :goto_0

    .line 514
    :cond_1
    return v0
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 7
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 471
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 472
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 473
    .local v1, "pointerFlag":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 475
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 476
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v2, v2, v0

    .line 477
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 476
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->set(FFJ)V

    .line 479
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 480
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 4
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 489
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 490
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 491
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 492
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->clear()V

    .line 493
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne v2, v0, :cond_0

    .line 494
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 496
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 379
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    new-instance v2, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    aput-object v2, v1, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getPrimaryPointerId()I
    .locals 2

    .line 453
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 456
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .locals 2
    .param p1, "pointerId"    # I

    .line 448
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->access$200(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .locals 1
    .param p1, "pointerId"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->access$000(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .locals 1
    .param p1, "pointerId"    # I

    .line 440
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->access$100(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F

    move-result v0

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .line 423
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 424
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 392
    .local v0, "action":I
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 398
    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    .line 401
    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 395
    nop

    .line 409
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 525
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, "\nPrimary pointer id [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
