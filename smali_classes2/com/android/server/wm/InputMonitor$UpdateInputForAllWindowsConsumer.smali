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
.field inDrag:Z

.field private mAddInputConsumerHandle:Z

.field private mAddPipInputConsumerHandle:Z

.field private mAddRecentsAnimationInputConsumerHandle:Z

.field private mAddWallpaperInputConsumerHandle:Z

.field final mInvalidInputWindow:Landroid/view/InputWindowHandle;

.field navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;

.field wallpaperController:Lcom/android/server/wm/WallpaperController;

.field wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 2

    .line 401
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance p1, Landroid/view/InputWindowHandle;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInvalidInputWindow:Landroid/view/InputWindowHandle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p2, "x1"    # Lcom/android/server/wm/InputMonitor$1;

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .param p1, "x1"    # Z

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V

    return-void
.end method

.method private updateInputWindows(Z)V
    .locals 6
    .param p1, "inDrag"    # Z

    .line 419
    const-wide/16 v0, 0x20

    const-string v2, "updateInputWindows"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "nav_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 422
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "pip_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 423
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "wallpaper_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 424
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "recents_animation_input_consumer"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 426
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddInputConsumerHandle:Z

    .line 427
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 428
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 429
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 431
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 432
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2, v4}, Lcom/android/server/wm/InputMonitor;->access$1002(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 433
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    .line 434
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 436
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/InputMonitor;->resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V

    .line 438
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 441
    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    if-eqz v2, :cond_4

    .line 442
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;I)V

    .line 445
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1200(Lcom/android/server/wm/InputMonitor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 446
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_4

    .line 448
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 449
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 452
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 453
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .locals 17
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 458
    .local v10, "inputChannel":Landroid/view/InputChannel;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 459
    .local v11, "inputWindowHandle":Landroid/view/InputWindowHandle;
    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    iget-boolean v1, v9, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_9

    .line 460
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 476
    :cond_0
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 477
    .local v12, "flags":I
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 478
    .local v13, "privateFlags":I
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 479
    .local v14, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v15

    .line 480
    .local v15, "hasFocus":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v16

    .line 482
    .local v16, "isVisible":Z
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 484
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 485
    .local v1, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_1

    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 486
    invoke-virtual {v1, v3}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v1, v3, v15}, Lcom/android/server/wm/RecentsAnimationController;->updateInputConsumerForApp(Landroid/view/InputWindowHandle;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 490
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddRecentsAnimationInputConsumerHandle:Z

    .line 495
    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    if-eqz v1, :cond_2

    .line 498
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 499
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 502
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 503
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 504
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 505
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddPipInputConsumerHandle:Z

    .line 509
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddInputConsumerHandle:Z

    if-eqz v1, :cond_3

    iget v1, v11, Landroid/view/InputWindowHandle;->layer:I

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v3, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v3, v3, Landroid/view/InputWindowHandle;->layer:I

    if-gt v1, v3, :cond_3

    .line 511
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 512
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddInputConsumerHandle:Z

    .line 515
    :cond_3
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    if-eqz v1, :cond_4

    .line 516
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 518
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lcom/android/server/wm/InputConsumerImpl;->show(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 519
    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mAddWallpaperInputConsumerHandle:Z

    .line 523
    :cond_4
    and-int/lit16 v1, v13, 0x800

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 524
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$1002(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 526
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_6

    and-int/lit16 v1, v13, 0x400

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 528
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-nez v1, :cond_6

    move v8, v3

    goto :goto_0

    :cond_6
    move v8, v2

    .line 532
    .local v8, "hasWallpaper":Z
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    if-eqz v1, :cond_7

    if-eqz v16, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_7

    .line 533
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/DragDropController;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 536
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    move-object v2, v11

    move-object/from16 v3, p1

    move v4, v12

    move v5, v14

    move/from16 v6, v16

    move v7, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/InputMonitor;->populateInputWindowHandle(Landroid/view/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 544
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_8

    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 546
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v11}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 549
    :cond_8
    return-void

    .line 467
    .end local v8    # "hasWallpaper":Z
    .end local v12    # "flags":I
    .end local v13    # "privateFlags":I
    .end local v14    # "type":I
    .end local v15    # "hasFocus":Z
    .end local v16    # "isVisible":Z
    :cond_9
    :goto_1
    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_a

    iget-object v1, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 469
    iget-object v1, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->mInvalidInputWindow:Landroid/view/InputWindowHandle;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 473
    :cond_a
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 401
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
