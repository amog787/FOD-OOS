.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_NONE:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_REAL:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mFullSnapshotScale:F

.field private final mHandler:Landroid/os/Handler;

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

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 118
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 119
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 120
    new-instance v0, Lcom/android/server/wm/TaskSnapshotLoader;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 121
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    .line 130
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 25
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 423
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 424
    .local v1, "topChild":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 425
    return-object v2

    .line 427
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 428
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 429
    return-object v2

    .line 431
    :cond_1
    nop

    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 431
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 433
    .local v4, "color":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 434
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v12, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v10

    iget v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;F)V

    .line 437
    .local v6, "decorPainter":Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 438
    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 440
    .local v8, "height":I
    const-string v9, "TaskSnapshotController"

    invoke-static {v9, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v9

    .line 441
    .local v9, "node":Landroid/graphics/RenderNode;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v7, v8}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 442
    invoke-virtual {v9, v10}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 443
    invoke-virtual {v9, v7, v8}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v10

    .line 444
    .local v10, "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v10, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 445
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 446
    invoke-virtual {v6, v10, v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 447
    invoke-virtual {v9, v10}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 448
    invoke-static {v9, v7, v8}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 449
    .local v11, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v11, :cond_2

    .line 450
    return-object v2

    .line 455
    :cond_2
    new-instance v2, Landroid/app/ActivityManager$TaskSnapshot;

    iget-object v13, v1, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v14

    .line 456
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v15

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    .line 457
    invoke-direct {v0, v3}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v18

    move-object/from16 v24, v1

    .end local v1    # "topChild":Lcom/android/server/wm/AppWindowToken;
    .local v24, "topChild":Lcom/android/server/wm/AppWindowToken;
    iget v1, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    const/16 v20, 0x0

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v21

    .line 459
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v16, v12

    move-object v12, v2

    move/from16 v19, v1

    invoke-direct/range {v12 .. v23}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 455
    return-object v2
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/AppWindowToken;
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 229
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 230
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 231
    .local v2, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isSurfaceShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_0

    .line 233
    goto :goto_1

    .line 235
    :cond_0
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    .line 241
    .local v3, "hasVisibleChild":Z
    if-eqz v3, :cond_1

    .line 242
    return-object v2

    .line 229
    .end local v2    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "hasVisibleChild":Z
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/WindowState;

    .line 376
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 377
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 378
    return-object v0
.end method

.method private getSystemUiVisibility(Lcom/android/server/wm/Task;)I
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 529
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 530
    .local v0, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    .line 532
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 533
    .local v1, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1

    .line 534
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v2

    return v2

    .line 536
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
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 159
    return-void
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 239
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

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .line 382
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 383
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 384
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 385
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .locals 1

    .line 370
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

.method private snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 23
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 272
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "Attempted to take screenshot while display was off."

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    return-object v4

    .line 278
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 279
    .local v2, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_3

    .line 280
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_2

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to take screenshot. No visible windows for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_2
    return-object v4

    .line 285
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 286
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_4

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to take screenshot. App is animating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_4
    return-object v4

    .line 292
    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    .line 293
    .local v5, "isLowRamDevice":Z
    if-eqz v5, :cond_6

    .line 294
    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedScale()F

    move-result v6

    goto :goto_0

    .line 301
    :cond_6
    sget v6, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpSnapshotScaleFraction:F

    :goto_0
    move v15, v6

    .line 304
    .local v15, "scaleFraction":F
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v18

    .line 305
    .local v18, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v18, :cond_7

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to take screenshot. No main window for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-object v4

    .line 312
    :cond_7
    nop

    .line 313
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 315
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 312
    invoke-static {v1, v6, v7, v8}, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->updateTaskSnapshotOrientation(Lcom/android/server/wm/Task;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v19

    .line 319
    .local v19, "newOri":I
    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 327
    invoke-static {v1, v15, v6}, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->createTaskSnapshot(Lcom/android/server/wm/Task;FLandroid/graphics/Rect;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v20

    .line 330
    .local v20, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v20, :cond_9

    .line 331
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v6, :cond_8

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to take screenshot for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_8
    return-object v4

    .line 344
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v4, :cond_b

    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    move v3, v6

    goto :goto_2

    :cond_b
    :goto_1
    move v3, v7

    .line 350
    .local v3, "isWindowTranslucent":Z
    :goto_2
    new-instance v4, Landroid/app/ActivityManager$TaskSnapshot;

    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual/range {v20 .. v20}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v9

    .line 357
    invoke-virtual/range {v20 .. v20}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    .line 363
    invoke-static/range {v18 .. v18}, Lcom/android/server/wm/OpTaskSnapshotControllerInjector;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v14, 0x1

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v16

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v17

    .line 366
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    move/from16 v21, v6

    goto :goto_4

    :cond_d
    :goto_3
    move/from16 v21, v7

    :goto_4
    move-object v6, v4

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move/from16 v10, v19

    move v12, v5

    move v13, v15

    move/from16 v22, v15

    .end local v15    # "scaleFraction":F
    .local v22, "scaleFraction":F
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v21

    invoke-direct/range {v6 .. v17}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 350
    return-object v4
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 169
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F

    .line 251
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 252
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No surface control for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-object v1

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 259
    nop

    .line 261
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 260
    invoke-static {v0, v2, p2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    .line 262
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    goto :goto_0

    .line 263
    :cond_2
    move-object v2, v1

    :goto_0
    nop

    .line 264
    .local v2, "buffer":Landroid/graphics/GraphicBuffer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    if-gt v3, v4, :cond_3

    goto :goto_1

    .line 267
    :cond_3
    return-object v0

    .line 265
    :cond_4
    :goto_1
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFullSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 394
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 395
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 396
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 400
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 401
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "restoreFromDisk"    # Z
    .param p4, "reducedResolution"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-nez p4, :cond_1

    sget-boolean v1, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 408
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 409
    .local v0, "topChild":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    const/4 v1, 0x2

    return v1

    .line 411
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    const/4 v1, 0x1

    return v1

    .line 414
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$screenTurningOff$1$TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 512
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_0
    return-void
.end method

.method public synthetic lambda$screenTurningOff$2$TaskSnapshotController(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 511
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 516
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 517
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 520
    nop

    .line 521
    return-void

    .line 517
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

    .line 519
    .restart local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .restart local p1    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    throw v0
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V
    .locals 2
    .param p1, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "visible"    # Z

    .line 144
    if-nez p2, :cond_0

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 147
    :cond_0
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 479
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    .line 474
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 467
    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 137
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 138
    return-void
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

    .line 485
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 486
    return-void
.end method

.method screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 501
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 503
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    return-void
.end method

.method setPersisterPaused(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 495
    return-void
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 173
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 174
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v3

    .line 176
    .local v3, "mode":I
    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 186
    const/4 v4, 0x0

    .local v4, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_1

    .line 178
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_0
    goto :goto_3

    .line 180
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 181
    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_1

    .line 183
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 184
    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    nop

    .line 189
    :goto_1
    if-eqz v4, :cond_5

    .line 190
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 191
    .local v5, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 196
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 197
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v8, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 198
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_3

    .line 192
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "mode":I
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v5    # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method systemReady()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 134
    return-void
.end method
