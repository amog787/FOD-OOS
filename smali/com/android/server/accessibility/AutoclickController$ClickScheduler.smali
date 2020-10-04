.class final Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickScheduler"
.end annotation


# static fields
.field private static final MOVEMENT_SLOPE:D = 20.0


# instance fields
.field private mActive:Z

.field private mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mDelay:I

.field private mEventPolicyFlags:I

.field private mHandler:Landroid/os/Handler;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mMetaState:I

.field private mScheduledClickTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final synthetic this$0:Lcom/android/server/accessibility/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;I)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .line 258
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 261
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 262
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 263
    iput p3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 264
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 265
    return-void
.end method

.method private cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "useAsAnchor"    # Z

    .line 358
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 361
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 362
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 364
    if-eqz p3, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 366
    .local v0, "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 368
    .end local v0    # "pointerIndex":I
    :cond_1
    return-void
.end method

.method private detectMovement(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 386
    return v1

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 389
    .local v0, "pointerIndex":I
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 390
    .local v2, "deltaX":F
    iget-object v3, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 391
    .local v3, "deltaY":F
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 392
    .local v4, "delta":D
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private rescheduleClick(I)V
    .locals 5
    .param p1, "delay"    # I

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 335
    .local v0, "clickTime":J
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 336
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 337
    return-void

    .line 340
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 345
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 347
    iget-object v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    return-void
.end method

.method private resetInternalState()V
    .locals 2

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 372
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 376
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 377
    return-void
.end method

.method private sendClick()V
    .locals 23

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AutoclickController;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 403
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 405
    .local v1, "pointerIndex":I
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 406
    new-array v2, v3, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 407
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v2, v4

    .line 410
    :cond_1
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v5, v5, v4

    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 412
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v2, :cond_2

    .line 413
    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 414
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v2, v4

    .line 416
    :cond_2
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v5, v4

    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 420
    .local v21, "now":J
    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v12, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v13, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    const/4 v14, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 422
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 423
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    .line 420
    move-wide/from16 v5, v21

    move-wide/from16 v7, v21

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 426
    .local v2, "downEvent":Landroid/view/MotionEvent;
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 427
    .local v4, "upEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 429
    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v3, v2, v2, v5}, Lcom/android/server/accessibility/AutoclickController;->access$001(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 430
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 432
    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    iget v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v3, v4, v4, v5}, Lcom/android/server/accessibility/AutoclickController;->access$101(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 433
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 434
    return-void

    .line 400
    .end local v1    # "pointerIndex":I
    .end local v2    # "downEvent":Landroid/view/MotionEvent;
    .end local v4    # "upEvent":Landroid/view/MotionEvent;
    .end local v21    # "now":J
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 306
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public run()V
    .locals 5

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 271
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 272
    iget-object v4, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->sendClick()V

    .line 277
    invoke-direct {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ClickScheduler: { active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, ", scheduledClickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, ", metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 293
    .local v0, "moved":Z
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    .line 295
    if-eqz v0, :cond_2

    .line 296
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    .line 298
    :cond_2
    return-void
.end method

.method public updateDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .line 322
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 323
    return-void
.end method

.method public updateMetaState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 313
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 314
    return-void
.end method
