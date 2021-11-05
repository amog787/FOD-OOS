.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;,
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MAX_USAGE_HISTORY:I = 0x64

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final RETRY_TIMES:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mCameraUsageHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 108
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 151
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 206
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 207
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 208
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 209
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 211
    const-string/jumbo v0, "ro.camera.notify_nfc"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v4, v1

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 214
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 61
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 61
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/camera/CameraServiceProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 61
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 61
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 61
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cameraFacing"    # I

    .line 581
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 587
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 584
    :cond_0
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 583
    :cond_1
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 582
    :cond_2
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "newCameraState"    # I

    .line 570
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 577
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 574
    :cond_0
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 573
    :cond_1
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 572
    :cond_2
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 571
    :cond_3
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .locals 6
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 398
    .local v0, "userProfiles":[I
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 400
    .local v1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 401
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_0
    return-object v1
.end method

.method private notifyCameraserverLocked(ILjava/util/Set;)Z
    .locals 5
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 431
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    const-string v1, "CameraService_proxy"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 432
    const-string/jumbo v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 434
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return v2

    .line 438
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    nop

    .line 444
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_0

    .line 439
    :catch_0
    move-exception v3

    .line 440
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Could not link to death of native camera service"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return v2

    .line 448
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v0, p1, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    nop

    .line 454
    const/4 v0, 0x1

    return v0

    .line 449
    :catch_1
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v2
.end method

.method private notifyNfcService(Z)V
    .locals 7
    .param p1, "enablePolling"    # Z

    .line 544
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 545
    .local v0, "nfcServiceBinder":Landroid/os/IBinder;
    const-string v1, "CameraService_proxy"

    if-nez v0, :cond_0

    .line 546
    const-string v2, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void

    .line 549
    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 550
    .local v2, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x1000

    .line 553
    .local v3, "flags":I
    :goto_0
    :try_start_0
    sget-object v4, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3, v5}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    goto :goto_1

    .line 554
    :catch_0
    move-exception v4

    .line 555
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private notifySwitchWithRetries(I)V
    .locals 2
    .param p1, "retries"    # I

    .line 408
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 410
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySwitchWithRetriesLocked(I)V
    .locals 5
    .param p1, "retries"    # I

    .line 414
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyCameraserverLocked(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const/4 p1, 0x0

    .line 420
    :cond_1
    if-gtz p1, :cond_2

    .line 421
    return-void

    .line 423
    :cond_2
    const-string v0, "CameraService_proxy"

    const-string v2, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 426
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 388
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 389
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 392
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 394
    :cond_1
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 560
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 561
    .local v0, "len":I
    new-array v1, v0, [I

    .line 562
    .local v1, "ret":[I
    const/4 v2, 0x0

    .line 563
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 564
    .local v4, "i":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "idx":I
    .local v5, "idx":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 565
    .end local v4    # "i":Ljava/lang/Integer;
    move v2, v5

    goto :goto_0

    .line 566
    .end local v5    # "idx":I
    .restart local v2    # "idx":I
    :cond_0
    return-object v1
.end method

.method private updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "facing"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 459
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 462
    .local v1, "wasEmpty":Z
    if-eqz p2, :cond_9

    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto/16 :goto_5

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 508
    .local v2, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 510
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 511
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    .line 518
    :cond_2
    const/4 v3, 0x0

    .line 519
    .local v3, "stillActivePackage":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 520
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v5, v5, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 521
    const/4 v3, 0x1

    .line 522
    goto :goto_1

    .line 519
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 527
    .end local v4    # "i":I
    :cond_4
    :goto_1
    if-nez v3, :cond_b

    .line 528
    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 529
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 530
    .local v4, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v4, p4}, Lcom/android/server/wm/WindowManagerInternal;->removeNonHighRefreshRatePackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 481
    .end local v2    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3    # "stillActivePackage":Z
    .end local v4    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_5
    const/4 v2, 0x0

    .line 482
    .local v2, "alreadyActivePackage":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 483
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v4, v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 484
    const/4 v2, 0x1

    .line 485
    goto :goto_3

    .line 482
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 490
    .end local v3    # "i":I
    :cond_7
    :goto_3
    if-nez v2, :cond_8

    .line 491
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 492
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 493
    .local v3, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v3, p4}, Lcom/android/server/wm/WindowManagerInternal;->addNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 497
    .end local v3    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_8
    new-instance v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-direct {v3, p3, p4, p5}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    .line 498
    .local v3, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 499
    .local v4, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v4, :cond_b

    .line 500
    const-string v5, "CameraService_proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " was already marked as active"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v4}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 502
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 469
    .end local v2    # "alreadyActivePackage":Z
    .end local v3    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v4    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 470
    .local v2, "audioManager":Landroid/media/AudioManager;
    if-eqz v2, :cond_b

    .line 472
    if-nez p3, :cond_a

    .line 473
    const-string v3, "back"

    goto :goto_4

    :cond_a
    const-string v3, "front"

    .line 474
    .local v3, "facingStr":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cameraFacing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "facingParameter":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 535
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "facingStr":Ljava/lang/String;
    .end local v4    # "facingParameter":Ljava/lang/String;
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    .line 536
    .local v2, "isEmpty":Z
    iget-boolean v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v3, :cond_c

    if-eq v1, v2, :cond_c

    .line 537
    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 539
    .end local v1    # "wasEmpty":Z
    .end local v2    # "isEmpty":Z
    :cond_c
    monitor-exit v0

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 282
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 283
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 285
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 286
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 288
    .end local v1    # "wasEmpty":Z
    :cond_0
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpUsageEvents()V
    .locals 7

    .line 341
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 344
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 350
    .local v2, "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    const/4 v3, 0x0

    .line 351
    .local v3, "subtype":I
    iget v4, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 362
    goto :goto_0

    .line 359
    :cond_0
    const/4 v3, 0x2

    .line 360
    goto :goto_1

    .line 356
    :cond_1
    const/4 v3, 0x1

    .line 357
    goto :goto_1

    .line 353
    :cond_2
    const/4 v3, 0x0

    .line 354
    nop

    .line 364
    :goto_1
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x408

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    .line 365
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 366
    invoke-virtual {v4, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 367
    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x52a

    iget v6, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 368
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 369
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 370
    .local v4, "l":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 371
    .end local v2    # "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3    # "subtype":I
    .end local v4    # "l":Landroid/metrics/LogMaker;
    goto :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;-><init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 376
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 380
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    nop

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    throw v2

    .line 377
    .end local v0    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraServiceProxy error, invalid message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraService_proxy"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    .line 223
    nop

    .line 228
    :goto_0
    return v1
.end method

.method public onStart()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 234
    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    const-string/jumbo v2, "media.camera.proxy"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/camera/CameraServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 249
    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v1, p0}, Lcom/android/server/camera/CameraServiceProxy;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 252
    return-void

    .line 236
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 256
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 262
    :cond_0
    monitor-exit v0

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 267
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
