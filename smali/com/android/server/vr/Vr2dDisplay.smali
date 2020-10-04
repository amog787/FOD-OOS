.class Lcom/android/server/vr/Vr2dDisplay;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ACTION_SET_MODE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_MODE"

.field private static final DEBUG_ACTION_SET_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_SURFACE"

.field private static final DEBUG_EXTRA_MODE_ON:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_MODE_ON"

.field private static final DEBUG_EXTRA_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_SURFACE"

.field public static final DEFAULT_VIRTUAL_DISPLAY_DPI:I = 0x140

.field public static final DEFAULT_VIRTUAL_DISPLAY_HEIGHT:I = 0x708

.field public static final DEFAULT_VIRTUAL_DISPLAY_WIDTH:I = 0x578

.field private static final DISPLAY_NAME:Ljava/lang/String; = "VR 2D Display"

.field public static final MIN_VR_DISPLAY_DPI:I = 0x1

.field public static final MIN_VR_DISPLAY_HEIGHT:I = 0x1

.field public static final MIN_VR_DISPLAY_WIDTH:I = 0x1

.field private static final STOP_VIRTUAL_DISPLAY_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "Vr2dDisplay"

.field private static final UNIQUE_DISPLAY_ID:Ljava/lang/String; = "277f1a09-b88d-4d1e-8716-796f114d080b"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBootsToVr:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsPersistentVrModeEnabled:Z

.field private mIsVirtualDisplayAllowed:Z

.field private mIsVrModeOverrideEnabled:Z

.field private mStopVDRunnable:Ljava/lang/Runnable;

.field private mSurface:Landroid/view/Surface;

.field private final mVdLock:Ljava/lang/Object;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mVirtualDisplayDpi:I

.field private mVirtualDisplayHeight:I

.field private mVirtualDisplayWidth:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V
    .locals 1
    .param p1, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .param p2, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p3, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "vrManager"    # Landroid/service/vr/IVrManager;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$1;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 105
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 106
    iput-object p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 107
    iput-object p3, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 108
    iput-object p4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    .line 109
    const/16 v0, 0x578

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 110
    const/16 v0, 0x708

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 111
    const/16 v0, 0x140

    iput v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/Vr2dDisplay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 30
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/vr/Vr2dDisplay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 30
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/Vr2dDisplay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 30
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 30
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vr/Vr2dDisplay;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # I

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 30
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;
    .param p1, "x1"    # Landroid/hardware/display/VirtualDisplay;

    .line 30
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/Vr2dDisplay;

    .line 30
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopImageReader()V

    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 363
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting the new surface from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 371
    :cond_2
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 373
    :cond_3
    return-void
.end method

.method private shouldRunVirtualDisplay()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVrModeOverrideEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    return-void
.end method

.method private startImageReader()V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    .line 382
    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VD startImageReader: res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dpi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startVirtualDisplay()V
    .locals 13

    .line 280
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    .line 281
    const-string v0, "Vr2dDisplay"

    const-string v1, "Cannot create virtual display because mDisplayManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_1

    .line 287
    const-string v1, "Vr2dDisplay"

    const-string v2, "VD already exists, ignoring request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v0

    return-void

    .line 291
    :cond_1
    const/16 v1, 0x40

    .line 292
    .local v1, "flags":I
    or-int/lit16 v1, v1, 0x80

    .line 293
    or-int/lit8 v1, v1, 0x1

    .line 294
    or-int/lit8 v1, v1, 0x8

    .line 295
    or-int/lit16 v1, v1, 0x100

    .line 296
    or-int/lit8 v1, v1, 0x4

    .line 298
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    const-string v4, "VR 2D Display"

    iget v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "277f1a09-b88d-4d1e-8716-796f114d080b"

    move v9, v1

    invoke-virtual/range {v2 .. v12}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 303
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 306
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 312
    .end local v1    # "flags":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VD created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 308
    .restart local v1    # "flags":I
    :cond_2
    :try_start_1
    const-string v2, "Vr2dDisplay"

    const-string v3, "Virtual display id is null after createVirtualDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 310
    monitor-exit v0

    return-void

    .line 312
    .end local v1    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startVrModeListener()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vr2dDisplay"

    const-string v2, "Could not register VR State listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private stopImageReader()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 400
    :cond_0
    return-void
.end method

.method private stopVirtualDisplay()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$3;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method private updateDisplayId(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 318
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setVr2dDisplayId(I)V

    .line 319
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    .line 320
    return-void
.end method

.method private updateVirtualDisplay()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "Vr2dDisplay"

    const-string v1, "Attempting to start virtual display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVirtualDisplay()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V

    .line 147
    :goto_0
    return-void
.end method


# virtual methods
.method public getVirtualDisplayId()I
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 266
    .local v1, "virtualDisplayId":I
    monitor-exit v0

    return v1

    .line 268
    .end local v1    # "virtualDisplayId":I
    :cond_0
    monitor-exit v0

    .line 269
    const/4 v0, -0x1

    return v0

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bootsToVr"    # Z

    .line 118
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVrModeListener()V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V

    .line 120
    iput-boolean p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 126
    :cond_0
    return-void
.end method

.method public setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 9
    .param p1, "displayProperties"    # Landroid/app/Vr2dDisplayProperties;

    .line 206
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v1

    .line 213
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v2

    .line 214
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v3

    .line 215
    .local v3, "dpi":I
    const/4 v4, 0x0

    .line 217
    .local v4, "resized":Z
    const/4 v5, 0x1

    if-lt v1, v5, :cond_1

    if-lt v2, v5, :cond_1

    if-ge v3, v5, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting width/height/dpi to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 224
    iput v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 225
    iput v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 226
    const/4 v4, 0x1

    goto :goto_1

    .line 219
    :cond_1
    :goto_0
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring Width/Height/Dpi values of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_1
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v6

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_2

    .line 232
    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    goto :goto_2

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v6

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_3

    .line 236
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 239
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v5, :cond_4

    .line 240
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v8, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 242
    iget-object v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 243
    .local v5, "oldImageReader":Landroid/media/ImageReader;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 244
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 245
    invoke-virtual {v5}, Landroid/media/ImageReader;->close()V

    .line 249
    .end local v5    # "oldImageReader":Landroid/media/ImageReader;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 250
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "dpi":I
    .end local v4    # "resized":Z
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
