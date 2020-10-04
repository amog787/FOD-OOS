.class public final Lcom/android/server/media/MediaRouterService;
.super Landroid/media/IMediaRouterService$Stub;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler;,
        Lcom/android/server/media/MediaRouterService$UserRecord;,
        Lcom/android/server/media/MediaRouterService$ClientGroup;,
        Lcom/android/server/media/MediaRouterService$ClientRecord;,
        Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field static final CONNECTED_TIMEOUT:J = 0xea60L

.field static final CONNECTING_TIMEOUT:J = 0x1388L

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaRouterService"


# instance fields
.field mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

.field private final mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

.field private final mAllClientRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field mAudioRouteMainType:I

.field private final mAudioService:Landroid/media/IAudioService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mGlobalBluetoothA2dpOn:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaRouterService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-string v0, "MediaRouterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Landroid/media/IMediaRouterService$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 104
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 106
    new-instance v0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 109
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 112
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 115
    nop

    .line 116
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    .line 117
    invoke-static {p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 118
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    new-instance v1, Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "audioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    new-instance v2, Lcom/android/server/media/MediaRouterService$2;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$2;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouterService"

    const-string v3, "RemoteException in the audio service."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 74
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouterService;

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V
    .locals 3
    .param p1, "clientRecord"    # Lcom/android/server/media/MediaRouterService$ClientRecord;
    .param p2, "died"    # Z

    .line 686
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 687
    const-string v0, "MediaRouterService"

    if-eqz p2, :cond_0

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Died!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eqz v0, :cond_3

    .line 694
    :cond_2
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 697
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dispose()V

    .line 698
    return-void
.end method

.method private disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .locals 2
    .param p1, "userRecord"    # Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 669
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 670
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 677
    :cond_1
    return-void
.end method

.method private getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .locals 2
    .param p1, "client"    # Landroid/media/IMediaRouterClient;

    .line 565
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 566
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->getState()Landroid/media/MediaRouterClientState;

    move-result-object v1

    return-object v1

    .line 569
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .locals 2
    .param p1, "clientRecord"    # Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 680
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    return-void
.end method

.method private initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .locals 2
    .param p1, "userRecord"    # Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 656
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-ne v0, v1, :cond_1

    .line 660
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 662
    :cond_1
    return-void
.end method

.method private registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "groupId"    # Ljava/lang/String;

    .line 529
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 530
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 531
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-nez v1, :cond_0

    .line 532
    const-string v2, "MediaRouterService"

    const-string v3, "Ignoring group id register request of a unregistered client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 535
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    return-void

    .line 538
    :cond_1
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 539
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    iget-object v3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 542
    :cond_2
    iput-object p2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 543
    if-eqz p2, :cond_3

    .line 544
    invoke-virtual {v2, p2, v1}, Lcom/android/server/media/MediaRouterService$UserRecord;->addToGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 545
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 546
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 548
    :cond_3
    return-void
.end method

.method private registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V
    .locals 15
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "trusted"    # Z

    .line 501
    move-object v9, p0

    move/from16 v10, p5

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 502
    .local v11, "binder":Landroid/os/IBinder;
    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 503
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-nez v0, :cond_2

    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "newUser":Z
    iget-object v2, v9, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 506
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-nez v2, :cond_0

    .line 507
    new-instance v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-direct {v3, p0, v10}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    move-object v2, v3

    .line 508
    const/4 v1, 0x1

    move v13, v1

    move-object v12, v2

    goto :goto_0

    .line 506
    :cond_0
    move v13, v1

    move-object v12, v2

    .line 510
    .end local v1    # "newUser":Z
    .end local v2    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .local v12, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .local v13, "newUser":Z
    :goto_0
    new-instance v14, Lcom/android/server/media/MediaRouterService$ClientRecord;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouterService$ClientRecord;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V

    .line 512
    .end local v0    # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v11, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    nop

    .line 517
    if-eqz v13, :cond_1

    .line 518
    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    invoke-direct {p0, v12}, Lcom/android/server/media/MediaRouterService;->initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 522
    :cond_1
    iget-object v0, v12, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService;->initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    move-object v0, v1

    goto :goto_1

    .line 513
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 514
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media router client died prematurely."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 526
    .end local v1    # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    .end local v12    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    .end local v13    # "newUser":Z
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :cond_2
    :goto_1
    return-void
.end method

.method private requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    .line 637
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 638
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 639
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_0

    .line 640
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 641
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 643
    :cond_0
    return-void
.end method

.method private requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "direction"    # I

    .line 647
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 648
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 649
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_0

    .line 650
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 651
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 653
    :cond_0
    return-void
.end method

.method private setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeTypes"    # I
    .param p3, "activeScan"    # Z

    .line 574
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 575
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 576
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v1, :cond_3

    .line 578
    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-nez v2, :cond_0

    .line 579
    and-int/lit8 p2, p2, -0x5

    .line 582
    :cond_0
    iget v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-ne v2, p2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eq v2, p3, :cond_3

    .line 584
    :cond_1
    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Set discovery request, routeTypes=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", activeScan="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    const-string v3, "MediaRouterService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_2
    iput p2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 589
    iput-boolean p3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 590
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 594
    :cond_3
    return-void
.end method

.method private setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "explicit"    # Z

    .line 598
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 599
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_3

    .line 600
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 601
    .local v1, "oldRouteId":Ljava/lang/String;
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 602
    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Set selected route, routeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldRouteId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", explicit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaRouterService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iput-object p2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 611
    if-eqz p3, :cond_3

    iget-boolean v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-eqz v2, :cond_3

    .line 612
    if-eqz v1, :cond_1

    .line 613
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 616
    :cond_1
    if-eqz p2, :cond_2

    .line 617
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 618
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 620
    :cond_2
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 621
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 622
    invoke-static {v2}, Lcom/android/server/media/MediaRouterService$UserRecord;->access$500(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 623
    .local v2, "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    if-eqz v2, :cond_3

    .line 624
    iput-object p2, v2, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 625
    iget-object v3, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 v4, 0xa

    iget-object v5, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 627
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 633
    .end local v1    # "oldRouteId":Ljava/lang/String;
    .end local v2    # "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    :cond_3
    return-void
.end method

.method private unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .locals 3
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "died"    # Z

    .line 551
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 552
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    if-eqz v0, :cond_1

    .line 553
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 554
    .local v1, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 557
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 559
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V

    .line 560
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 562
    .end local v1    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_1
    return-void
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 701
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 704
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 705
    .local v4, "n":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 706
    const/4 v0, 0x1

    return v0

    .line 704
    .end local v4    # "n":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 711
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_1
    return v0
.end method


# virtual methods
.method clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .locals 3
    .param p1, "clientRecord"    # Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 494
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 496
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "MediaRouterService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    const-string v0, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 415
    const-string v0, "Global state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 420
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 421
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 422
    .local v3, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 423
    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 420
    .end local v3    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;

    .line 292
    if-eqz p1, :cond_0

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 298
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService;->getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    return-object v3

    .line 300
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 293
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .locals 5
    .param p1, "client"    # Landroid/media/IMediaRouterClient;

    .line 309
    if-eqz p1, :cond_1

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 316
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 318
    .local v3, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    if-eqz v3, :cond_0

    .line 320
    :try_start_2
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget v4, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    invoke-virtual {v2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    return v2

    .line 322
    :cond_0
    const/4 v2, 0x0

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return v2

    .line 318
    .end local v3    # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 324
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 310
    .end local v0    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitor()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 16
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 224
    move-object/from16 v8, p0

    if-eqz p1, :cond_2

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 229
    .local v9, "uid":I
    move-object/from16 v10, p2

    invoke-direct {v8, v9, v10}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 234
    .local v11, "pid":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "registerClientAsUser"

    move v1, v11

    move v2, v9

    move/from16 v3, p3

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 236
    .local v12, "resolvedUserId":I
    iget-object v0, v8, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 239
    .local v7, "trusted":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 241
    .local v13, "token":J
    :try_start_0
    iget-object v15, v8, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move v4, v11

    move-object/from16 v5, p2

    move v6, v12

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V

    .line 243
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    nop

    .line 247
    return-void

    .line 243
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "trusted":Z
    .end local v9    # "uid":I
    .end local v11    # "pid":I
    .end local v12    # "resolvedUserId":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .restart local v7    # "trusted":Z
    .restart local v9    # "uid":I
    .restart local v11    # "pid":I
    .restart local v12    # "resolvedUserId":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 230
    .end local v7    # "trusted":Z
    .end local v11    # "pid":I
    .end local v12    # "resolvedUserId":I
    .end local v13    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the calling uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    .end local v9    # "uid":I
    :cond_2
    move-object/from16 v10, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "groupId"    # Ljava/lang/String;

    .line 252
    if-eqz p1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "MediaRouterService"

    const-string v1, "Ignoring client group request because the client doesn\'t have the CONFIGURE_WIFI_DISPLAY permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 262
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V

    .line 266
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    nop

    .line 270
    return-void

    .line 266
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    .end local p2    # "groupId":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    .restart local p2    # "groupId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 253
    .end local v0    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    .line 371
    if-eqz p1, :cond_1

    .line 374
    if-eqz p2, :cond_0

    .line 378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 380
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 382
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    nop

    .line 386
    return-void

    .line 382
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    .end local p2    # "routeId":Ljava/lang/String;
    .end local p3    # "volume":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    .restart local p2    # "routeId":Ljava/lang/String;
    .restart local p3    # "volume":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 375
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "direction"    # I

    .line 391
    if-eqz p1, :cond_1

    .line 394
    if-eqz p2, :cond_0

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 400
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 402
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    nop

    .line 406
    return-void

    .line 402
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    .end local p2    # "routeId":Ljava/lang/String;
    .end local p3    # "direction":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    .restart local p2    # "routeId":Ljava/lang/String;
    .restart local p3    # "direction":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 395
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreBluetoothA2dp()V
    .locals 5

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 434
    .local v1, "a2dpOn":Z
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 435
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    if-eqz v2, :cond_1

    .line 438
    :try_start_2
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "MediaRouterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreBluetoothA2dp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 445
    .end local v1    # "a2dpOn":Z
    .end local v2    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_0

    .line 435
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 443
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaRouterService"

    const-string v2, "RemoteException while calling setBluetoothA2dpOn."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method restoreRoute(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 452
    .local v2, "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 453
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 454
    .local v4, "cr":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget-object v5, v4, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    move-object v0, v4

    .line 456
    goto :goto_1

    .line 458
    .end local v4    # "cr":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :cond_0
    goto :goto_0

    .line 460
    .end local v2    # "userRecord":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz v0, :cond_2

    .line 463
    :try_start_1
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v1}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouterService"

    const-string v3, "Failed to call onRestoreRoute. Client probably died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_3

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 470
    :goto_3
    return-void

    .line 460
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeTypes"    # I
    .param p3, "activeScan"    # Z

    .line 332
    if-eqz p1, :cond_0

    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V

    .line 340
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    nop

    .line 344
    return-void

    .line 340
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    .end local p2    # "routeTypes":I
    .end local p3    # "activeScan":Z
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 342
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    .restart local p2    # "routeTypes":I
    .restart local p3    # "activeScan":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 333
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;
    .param p2, "routeId"    # Ljava/lang/String;
    .param p3, "explicit"    # Z

    .line 354
    if-eqz p1, :cond_0

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    .line 362
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    nop

    .line 366
    return-void

    .line 362
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    .end local p2    # "routeId":Ljava/lang/String;
    .end local p3    # "explicit":Z
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    .restart local p2    # "routeId":Ljava/lang/String;
    .restart local p3    # "explicit":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 355
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method switchUser()V
    .locals 7

    .line 473
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 475
    .local v1, "userId":I
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v2, v1, :cond_1

    .line 476
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 477
    .local v2, "oldUserId":I
    iput v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    .line 479
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 480
    .local v3, "oldUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v3, :cond_0

    .line 481
    iget-object v4, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 482
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 485
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 486
    .local v4, "newUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    if-eqz v4, :cond_1

    .line 487
    iget-object v5, v4, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 490
    .end local v1    # "userId":I
    .end local v2    # "oldUserId":I
    .end local v3    # "oldUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    .end local v4    # "newUser":Lcom/android/server/media/MediaRouterService$UserRecord;
    :cond_1
    monitor-exit v0

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemRunning()V
    .locals 3

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/media/MediaRouterService$3;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$3;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->switchUser()V

    .line 214
    return-void
.end method

.method public unregisterClient(Landroid/media/IMediaRouterClient;)V
    .locals 4
    .param p1, "client"    # Landroid/media/IMediaRouterClient;

    .line 275
    if-eqz p1, :cond_0

    .line 279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 281
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 283
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    nop

    .line 287
    return-void

    .line 283
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .end local p1    # "client":Landroid/media/IMediaRouterClient;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouterService;
    .restart local p1    # "client":Landroid/media/IMediaRouterClient;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 276
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
