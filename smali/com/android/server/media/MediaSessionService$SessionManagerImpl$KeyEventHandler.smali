.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyEventHandler"
.end annotation


# static fields
.field private static final KEY_TYPE_MEDIA:I = 0x0

.field private static final KEY_TYPE_VOLUME:I = 0x1


# instance fields
.field private mButtonDownFlag:Z

.field private mIsLongPressing:Z

.field private mKeyType:I

.field private mLongPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mMultiTapCount:I

.field private mMultiTapKeyCode:I

.field private mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p2, "keyType"    # I

    .line 2435
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mButtonDownFlag:Z

    .line 2436
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    .line 2437
    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 2419
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createCanceledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2419
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    .line 2419
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetMultiTapTrackingLocked()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/view/KeyEvent;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 2419
    invoke-direct/range {p0 .. p9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    return-void
.end method

.method private cancelTrackingIfNeeded(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZI)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z
    .param p10, "overriddenKeyEvents"    # I

    .line 2561
    move-object v0, p0

    move-object/from16 v10, p5

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 2562
    return-void

    .line 2565
    :cond_0
    invoke-direct {p0, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2566
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 2567
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2568
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2570
    :cond_1
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 2571
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    if-eq v1, v2, :cond_2

    .line 2572
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->runExistingMultiTapRunnableLocked()V

    .line 2574
    :cond_2
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    .line 2575
    return-void

    .line 2578
    :cond_3
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-eqz v1, :cond_7

    .line 2579
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2580
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 2581
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    .line 2582
    invoke-direct {p0, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 2583
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 2584
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->runExistingMultiTapRunnableLocked()V

    .line 2586
    :cond_4
    and-int/lit8 v1, p10, 0x8

    if-nez v1, :cond_7

    .line 2587
    iget v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v11, 0x0

    if-ne v1, v2, :cond_5

    .line 2588
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v1

    if-nez v1, :cond_7

    .line 2589
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2591
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    goto :goto_0

    .line 2593
    :cond_5
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2594
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2596
    iput-object v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    goto :goto_0

    .line 2599
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-le v1, v2, :cond_7

    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    if-nez v1, :cond_7

    .line 2600
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    .line 2603
    :cond_7
    :goto_0
    return-void
.end method

.method private createCanceledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2688
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 2689
    .local v0, "upEvent":Landroid/view/KeyEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1
.end method

.method private createLongPressTimeoutRunnable(Landroid/view/KeyEvent;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2670
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Landroid/view/KeyEvent;)V

    return-object v0
.end method

.method private dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z

    .line 2706
    move-object v0, p0

    const/4 v1, 0x0

    move-object/from16 v11, p5

    invoke-static {v11, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 2707
    .local v1, "downEvent":Landroid/view/KeyEvent;
    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2708
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v3, p1

    move-object/from16 v4, p7

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object v8, v1

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 2710
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_0

    .line 2713
    :cond_0
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object v7, v1

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2715
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2718
    :goto_0
    return-void
.end method

.method private handleLongPressLocked(Landroid/view/KeyEvent;ZI)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "overriddenKeyEvents"    # I

    .line 2639
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2640
    invoke-static {p3}, Lcom/android/server/media/MediaKeyDispatcher;->isLongPressOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2641
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaKeyDispatcher;->onLongPress(Landroid/view/KeyEvent;)V

    .line 2643
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2644
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2646
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 2647
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2648
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createLongPressTimeoutRunnable(Landroid/view/KeyEvent;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 2650
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$5500()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2652
    :cond_2
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    goto :goto_0

    .line 2655
    :cond_3
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2656
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2657
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 2659
    :cond_4
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 2660
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 2661
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2663
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-static {v0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5700(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)V

    .line 2664
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetLongPressTracking()V

    .line 2667
    :cond_6
    :goto_0
    return-void
.end method

.method private isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2699
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2700
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2699
    :goto_0
    return v0
.end method

.method private isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2694
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2695
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2694
    :goto_0
    return v1
.end method

.method private needTracking(Landroid/view/KeyEvent;I)Z
    .locals 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "overriddenKeyEvents"    # I

    .line 2606
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2607
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    .line 2608
    return v1

    .line 2609
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2610
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 2611
    :cond_1
    return v1

    .line 2614
    :cond_2
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 2615
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v2, v0, :cond_3

    .line 2616
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v2

    if-nez v2, :cond_4

    .line 2617
    return v1

    .line 2619
    :cond_3
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2620
    return v1

    .line 2623
    :cond_4
    return v0
.end method

.method private onTripleTap(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 2761
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->resetMultiTapTrackingLocked()V

    .line 2762
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaKeyDispatcher;->onTripleTap(Landroid/view/KeyEvent;)V

    .line 2763
    return-void
.end method

.method private resetLongPressTracking()V
    .locals 2

    .line 2682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2683
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2684
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mLongPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 2685
    return-void
.end method

.method private resetMultiTapTrackingLocked()V
    .locals 2

    .line 2632
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    .line 2633
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2634
    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    .line 2635
    return-void
.end method

.method private runExistingMultiTapRunnableLocked()V
    .locals 2

    .line 2627
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2628
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2629
    return-void
.end method

.method private shouldTrackForMultipleTapsLocked(I)Z
    .locals 1
    .param p1, "overriddenKeyEvents"    # I

    .line 2553
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2554
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2555
    invoke-static {p1}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2553
    :goto_1
    return v0
.end method


# virtual methods
.method createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z
    .param p10, "singleTapOverridden"    # Z
    .param p11, "doubleTapOverridden"    # Z

    .line 2741
    new-instance v13, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p5

    move/from16 v4, p10

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;ZLjava/lang/String;IIZZLjava/lang/String;IZ)V

    return-object v13
.end method

.method createSingleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZ)Ljava/lang/Runnable;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z
    .param p10, "overridden"    # Z

    .line 2723
    new-instance v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p10

    move-object/from16 v3, p5

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;Ljava/lang/String;IIZZLjava/lang/String;IZ)V

    return-object v12
.end method

.method getButtonDownFlag()Z
    .locals 1

    .line 2450
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mButtonDownFlag:Z

    return v0
.end method

.method handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "stream"    # I
    .param p9, "musicOnly"    # Z

    .line 2464
    move-object/from16 v12, p0

    move-object/from16 v13, p5

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2465
    return-void

    .line 2468
    :cond_0
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    const/4 v11, 0x0

    if-nez v0, :cond_1

    move v0, v11

    goto :goto_0

    .line 2470
    :cond_1
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2469
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaKeyDispatcher;->getOverriddenKeyEvents()Ljava/util/Map;

    move-result-object v0

    .line 2470
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    move v14, v0

    .line 2471
    .local v14, "overriddenKeyEvents":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->cancelTrackingIfNeeded(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZI)V

    .line 2473
    invoke-direct {v12, v13, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->needTracking(Landroid/view/KeyEvent;I)Z

    move-result v0

    const/4 v15, 0x1

    if-nez v0, :cond_4

    .line 2474
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mKeyType:I

    if-ne v0, v15, :cond_2

    .line 2475
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_1

    .line 2480
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v15, :cond_3

    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_3

    iget-boolean v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mButtonDownFlag:Z

    if-ne v0, v15, :cond_3

    .line 2484
    const-string v0, "MediaSessionService"

    const-string v1, "FirstDownKeyEvent is null when action up!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    invoke-virtual {v12, v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->setButtonDownFlag(Z)V

    .line 2489
    :cond_3
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$5000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 2492
    :goto_1
    return-void

    .line 2495
    :cond_4
    invoke-direct {v12, v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstDownKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2496
    iput-object v13, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2497
    iput-boolean v11, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2498
    return-void

    .line 2503
    :cond_5
    invoke-direct {v12, v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->isFirstLongPressKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2504
    iput-boolean v15, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    .line 2506
    :cond_6
    iget-boolean v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mIsLongPressing:Z

    if-eqz v0, :cond_7

    .line 2507
    move/from16 v11, p6

    invoke-direct {v12, v13, v11, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleLongPressLocked(Landroid/view/KeyEvent;ZI)V

    .line 2508
    return-void

    .line 2511
    :cond_7
    move/from16 v11, p6

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v15, :cond_e

    .line 2512
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mTrackingFirstDownKeyEvent:Landroid/view/KeyEvent;

    .line 2513
    invoke-direct {v12, v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->shouldTrackForMultipleTapsLocked(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2514
    iget v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    if-nez v0, :cond_9

    .line 2515
    nop

    .line 2518
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v10

    .line 2515
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createSingleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2519
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2520
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2521
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2522
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    move-object v0, v13

    goto/16 :goto_2

    .line 2524
    :cond_8
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2525
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$5300()I

    move-result v2

    int-to-long v2, v2

    .line 2524
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2526
    iput v15, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    .line 2527
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapKeyCode:I

    move-object v0, v13

    goto/16 :goto_2

    .line 2529
    :cond_9
    const/4 v10, 0x2

    if-ne v0, v15, :cond_b

    .line 2530
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2531
    nop

    .line 2533
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isSingleTapOverridden(I)Z

    move-result v15

    .line 2534
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isDoubleTapOverridden(I)Z

    move-result v16

    .line 2531
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move v13, v10

    move v10, v15

    move/from16 v11, v16

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2535
    invoke-static {v14}, Lcom/android/server/media/MediaKeyDispatcher;->isTripleTapOverridden(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2536
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$5300()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2537
    iput v13, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapCount:I

    move-object/from16 v0, p5

    goto :goto_2

    .line 2539
    :cond_a
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    move-object/from16 v0, p5

    goto :goto_2

    .line 2541
    :cond_b
    move v13, v10

    if-ne v0, v13, :cond_c

    .line 2542
    iget-object v0, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mMultiTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2543
    move-object/from16 v0, p5

    invoke-direct {v12, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->onTripleTap(Landroid/view/KeyEvent;)V

    goto :goto_2

    .line 2541
    :cond_c
    move-object/from16 v0, p5

    goto :goto_2

    .line 2546
    :cond_d
    move-object v0, v13

    invoke-direct/range {p0 .. p9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->dispatchDownAndUpKeyEventsLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    goto :goto_2

    .line 2511
    :cond_e
    move-object v0, v13

    .line 2550
    :goto_2
    return-void
.end method

.method handleMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    .line 2441
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2443
    return-void
.end method

.method handleVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "stream"    # I
    .param p8, "musicOnly"    # Z

    .line 2457
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->handleKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    .line 2459
    return-void
.end method

.method setButtonDownFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 2447
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->mButtonDownFlag:Z

    .line 2448
    return-void
.end method
