.class final Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.super Landroid/os/Handler;
.source "NetworkLoggingHandler.java"


# static fields
.field private static final BATCH_FINALIZATION_TIMEOUT_ALARM_INTERVAL_MS:J = 0x1b7740L

.field private static final BATCH_FINALIZATION_TIMEOUT_MS:J = 0x5265c0L

.field private static final FORCE_FETCH_THROTTLE_NS:J

.field static final LOG_NETWORK_EVENT_MSG:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_BATCHES:I = 0x5

.field private static final MAX_EVENTS_PER_BATCH:I = 0x4b0

.field static final NETWORK_EVENT_KEY:Ljava/lang/String; = "network_event"

.field private static final NETWORK_LOGGING_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "NetworkLogging.batchTimeout"

.field private static final RETRIEVED_BATCH_DISCARD_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mBatches:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mId:J

.field private mLastFinalizationNanos:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mLastRetrievedBatchToken:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mNetworkEvents:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "dpm"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 119
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "dpm"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p3, "id"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 78
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 125
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 126
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 127
    iput-wide p3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 128
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 43
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 43
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/NetworkLoggingHandler;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    return-void
.end method

.method private buildDeviceOwnerMessageLocked()Landroid/os/Bundle;
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 265
    .local v1, "lastBatchSize":I
    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    const-string v4, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    return-object v0
.end method

.method private finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 224
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "notificationExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/NetworkEvent;

    .line 229
    .local v2, "event":Landroid/app/admin/NetworkEvent;
    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    invoke-virtual {v2, v5, v6}, Landroid/app/admin/NetworkEvent;->setId(J)V

    .line 230
    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    .line 231
    sget-object v3, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached maximum id value; wrapping around ."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    goto :goto_1

    .line 234
    :cond_0
    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mId:J

    .line 236
    .end local v2    # "event":Landroid/app/admin/NetworkEvent;
    :goto_1
    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 242
    :cond_2
    iget-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 243
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 245
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v1, :cond_4

    .line 246
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    .line 251
    :cond_3
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Was about to finalize the batch, but there were no events to send to the DPC, the batchToken of last available batch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 256
    return-object v0
.end method

.method private notifyDeviceOwner(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 273
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending network logging batch broadcast to device owner, batchToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v2, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Shouldn\'t be called with NetworkLoggingHandler lock held"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 280
    return-void
.end method


# virtual methods
.method declared-synchronized discardLogs()V
    .locals 2

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 218
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Discarded all network logs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 215
    .end local p0    # "this":Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method forceBatchFinalization()J
    .locals 6

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastFinalizationNanos:J

    sget-wide v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->FORCE_FETCH_THROTTLE_NS:J

    add-long/2addr v0, v2

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 176
    .local v0, "toWaitNanos":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 177
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    monitor-exit p0

    return-wide v2

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    .line 180
    .local v0, "notificationExtras":Landroid/os/Bundle;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 184
    :cond_1
    return-wide v2

    .line 180
    .end local v0    # "notificationExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 150
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "NetworkLoggingHandler received an unknown of message."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "network_event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/admin/NetworkEvent;

    .line 135
    .local v0, "networkEvent":Landroid/app/admin/NetworkEvent;
    if-eqz v0, :cond_3

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "notificationExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x4b0

    if-lt v2, v3, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 142
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-eqz v1, :cond_2

    .line 144
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 146
    .end local v1    # "notificationExtras":Landroid/os/Bundle;
    :cond_2
    goto :goto_0

    .line 142
    .restart local v1    # "notificationExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 154
    .end local v0    # "networkEvent":Landroid/app/admin/NetworkEvent;
    .end local v1    # "notificationExtras":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$retrieveFullLogBatch$0$NetworkLoggingHandler(J)V
    .locals 4
    .param p1, "batchToken"    # J

    .line 294
    monitor-enter p0

    .line 295
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 298
    :cond_0
    monitor-exit p0

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Paused network logging"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 187
    .end local p0    # "this":Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resume()V
    .locals 5

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "notificationExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 195
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    if-nez v1, :cond_0

    .line 196
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to resume network logging, but logging is not paused."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resumed network logging. Current batch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", LastRetrievedBatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 205
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    iget-wide v3, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildDeviceOwnerMessageLocked()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 209
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v0, :cond_2

    .line 211
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V

    .line 213
    :cond_2
    return-void

    .line 209
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method declared-synchronized retrieveFullLogBatch(J)Ljava/util/List;
    .locals 4
    .param p1, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 286
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 293
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    iput-wide p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    .line 302
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 282
    .end local v0    # "index":I
    .end local p0    # "this":Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    .end local p1    # "batchToken":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method scheduleBatchFinalization()V
    .locals 13

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c0

    add-long/2addr v0, v2

    .line 160
    .local v0, "when":J
    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v11, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatchTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v5, 0x2

    const-wide/32 v8, 0x1b7740

    const-string v10, "NetworkLogging.batchTimeout"

    move-wide v6, v0

    move-object v12, p0

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 163
    sget-object v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;

    const-string v3, "Scheduled a new batch finalization alarm 5400000ms from now."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method
