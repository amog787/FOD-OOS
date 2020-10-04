.class final Lcom/android/server/tv/TvInputHal;
.super Ljava/lang/Object;
.source "TvInputHal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHal$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ERROR_NO_INIT:I = -0x1

.field public static final ERROR_STALE_CONFIG:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x3

.field public static final EVENT_DEVICE_AVAILABLE:I = 0x1

.field public static final EVENT_DEVICE_UNAVAILABLE:I = 0x2

.field public static final EVENT_FIRST_FRAME_CAPTURED:I = 0x4

.field public static final EVENT_STREAM_CONFIGURATION_CHANGED:I = 0x3

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/server/tv/TvInputHal$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPtr:J

.field private final mStreamConfigGenerations:Landroid/util/SparseIntArray;

.field private final mStreamConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHal$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/tv/TvInputHal$Callback;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mPendingMessageQueue:Ljava/util/Queue;

    .line 75
    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method private deviceAvailableFromNative(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 138
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method private deviceUnavailableFromNative(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 142
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method

.method private firstFrameCapturedFromNative(II)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "streamId"    # I

    .line 150
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    .line 151
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void
.end method

.method private static native nativeAddOrUpdateStream(JIILandroid/view/Surface;)I
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;
.end method

.method private native nativeOpen(Landroid/os/MessageQueue;)J
.end method

.method private static native nativeRemoveStream(JII)I
.end method

.method private retrieveStreamConfigsLocked(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 128
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 129
    .local v0, "generation":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-static {v2, v3, p1, v0}, Lcom/android/server/tv/TvInputHal;->nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    return-void
.end method

.method private streamConfigsChangedFromNative(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 146
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method


# virtual methods
.method public addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "streamConfig"    # Landroid/media/tv/TvStreamConfig;

    .line 86
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 88
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 91
    .local v1, "generation":I
    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 92
    const/4 v2, -0x2

    monitor-exit v0

    return v2

    .line 94
    :cond_1
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result v5

    invoke-static {v3, v4, p1, v5, p2}, Lcom/android/server/tv/TvInputHal;->nativeAddOrUpdateStream(JIILandroid/view/Surface;)I

    move-result v3

    if-nez v3, :cond_2

    .line 95
    monitor-exit v0

    return v2

    .line 97
    :cond_2
    const/4 v2, -0x3

    monitor-exit v0

    return v2

    .line 99
    .end local v1    # "generation":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 122
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHal;->nativeClose(J)V

    .line 124
    :cond_0
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 206
    sget-object v0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 200
    .local v0, "deviceId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 201
    .local v2, "streamId":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v3, v0, v2}, Lcom/android/server/tv/TvInputHal$Callback;->onFirstFrameCaptured(II)V

    .line 202
    goto :goto_0

    .line 186
    .end local v0    # "deviceId":I
    .end local v2    # "streamId":I
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 187
    .restart local v0    # "deviceId":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    .line 192
    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/tv/TvStreamConfig;

    .line 193
    .local v3, "configs":[Landroid/media/tv/TvStreamConfig;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v2, v0, v3}, Lcom/android/server/tv/TvInputHal$Callback;->onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V

    .line 195
    goto :goto_0

    .line 193
    .end local v3    # "configs":[Landroid/media/tv/TvStreamConfig;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 176
    .end local v0    # "deviceId":I
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 180
    .restart local v0    # "deviceId":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v2, v0}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceUnavailable(I)V

    .line 181
    goto :goto_0

    .line 163
    .end local v0    # "deviceId":I
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 164
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_2
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    .line 169
    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/tv/TvStreamConfig;

    .line 170
    .restart local v3    # "configs":[Landroid/media/tv/TvStreamConfig;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    invoke-interface {v2, v0, v3}, Lcom/android/server/tv/TvInputHal$Callback;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    .line 172
    nop

    .line 210
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "configs":[Landroid/media/tv/TvStreamConfig;
    :goto_0
    return v1

    .line 170
    .restart local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public init()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHal;->nativeOpen(Landroid/os/MessageQueue;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStream(ILandroid/media/tv/TvStreamConfig;)I
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "streamConfig"    # Landroid/media/tv/TvStreamConfig;

    .line 103
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 105
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 108
    .local v1, "generation":I
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 109
    const/4 v2, -0x2

    monitor-exit v0

    return v2

    .line 111
    :cond_1
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result v5

    invoke-static {v3, v4, p1, v5}, Lcom/android/server/tv/TvInputHal;->nativeRemoveStream(JII)I

    move-result v3

    if-nez v3, :cond_2

    .line 112
    monitor-exit v0

    return v2

    .line 114
    :cond_2
    const/4 v2, -0x3

    monitor-exit v0

    return v2

    .line 116
    .end local v1    # "generation":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
