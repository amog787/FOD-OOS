.class final Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateInputForAllWindowsConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddNavInputConsumerHandle:Z

.field private mAddPipInputConsumerHandle:Z

.field private mAddRecentsAnimationInputConsumerHandle:Z

.field private mAddWallpaperInputConsumerHandle:Z

.field mInDrag:Z

.field final mInvalidInputWindow:Landroid/view/InputWindowHandle;

.field mNavInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 2

    .line 439
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance p1, Landroid/view/InputWindowHandle;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInvalidInputWindow:Landroid/view/InputWindowHandle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p2, "x1"    # Lcom/android/server/wm/InputMonitor$1;

    .line 439
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .param p1, "x1"    # Z

    .line 439
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V

    return-void
.end method

.method private updateInputWindows(Z)V
    .locals 5
    .param p1, "inDrag"    # Z

    .line 457
    const-wide/16 v0, 0x20

    const-string v2, "updateInputWindows"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "nav_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mNavInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 460
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "pip_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 461
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "wallpaper_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 462
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "recents_animation_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 464
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mNavInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddNavInputConsumerHandle:Z

    .line 465
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 466
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 467
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 469
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 470
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wm/InputMonitor;->access$1202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 471
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    .line 472
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1300(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 474
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V

    .line 476
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1300(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 479
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1400(Lcom/android/server/wm/InputMonitor;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 480
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1300(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 481
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1300(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 484
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .locals 19
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 490
    .local v10, "inputChannel":Landroid/view/InputChannel;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 491
    .local v11, "inputWindowHandle":Landroid/view/InputWindowHandle;
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 492
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v12

    .line 493
    .local v12, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v2, 0x0

    if-eqz v12, :cond_0

    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 494
    invoke-virtual {v12, v3}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v13, v3

    .line 495
    .local v13, "shouldApplyRecentsInputConsumer":Z
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 496
    .local v14, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v15

    .line 497
    .local v15, "isVisible":Z
    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    iget-boolean v3, v9, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_a

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v13, :cond_1

    goto/16 :goto_3

    .line 519
    :cond_1
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 520
    .local v7, "flags":I
    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 521
    .local v6, "privateFlags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    .line 523
    .local v5, "hasFocus":Z
    iget-boolean v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    if-eqz v3, :cond_2

    if-eqz v13, :cond_2

    .line 524
    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v12, v3, v5}, Lcom/android/server/wm/RecentsAnimationController;->updateInputConsumerForApp(Landroid/view/InputWindowHandle;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 526
    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mRecentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 527
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 531
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    iget-boolean v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    if-eqz v3, :cond_3

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 534
    .local v3, "rootTask":Lcom/android/server/wm/Task;
    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v4, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 535
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    .line 534
    invoke-virtual {v4, v8}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 537
    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v8, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v8}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Lcom/android/server/wm/InputConsumerImpl;->reparent(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 538
    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mPipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v8, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v8}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    const v1, 0x7ffffffe

    invoke-virtual {v4, v8, v1}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;I)V

    .line 539
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 543
    .end local v3    # "rootTask":Lcom/android/server/wm/Task;
    :cond_3
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddNavInputConsumerHandle:Z

    if-eqz v1, :cond_4

    .line 544
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mNavInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 545
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddNavInputConsumerHandle:Z

    .line 548
    :cond_4
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    if-eqz v1, :cond_5

    .line 549
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 551
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 552
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 556
    :cond_5
    and-int/lit16 v1, v6, 0x800

    if-eqz v1, :cond_6

    .line 557
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$1202(Lcom/android/server/wm/InputMonitor;Z)Z

    goto :goto_1

    .line 556
    :cond_6
    const/4 v3, 0x1

    .line 559
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 560
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 561
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$1200(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-nez v1, :cond_7

    move v8, v3

    goto :goto_2

    :cond_7
    move v8, v2

    .line 565
    .local v8, "hasWallpaper":Z
    :goto_2
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInDrag:Z

    if-eqz v1, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_8

    .line 566
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/DragDropController;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 569
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    move-object v2, v11

    move-object/from16 v3, p1

    move v4, v7

    move/from16 v16, v5

    .end local v5    # "hasFocus":Z
    .local v16, "hasFocus":Z
    move v5, v14

    move/from16 v17, v6

    .end local v6    # "privateFlags":I
    .local v17, "privateFlags":I
    move v6, v15

    move/from16 v18, v7

    .end local v7    # "flags":I
    .local v18, "flags":I
    move/from16 v7, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/InputMonitor;->populateInputWindowHandle(Landroid/view/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 573
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    iget-object v2, v11, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 574
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getKeyInterceptionInfo()Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v3

    .line 573
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_9

    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 584
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 585
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 584
    invoke-virtual {v1, v2, v11}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 588
    :cond_9
    return-void

    .line 505
    .end local v8    # "hasWallpaper":Z
    .end local v16    # "hasFocus":Z
    .end local v17    # "privateFlags":I
    .end local v18    # "flags":I
    :cond_a
    :goto_3
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_b

    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 509
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInvalidInputWindow:Landroid/view/InputWindowHandle;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14, v15}, Lcom/android/server/wm/InputMonitor;->access$1500(Landroid/view/InputWindowHandle;Ljava/lang/String;IZ)V

    .line 510
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 511
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInvalidInputWindow:Landroid/view/InputWindowHandle;

    .line 510
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 513
    return-void

    .line 516
    :cond_b
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 439
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
