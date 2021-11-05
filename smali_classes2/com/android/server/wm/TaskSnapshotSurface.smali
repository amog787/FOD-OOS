.class Lcom/android/server/wm/TaskSnapshotSurface;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;,
        Lcom/android/server/wm/TaskSnapshotSurface$Window;
    }
.end annotation


# static fields
.field private static final FLAG_INHERIT_EXCLUDES:I = 0x3186e038

.field private static final MSG_REPORT_DRAW:I = 0x0

.field private static final PRIVATE_FLAG_INHERITS:I = 0x20000

.field public static SIZE_MISMATCH_MINIMUM_TIME_MS:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId=%s"

.field private static sHandler:Landroid/os/Handler;

.field private static final sTmpSurfaceControl:Landroid/view/SurfaceControl;

.field private static final sTmpSurfaceSize:Landroid/graphics/Point;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mChildSurfaceControl:Landroid/view/SurfaceControl;

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mSnapshotMatrix:Landroid/graphics/Matrix;

.field private final mStatusBarColor:I

.field private final mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTmpDstFrame:Landroid/graphics/RectF;

.field private final mTmpFloat9:[F

.field private final mTmpSnapshotSize:Landroid/graphics/RectF;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "persist.sys.snapshot.mismatch.time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/wm/TaskSnapshotSurface;->SIZE_MISMATCH_MINIMUM_TIME_MS:J

    .line 135
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceSize:Landroid/graphics/Point;

    .line 136
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceControl:Landroid/view/SurfaceControl;

    .line 526
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;ILandroid/view/InsetsState;)V
    .locals 16
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "window"    # Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p4, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p7, "sysUiVis"    # I
    .param p8, "windowFlags"    # I
    .param p9, "windowPrivateFlags"    # I
    .param p10, "taskBounds"    # Landroid/graphics/Rect;
    .param p11, "currentOrientation"    # I
    .param p12, "insetsState"    # Landroid/view/InsetsState;

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 146
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 148
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    .line 149
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    .line 155
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 160
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    .line 161
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpFloat9:[F

    .line 319
    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 320
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    .line 321
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    .line 322
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    .line 323
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    .line 324
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 325
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 326
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 327
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v6

    .line 328
    .local v6, "backgroundColor":I
    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    const/4 v8, -0x1

    :goto_0
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    .line 330
    new-instance v15, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v8, v15

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p7

    move-object/from16 v12, p6

    move-object/from16 v14, p12

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    iput-object v15, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    .line 332
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v8

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    .line 333
    move/from16 v8, p11

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    .line 334
    iget-object v9, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    iput-object v9, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .locals 62
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 166
    move-object/from16 v1, p1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v15, v0

    .line 167
    .local v15, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    move-object v14, v0

    .line 168
    .local v14, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v12

    .line 169
    .local v12, "session":Landroid/view/IWindowSession;
    invoke-virtual {v14, v12}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    .line 170
    new-instance v40, Landroid/view/SurfaceControl;

    invoke-direct/range {v40 .. v40}, Landroid/view/SurfaceControl;-><init>()V

    .line 171
    .local v40, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 172
    .local v9, "tmpRect":Landroid/graphics/Rect;
    new-instance v11, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v11}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    .line 173
    .local v11, "tmpCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 175
    .local v10, "tmpFrame":Landroid/graphics/Rect;
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 176
    .local v26, "tmpContentInsets":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .local v28, "tmpStableInsets":Landroid/graphics/Rect;
    new-instance v13, Landroid/view/InsetsState;

    invoke-direct {v13}, Landroid/view/InsetsState;-><init>()V

    .line 178
    .local v13, "mTmpInsetsState":Landroid/view/InsetsState;
    const/4 v8, 0x0

    new-array v7, v8, [Landroid/view/InsetsSourceControl;

    .line 179
    .local v7, "mTempControls":[Landroid/view/InsetsSourceControl;
    new-instance v31, Landroid/util/MergedConfiguration;

    invoke-direct/range {v31 .. v31}, Landroid/util/MergedConfiguration;-><init>()V

    .line 180
    .local v31, "tmpMergedConfiguration":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object v6, v0

    .line 181
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 190
    const/4 v2, 0x0

    .line 194
    .local v2, "mZoomWindow":Z
    move-object/from16 v5, p0

    iget-object v3, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 196
    .local v4, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v17, v16

    .line 197
    .local v17, "task":Lcom/android/server/wm/Task;
    const/16 v16, 0x0

    move-object/from16 v0, v17

    .end local v17    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_0

    .line 198
    :try_start_1
    const-string v8, "WindowManager"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v2

    .end local v2    # "mZoomWindow":Z
    .local v17, "mZoomWindow":Z
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskSnapshotSurface.create: Failed to find task for activity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 275
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move/from16 v2, v17

    goto/16 :goto_6

    .end local v17    # "mZoomWindow":Z
    .restart local v2    # "mZoomWindow":Z
    :catchall_1
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    .end local v2    # "mZoomWindow":Z
    .restart local v17    # "mZoomWindow":Z
    goto/16 :goto_6

    .line 202
    .end local v17    # "mZoomWindow":Z
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "mZoomWindow":Z
    .restart local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    :cond_0
    move/from16 v17, v2

    .line 203
    .end local v2    # "mZoomWindow":Z
    .restart local v17    # "mZoomWindow":Z
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 204
    .local v2, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_1

    .line 205
    :try_start_4
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v19, v7

    .end local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v19, "mTempControls":[Landroid/view/InsetsSourceControl;
    :try_start_5
    const-string v7, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 275
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    :catchall_2
    move-exception v0

    move-object/from16 v55, v6

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move/from16 v2, v17

    move-object/from16 v56, v19

    goto/16 :goto_6

    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :catchall_3
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move/from16 v2, v17

    .end local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    goto/16 :goto_6

    .line 209
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :cond_1
    move-object/from16 v19, v7

    .end local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    move-object v7, v5

    .line 210
    .local v7, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_9

    if-nez v7, :cond_2

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v18, v4

    move-object/from16 v55, v6

    move-object/from16 v57, v7

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v56, v19

    goto/16 :goto_5

    .line 218
    :cond_2
    sget-boolean v5, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v5, :cond_4

    .line 219
    :try_start_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v8, 0x64

    if-ne v5, v8, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    move/from16 v50, v5

    .end local v17    # "mZoomWindow":Z
    .local v5, "mZoomWindow":Z
    goto :goto_1

    .line 218
    .end local v5    # "mZoomWindow":Z
    .restart local v17    # "mZoomWindow":Z
    :cond_4
    move/from16 v50, v17

    .line 223
    .end local v17    # "mZoomWindow":Z
    .local v50, "mZoomWindow":Z
    :goto_1
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getRotation()I

    move-result v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eq v5, v8, :cond_5

    .line 229
    :try_start_9
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    .line 275
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v7    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    :catchall_4
    move-exception v0

    move-object/from16 v55, v6

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v56, v19

    move/from16 v2, v50

    goto/16 :goto_6

    .line 233
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v7    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_2
    :try_start_a
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v5

    move v8, v5

    .line 234
    .local v8, "sysUiVis":I
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 235
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v22, v2

    .end local v2    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .local v22, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v51, v2

    .line 236
    .local v51, "windowFlags":I
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v52, v2

    .line 238
    .local v52, "windowPrivateFlags":I
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v2, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 239
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 240
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 241
    const/4 v2, 0x3

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v2

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 243
    const v2, -0x3186e039

    and-int v2, v51, v2

    or-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x10

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 246
    const/high16 v2, 0x20000

    and-int v2, v52, v2

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 247
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iput-object v2, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 248
    const/4 v2, -0x1

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    iput v8, v15, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 251
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    move-object/from16 v18, v4

    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v18, "mainWindow":Lcom/android/server/wm/WindowState;
    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    iput v4, v2, Landroid/view/InsetsFlags;->behavior:I

    .line 253
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    iput v4, v2, Landroid/view/InsetsFlags;->appearance:I

    .line 255
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 256
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 257
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 258
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 260
    const-string v2, "SnapshotStartingWindow for taskId=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v17, v5

    .end local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v17, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v20, 0x0

    aput-object v5, v4, v20

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 263
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v2, :cond_6

    .line 264
    :try_start_b
    invoke-virtual {v6, v2}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 266
    :cond_6
    :try_start_c
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v4

    .line 267
    .local v5, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 268
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v48, v4

    .line 270
    .local v48, "currentOrientation":I
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v4

    .line 272
    .local v4, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    move-object/from16 v21, v0

    .end local v0    # "task":Lcom/android/server/wm/Task;
    .local v21, "task":Lcom/android/server/wm/Task;
    new-instance v0, Landroid/view/InsetsState;

    .line 273
    move-object/from16 v23, v2

    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    .local v23, "td":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v4, v7}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v2, v0

    .line 274
    .local v2, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->mergeInsetsSources(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 275
    .end local v4    # "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v21    # "task":Lcom/android/server/wm/Task;
    .end local v22    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v23    # "td":Landroid/app/ActivityManager$TaskDescription;
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 277
    :try_start_d
    iget v4, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v0, 0x8

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    const/16 v18, 0x0

    .line 277
    move-object v3, v2

    .end local v2    # "insetsState":Landroid/view/InsetsState;
    .local v3, "insetsState":Landroid/view/InsetsState;
    move-object v2, v12

    move-object/from16 v53, v3

    .end local v3    # "insetsState":Landroid/view/InsetsState;
    .local v53, "insetsState":Landroid/view/InsetsState;
    move-object v3, v14

    move-object/from16 v54, v5

    .end local v5    # "taskBounds":Landroid/graphics/Rect;
    .local v54, "taskBounds":Landroid/graphics/Rect;
    move-object v5, v15

    move-object/from16 v55, v6

    .end local v6    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v55, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move v6, v0

    move-object/from16 v57, v7

    move-object/from16 v56, v19

    .end local v7    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v56, "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v57, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    move/from16 v7, v17

    move/from16 v58, v8

    .end local v8    # "sysUiVis":I
    .local v58, "sysUiVis":I
    move-object v8, v10

    move-object/from16 v59, v10

    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .local v59, "tmpFrame":Landroid/graphics/Rect;
    move-object v10, v9

    move-object/from16 v60, v12

    .end local v12    # "session":Landroid/view/IWindowSession;
    .local v60, "session":Landroid/view/IWindowSession;
    move-object/from16 v12, v18

    move-object/from16 v61, v14

    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v61, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    move-object/from16 v14, v56

    :try_start_e
    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 280
    .local v0, "res":I
    if-gez v0, :cond_7

    .line 281
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add snapshot starting window res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0

    .line 282
    return-object v16

    .line 286
    .end local v0    # "res":I
    :cond_7
    goto :goto_3

    .line 284
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v53    # "insetsState":Landroid/view/InsetsState;
    .end local v54    # "taskBounds":Landroid/graphics/Rect;
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v58    # "sysUiVis":I
    .end local v59    # "tmpFrame":Landroid/graphics/Rect;
    .end local v60    # "session":Landroid/view/IWindowSession;
    .end local v61    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v2    # "insetsState":Landroid/view/InsetsState;
    .restart local v5    # "taskBounds":Landroid/graphics/Rect;
    .restart local v6    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v7    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v8    # "sysUiVis":I
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :catch_1
    move-exception v0

    move-object/from16 v53, v2

    move-object/from16 v54, v5

    move-object/from16 v55, v6

    move-object/from16 v57, v7

    move/from16 v58, v8

    move-object/from16 v59, v10

    move-object/from16 v60, v12

    move-object/from16 v61, v14

    move-object/from16 v56, v19

    .line 287
    .end local v2    # "insetsState":Landroid/view/InsetsState;
    .end local v5    # "taskBounds":Landroid/graphics/Rect;
    .end local v6    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v7    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v8    # "sysUiVis":I
    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v53    # "insetsState":Landroid/view/InsetsState;
    .restart local v54    # "taskBounds":Landroid/graphics/Rect;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v58    # "sysUiVis":I
    .restart local v59    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v60    # "session":Landroid/view/IWindowSession;
    .restart local v61    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    :goto_3
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 288
    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v42

    move-object/from16 v37, v0

    move-object/from16 v38, p0

    move-object/from16 v39, v61

    move-object/from16 v41, p2

    move-object/from16 v43, v55

    move/from16 v44, v58

    move/from16 v45, v51

    move/from16 v46, v52

    move-object/from16 v47, v54

    move-object/from16 v49, v53

    invoke-direct/range {v37 .. v49}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;ILandroid/view/InsetsState;)V

    move-object v2, v0

    .line 290
    .local v2, "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    move-object/from16 v4, v61

    .end local v61    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 292
    :try_start_f
    iget v0, v4, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, -0x1

    sget-object v35, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceSize:Landroid/graphics/Point;

    sget-object v36, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3

    move-object v5, v15

    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v5, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v15, v60

    move-object/from16 v16, v4

    move/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v25, v59

    move-object/from16 v27, v9

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    move-object/from16 v32, v40

    move-object/from16 v33, v13

    move-object/from16 v34, v56

    :try_start_10
    invoke-interface/range {v15 .. v36}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;Landroid/view/SurfaceControl;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2

    .line 298
    goto :goto_4

    .line 296
    :catch_2
    move-exception v0

    goto :goto_4

    .end local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_3
    move-exception v0

    move-object v5, v15

    .line 302
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_4
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_8

    if-eqz v50, :cond_8

    .line 304
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 308
    :cond_8
    move-object/from16 v3, v53

    move-object/from16 v6, v59

    .end local v53    # "insetsState":Landroid/view/InsetsState;
    .end local v59    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v3    # "insetsState":Landroid/view/InsetsState;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    invoke-static {v6, v3}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v0

    .line 309
    .local v0, "systemBarInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v6, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 310
    invoke-direct {v2}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    .line 311
    return-object v2

    .line 275
    .end local v0    # "systemBarInsets":Landroid/graphics/Rect;
    .end local v2    # "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    .end local v3    # "insetsState":Landroid/view/InsetsState;
    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v48    # "currentOrientation":I
    .end local v51    # "windowFlags":I
    .end local v52    # "windowPrivateFlags":I
    .end local v54    # "taskBounds":Landroid/graphics/Rect;
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v58    # "sysUiVis":I
    .end local v60    # "session":Landroid/view/IWindowSession;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :catchall_5
    move-exception v0

    move-object/from16 v55, v6

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v56, v19

    move/from16 v2, v50

    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v60    # "session":Landroid/view/IWindowSession;
    goto/16 :goto_6

    .line 210
    .end local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v50    # "mZoomWindow":Z
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v60    # "session":Landroid/view/IWindowSession;
    .local v0, "task":Lcom/android/server/wm/Task;
    .local v2, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .local v4, "mainWindow":Lcom/android/server/wm/WindowState;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v7    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v17, "mZoomWindow":Z
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :cond_9
    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v18, v4

    move-object/from16 v55, v6

    move-object/from16 v57, v7

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v56, v19

    .line 211
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .restart local v18    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v21    # "task":Lcom/android/server/wm/Task;
    .restart local v22    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v60    # "session":Landroid/view/IWindowSession;
    :goto_5
    :try_start_11
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskSnapshotSurface.create: Failed to find main window for activity="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 275
    .end local v18    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v21    # "task":Lcom/android/server/wm/Task;
    .end local v22    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    :catchall_6
    move-exception v0

    move/from16 v2, v17

    goto :goto_6

    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v60    # "session":Landroid/view/IWindowSession;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :catchall_7
    move-exception v0

    move-object/from16 v55, v6

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v56, v19

    move/from16 v2, v17

    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v60    # "session":Landroid/view/IWindowSession;
    goto :goto_6

    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v60    # "session":Landroid/view/IWindowSession;
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v7, "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_8
    move-exception v0

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    move/from16 v2, v17

    .end local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v60    # "session":Landroid/view/IWindowSession;
    goto :goto_6

    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "mZoomWindow":Z
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v60    # "session":Landroid/view/IWindowSession;
    .local v2, "mZoomWindow":Z
    .local v6, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_9
    move-exception v0

    move/from16 v17, v2

    move-object/from16 v55, v6

    move-object/from16 v56, v7

    move-object v6, v10

    move-object/from16 v60, v12

    move-object v4, v14

    move-object v5, v15

    .end local v7    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v5    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "tmpFrame":Landroid/graphics/Rect;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v60    # "session":Landroid/view/IWindowSession;
    :goto_6
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_6
.end method

.method private drawSizeMatchSnapshot()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 391
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 393
    return-void
.end method

.method private drawSizeMismatchSnapshot()V
    .locals 10

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 400
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 403
    .local v1, "session":Landroid/view/SurfaceSession;
    nop

    .line 404
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 405
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 403
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 408
    .local v2, "aspectRatioMismatch":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - task-snapshot-surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 410
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 411
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 412
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 413
    const-string v4, "TaskSnapshotSurface.drawSizeMismatchSnapshot"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 414
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 415
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 416
    .local v3, "surface":Landroid/view/Surface;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 421
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 422
    if-eqz v2, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v4

    .line 425
    .local v4, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 426
    .local v5, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 427
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 428
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v6, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 429
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 430
    .end local v4    # "crop":Landroid/graphics/Rect;
    goto :goto_1

    .line 431
    .end local v5    # "frame":Landroid/graphics/Rect;
    :cond_1
    const/4 v5, 0x0

    .line 432
    .restart local v5    # "frame":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 433
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 434
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v8, v8}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 438
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 439
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpFloat9:[F

    invoke-virtual {v4, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 441
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 442
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 443
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 445
    if-eqz v2, :cond_2

    .line 446
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4

    .line 447
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 448
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 449
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    .line 451
    .end local v4    # "c":Landroid/graphics/Canvas;
    :cond_2
    return-void

    .line 397
    .end local v0    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v1    # "session":Landroid/view/SurfaceSession;
    .end local v2    # "aspectRatioMismatch":Z
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v5    # "frame":Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mSurface does not hold a valid surface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawSnapshot()V
    .locals 9

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 369
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .local v0, "protoLogParam0":Z
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x76b023e9

    const/4 v5, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 371
    .end local v0    # "protoLogParam0":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_0

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot()V

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    .line 381
    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    .line 382
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    .line 386
    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 387
    return-void

    .line 382
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reportDrawn()V
    .locals 3

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 524
    :goto_0
    return-void
.end method


# virtual methods
.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .locals 9

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 461
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 462
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 464
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 465
    .local v2, "scaleX":F
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 466
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 470
    .local v4, "scaleY":F
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    .line 471
    .local v5, "isTop":Z
    :goto_0
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 472
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_1
    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    .line 471
    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/graphics/Rect;->inset(IIII)V

    .line 475
    return-object v0
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 486
    .local v0, "scaleX":F
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 487
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 490
    .local v1, "scaleY":F
    new-instance v2, Landroid/graphics/Rect;

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 492
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 496
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 497
    return-object v2
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    .line 503
    .local v2, "statusBarHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 504
    .local v3, "fillHorizontally":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move v4, v5

    .line 505
    .local v4, "fillVertically":Z
    if-eqz v3, :cond_4

    .line 506
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v5

    iget v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    int-to-float v5, v2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move v8, v5

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v9, v5

    if-eqz v4, :cond_3

    .line 508
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    move v10, v5

    goto :goto_3

    .line 509
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move v10, v5

    :goto_3
    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 506
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 512
    :cond_4
    if-eqz v4, :cond_5

    .line 513
    const/4 v13, 0x0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 515
    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 516
    return-void
.end method

.method public remove()V
    .locals 12

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 341
    .local v1, "now":J
    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v1, v6

    sget-wide v8, Lcom/android/server/wm/TaskSnapshotSurface;->SIZE_MISMATCH_MINIMUM_TIME_MS:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v6, p0}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    iget-wide v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sget-wide v9, Lcom/android/server/wm/TaskSnapshotSurface;->SIZE_MISMATCH_MINIMUM_TIME_MS:J

    add-long/2addr v7, v9

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 343
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v3, :cond_0

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v1, v6

    .local v6, "protoLogParam0":J
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x775bba9f

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v3, v8, v9, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 346
    .end local v6    # "protoLogParam0":J
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 348
    .end local v1    # "now":J
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 350
    :try_start_2
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x182c008d

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 355
    :goto_0
    return-void

    .line 348
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 364
    return-void
.end method
