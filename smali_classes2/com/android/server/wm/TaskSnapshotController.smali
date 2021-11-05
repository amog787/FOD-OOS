.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighResTaskSnapshotScale:F

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 102
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 125
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 126
    new-instance v1, Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 127
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 136
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 35
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 492
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 493
    .local v1, "topChild":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 494
    return-object v2

    .line 496
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 497
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 498
    return-object v2

    .line 500
    :cond_1
    nop

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 500
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 502
    .local v4, "color":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 503
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v6

    .line 504
    .local v6, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    new-instance v7, Landroid/view/InsetsState;

    .line 505
    invoke-virtual {v6, v3}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 506
    .local v7, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wm/TaskSnapshotController;->mergeInsetsSources(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 507
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v8

    .line 508
    .local v8, "systemBarInsets":Landroid/graphics/Rect;
    new-instance v16, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v13

    iget v14, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    move-object/from16 v9, v16

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    .line 511
    .local v9, "decorPainter":Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 512
    .local v10, "taskWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 513
    .local v11, "taskHeight":I
    int-to-float v12, v10

    iget v13, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 514
    .local v12, "width":I
    int-to-float v14, v11

    mul-float/2addr v14, v13

    float-to-int v13, v14

    .line 516
    .local v13, "height":I
    const-string v14, "TaskSnapshotController"

    invoke-static {v14, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v14

    .line 517
    .local v14, "node":Landroid/graphics/RenderNode;
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v15, v12, v13}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 518
    invoke-virtual {v14, v15}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 519
    invoke-virtual {v14, v12, v13}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v15

    .line 520
    .local v15, "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v15, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 521
    invoke-virtual {v9, v8}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 522
    invoke-virtual {v9, v15, v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 523
    invoke-virtual {v14, v15}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 524
    invoke-static {v14, v12, v13}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 525
    .local v16, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_2

    .line 526
    return-object v2

    .line 531
    :cond_2
    new-instance v2, Landroid/app/ActivityManager$TaskSnapshot;

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v32, v4

    .end local v4    # "color":I
    .local v32, "color":I
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 533
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v21

    .line 534
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v22

    move-object/from16 v33, v1

    .end local v1    # "topChild":Lcom/android/server/wm/ActivityRecord;
    .local v33, "topChild":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 535
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v24

    move-object/from16 v34, v5

    .end local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v34, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 536
    invoke-direct {v0, v3}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v29

    .line 538
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v17, v2

    move-object/from16 v20, v4

    move/from16 v23, v1

    move-object/from16 v25, v5

    invoke-direct/range {v17 .. v31}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;ZZIIZ)V

    .line 531
    return-object v2
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 253
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$eY4HzOpxvBAchhbObndnIDQqsVs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$eY4HzOpxvBAchhbObndnIDQqsVs;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/WindowState;

    .line 445
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 446
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 447
    return-object v0
.end method

.method static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "frame"    # Landroid/graphics/Rect;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 644
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZLandroid/view/DisplayCutout;IIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 648
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    .line 647
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 644
    return-object v0
.end method

.method private getSystemUiVisibility(Lcom/android/server/wm/Task;)I
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 624
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 625
    .local v0, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    .line 627
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 628
    .local v1, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v2

    return v2

    .line 631
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 165
    return-void
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findAppTokenForSnapshot$1(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 254
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 255
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static mergeInsetsSources(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .locals 2
    .param p0, "base"    # Landroid/view/InsetsState;
    .param p1, "other"    # Landroid/view/InsetsState;

    .line 635
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 636
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 637
    .local v1, "source":Landroid/view/InsetsSource;
    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p0, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 635
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "type":I
    :cond_1
    return-void
.end method

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .line 451
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 452
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 453
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 454
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 451
    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private snapshotTasks(Landroid/util/ArraySet;Z)V
    .locals 9
    .param p2, "allowSnapshotHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 182
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_8

    .line 183
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 185
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 186
    .local v3, "snapshotHome":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .local v4, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_2

    .line 189
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v4

    if-eqz v4, :cond_4

    if-eq v4, v1, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 199
    const/4 v4, 0x0

    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_2

    .line 191
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_2
    goto :goto_4

    .line 193
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 194
    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_2

    .line 196
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 197
    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    nop

    .line 203
    :goto_2
    if-eqz v4, :cond_7

    .line 204
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 205
    .local v5, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 210
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 212
    if-nez v3, :cond_7

    .line 213
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v8, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 214
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_4

    .line 206
    :cond_6
    :goto_3
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "snapshotHome":Z
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v5    # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_8
    return-void
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 175
    return-void
.end method

.method public clearSnapshotCache()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotCache;->clearRunningCache()V

    .line 236
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F

    .line 373
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F
    .param p3, "pixelFormat"    # I
    .param p4, "outTaskSize"    # Landroid/graphics/Point;

    .line 379
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 380
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No surface control for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    return-object v1

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 389
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 390
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 391
    new-array v4, v3, [Landroid/view/SurfaceControl;

    .line 392
    .local v4, "excludeLayers":[Landroid/view/SurfaceControl;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_0

    .line 394
    .end local v4    # "excludeLayers":[Landroid/view/SurfaceControl;
    :cond_2
    new-array v4, v2, [Landroid/view/SurfaceControl;

    .line 396
    .restart local v4    # "excludeLayers":[Landroid/view/SurfaceControl;
    :goto_0
    nop

    .line 398
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 397
    invoke-static {v2, v5, p2, p3, v4}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v2

    .line 400
    .local v2, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz p4, :cond_3

    .line 401
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, p4, Landroid/graphics/Point;->x:I

    .line 402
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, p4, Landroid/graphics/Point;->y:I

    .line 404
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    goto :goto_1

    .line 405
    :cond_4
    move-object v5, v1

    :goto_1
    nop

    .line 406
    .local v5, "buffer":Landroid/graphics/GraphicBuffer;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    if-le v6, v3, :cond_6

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    if-gt v6, v3, :cond_5

    goto :goto_2

    .line 409
    :cond_5
    return-object v2

    .line 407
    :cond_6
    :goto_2
    return-object v1
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "builder"    # Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 355
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 356
    .local v0, "taskSize":Landroid/graphics/Point;
    sget v1, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpSnapshotScaleFraction:F

    .line 364
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->getPixelFormat()I

    move-result v2

    .line 356
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    .line 366
    .local v1, "taskSnapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    invoke-virtual {p2, v0}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 367
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHighResTaskSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 462
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 463
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 464
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 465
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 469
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 473
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "restoreFromDisk"    # Z
    .param p4, "isLowResolution"    # Z

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 228
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->enableLowResSnapshots()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 227
    :goto_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 477
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 478
    .local v0, "topChild":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    const/4 v1, 0x2

    return v1

    .line 480
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    const/4 v1, 0x1

    return v1

    .line 483
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$screenTurningOff$2$TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 599
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_0
    return-void
.end method

.method public synthetic lambda$screenTurningOff$3$TaskSnapshotController(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 597
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 598
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$pF831VjVO7J7eXZhalKp1CJKNC4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$pF831VjVO7J7eXZhalKp1CJKNC4;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 605
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 606
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v1

    .line 607
    .local v1, "allowSnapshotHome":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 608
    .end local v1    # "allowSnapshotHome":Z
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 612
    if-eqz p1, :cond_0

    .line 614
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 616
    :cond_0
    return-void

    .line 608
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .end local p1    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 612
    .restart local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .restart local p1    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 614
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 615
    :cond_1
    throw v0
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2
    .param p1, "appWindowToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 150
    if-nez p2, :cond_0

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 153
    :cond_0
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 558
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 553
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 546
    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 143
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 144
    return-void
.end method

.method prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/app/ActivityManager$TaskSnapshot$Builder;)Z
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I
    .param p3, "builder"    # Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 281
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    return v2

    .line 286
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 287
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_3

    .line 288
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_2

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. No visible windows for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_2
    return v2

    .line 293
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasCommittedReparentToAnimationLeash()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 294
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_4

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. App is animating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_4
    return v2

    .line 300
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 301
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_6

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to take screenshot. No main window for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v2

    .line 305
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 306
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v4, :cond_7

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip taking screenshot. App has fixed rotation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_7
    return v2

    .line 313
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setId(J)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 315
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 324
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mIsQuickReplyApp:Z

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    move v4, v2

    goto :goto_1

    :cond_a
    :goto_0
    move v4, v1

    .line 330
    .local v4, "isWindowTranslucent":Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    move v5, v1

    goto :goto_2

    :cond_b
    move v5, v2

    .line 332
    .local v5, "isShowWallpaper":Z
    :goto_2
    if-nez p2, :cond_e

    .line 334
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 333
    invoke-virtual {v6}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v4, :cond_c

    if-nez v5, :cond_d

    .line 335
    :cond_c
    const/4 v6, 0x4

    goto :goto_3

    .line 336
    :cond_d
    move v6, v1

    :goto_3
    move p2, v6

    .line 339
    :cond_e
    invoke-static {p2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 340
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_f

    if-eqz v4, :cond_10

    :cond_f
    move v2, v1

    goto :goto_4

    :cond_10
    nop

    .line 342
    .local v2, "isTranslucent":Z
    :goto_4
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v6}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 343
    invoke-virtual {p3, p2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setPixelFormat(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 344
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 345
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p3, v6}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setOrientation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 346
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setRotation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 347
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setWindowingMode(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 348
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setSystemUiVisibility(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 349
    return v1
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 1
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 568
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 569
    return-void
.end method

.method removeSnapshotCache(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    .line 562
    return-void
.end method

.method screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 584
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    if-eqz p1, :cond_0

    .line 589
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 590
    :cond_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Tj7bQvjfkzsOjJOdJXBpqCZnW1Q;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$Tj7bQvjfkzsOjJOdJXBpqCZnW1Q;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method setPersisterPaused(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 578
    return-void
.end method

.method snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshotTask(Lcom/android/server/wm/Task;I)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I

    .line 419
    new-instance v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskSnapshot$Builder;-><init>()V

    .line 421
    .local v0, "builder":Landroid/app/ActivityManager$TaskSnapshot$Builder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/app/ActivityManager$TaskSnapshot$Builder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 423
    return-object v2

    .line 426
    :cond_0
    nop

    .line 427
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    .line 429
    .local v1, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v1, :cond_1

    .line 431
    return-object v2

    .line 433
    :cond_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setSnapshot(Landroid/graphics/GraphicBuffer;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 434
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 435
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->build()Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    return-object v2
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 179
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 140
    return-void
.end method
