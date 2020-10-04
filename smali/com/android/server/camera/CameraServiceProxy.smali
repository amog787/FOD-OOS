.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final RETRY_TIMES:I = 0x1e

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

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 152
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 207
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 208
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 209
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 210
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 212
    const-string/jumbo v0, "ro.camera.notify_nfc"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 65
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 65
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/camera/CameraServiceProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 65
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraServiceProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/camera/CameraServiceProxy;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 65
    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 65
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

    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cameraFacing"    # I

    .line 552
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 558
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 555
    :cond_0
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 554
    :cond_1
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 553
    :cond_2
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "newCameraState"    # I

    .line 541
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 548
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 545
    :cond_0
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 544
    :cond_1
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 543
    :cond_2
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 542
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

    .line 352
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 353
    .local v0, "userProfiles":[I
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 355
    .local v1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    .line 356
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
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

    .line 386
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    const-string v1, "CameraService_proxy"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 387
    const-string/jumbo v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 389
    const-string v3, "Could not notify cameraserver, camera service not available."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v2

    .line 393
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    nop

    .line 399
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_0

    .line 394
    :catch_0
    move-exception v3

    .line 395
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Could not link to death of native camera service"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v2

    .line 403
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

    .line 408
    nop

    .line 409
    const/4 v0, 0x1

    return v0

    .line 404
    :catch_1
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not notify cameraserver, remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v2
.end method

.method private notifyColorGamutEnhance(Z)V
    .locals 2
    .param p1, "activeCamera"    # Z

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " notifyColorGamutEnhance activeCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 526
    .local v0, "cdm":Lcom/oneplus/display/IOneplusColorDisplayManager;
    invoke-interface {v0, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->notifyCameraStatus(Z)V

    .line 527
    return-void
.end method

.method private notifyNfcService(Z)V
    .locals 7
    .param p1, "enablePolling"    # Z

    .line 505
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 506
    .local v0, "nfcServiceBinder":Landroid/os/IBinder;
    const-string v1, "CameraService_proxy"

    if-nez v0, :cond_0

    .line 507
    const-string v2, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    .line 510
    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 511
    .local v2, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x1000

    .line 514
    .local v3, "flags":I
    :goto_0
    :try_start_0
    sget-object v4, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3, v5}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    goto :goto_1

    .line 515
    :catch_0
    move-exception v4

    .line 516
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private notifySwitchWithRetries(I)V
    .locals 2
    .param p1, "retries"    # I

    .line 363
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
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

    .line 369
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyCameraserverLocked(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    const/4 p1, 0x0

    .line 375
    :cond_1
    if-gtz p1, :cond_2

    .line 376
    return-void

    .line 378
    :cond_2
    const-string v0, "CameraService_proxy"

    const-string v2, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 381
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 342
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 343
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 344
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    :cond_0
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 347
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 349
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

    .line 531
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 532
    .local v0, "len":I
    new-array v1, v0, [I

    .line 533
    .local v1, "ret":[I
    const/4 v2, 0x0

    .line 534
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

    .line 535
    .local v4, "i":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "idx":I
    .local v5, "idx":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 536
    .end local v4    # "i":Ljava/lang/Integer;
    move v2, v5

    goto :goto_0

    .line 537
    .end local v5    # "idx":I
    .restart local v2    # "idx":I
    :cond_0
    return-object v1
.end method

.method private updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "facing"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 414
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 417
    .local v1, "wasEmpty":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_9

    if-eq p2, v3, :cond_5

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    goto/16 :goto_5

    .line 462
    :cond_0
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 463
    .local v4, "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-nez v4, :cond_1

    goto/16 :goto_5

    .line 465
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 466
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    .line 473
    :cond_2
    const/4 v5, 0x0

    .line 474
    .local v5, "stillActivePackage":Z
    move v6, v2

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 475
    iget-object v7, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v7, v7, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 476
    const/4 v5, 0x1

    .line 477
    goto :goto_1

    .line 474
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 482
    .end local v6    # "i":I
    :cond_4
    :goto_1
    if-nez v5, :cond_b

    .line 483
    const-class v6, Lcom/android/server/wm/WindowManagerInternal;

    .line 484
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    .line 485
    .local v6, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v6, p4}, Lcom/android/server/wm/WindowManagerInternal;->removeNonHighRefreshRatePackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 436
    .end local v4    # "doneEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v5    # "stillActivePackage":Z
    .end local v6    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_5
    const/4 v4, 0x0

    .line 437
    .local v4, "alreadyActivePackage":Z
    move v5, v2

    .local v5, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 438
    iget-object v6, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v6, v6, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 439
    const/4 v4, 0x1

    .line 440
    goto :goto_3

    .line 437
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 445
    .end local v5    # "i":I
    :cond_7
    :goto_3
    if-nez v4, :cond_8

    .line 446
    const-class v5, Lcom/android/server/wm/WindowManagerInternal;

    .line 447
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerInternal;

    .line 448
    .local v5, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v5, p4}, Lcom/android/server/wm/WindowManagerInternal;->addNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 452
    .end local v5    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_8
    new-instance v5, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-direct {v5, p3, p4, p5}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    .line 453
    .local v5, "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    iget-object v6, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 454
    .local v6, "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    if-eqz v6, :cond_b

    .line 455
    const-string v7, "CameraService_proxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " was already marked as active"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v6}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    .line 457
    iget-object v7, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 424
    .end local v4    # "alreadyActivePackage":Z
    .end local v5    # "newEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v6    # "oldEvent":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 425
    .local v4, "audioManager":Landroid/media/AudioManager;
    if-eqz v4, :cond_b

    .line 427
    if-nez p3, :cond_a

    .line 428
    const-string v5, "back"

    goto :goto_4

    :cond_a
    const-string v5, "front"

    .line 429
    .local v5, "facingStr":Ljava/lang/String;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cameraFacing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, "facingParameter":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 490
    .end local v4    # "audioManager":Landroid/media/AudioManager;
    .end local v5    # "facingStr":Ljava/lang/String;
    .end local v6    # "facingParameter":Ljava/lang/String;
    :cond_b
    :goto_5
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    .line 491
    .local v4, "isEmpty":Z
    iget-boolean v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v5, :cond_c

    if-eq v1, v4, :cond_c

    .line 492
    invoke-direct {p0, v4}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 496
    :cond_c
    if-eq v1, v4, :cond_e

    .line 497
    if-nez v4, :cond_d

    move v2, v3

    :cond_d
    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyColorGamutEnhance(Z)V

    .line 500
    .end local v1    # "wasEmpty":Z
    .end local v4    # "isEmpty":Z
    :cond_e
    monitor-exit v0

    .line 501
    return-void

    .line 500
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

    .line 276
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 280
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 281
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 283
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 284
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 288
    :cond_0
    if-nez v1, :cond_1

    .line 289
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyColorGamutEnhance(Z)V

    .line 292
    .end local v1    # "wasEmpty":Z
    :cond_1
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpUsageEvents()V
    .locals 7

    .line 300
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 303
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

    .line 309
    .local v2, "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    const/4 v3, 0x0

    .line 310
    .local v3, "subtype":I
    iget v4, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 321
    goto :goto_0

    .line 318
    :cond_0
    const/4 v3, 0x2

    .line 319
    goto :goto_1

    .line 315
    :cond_1
    const/4 v3, 0x1

    .line 316
    goto :goto_1

    .line 312
    :cond_2
    const/4 v3, 0x0

    .line 313
    nop

    .line 323
    :goto_1
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x408

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    .line 324
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 325
    invoke-virtual {v4, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 326
    invoke-virtual {v2}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x52a

    iget v6, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    .line 327
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 328
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 329
    .local v4, "l":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 330
    .end local v2    # "e":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    .end local v3    # "subtype":I
    .end local v4    # "l":Landroid/metrics/LogMaker;
    goto :goto_0

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    nop

    .line 339
    return-void

    .line 337
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 332
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

    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 223
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

    .line 220
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    .line 221
    nop

    .line 226
    :goto_0
    return v1
.end method

.method public onStart()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 232
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    const-string/jumbo v2, "media.camera.proxy"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/camera/CameraServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 247
    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v1, p0}, Lcom/android/server/camera/CameraServiceProxy;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 250
    return-void

    .line 234
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

    .line 254
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 260
    :cond_0
    monitor-exit v0

    .line 261
    return-void

    .line 260
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

    .line 265
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
