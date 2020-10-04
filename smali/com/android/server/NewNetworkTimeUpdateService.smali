.class public Lcom/android/server/NewNetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "NewNetworkTimeUpdateService.java"

# interfaces
.implements Lcom/android/server/NetworkTimeUpdateService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;,
        Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = true

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NOT_SET:J = -0x1L

.field private static final POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetwork:Landroid/net/Network;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private final mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

.field private final mTime:Landroid/util/NtpTrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 253
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/NewNetworkTimeUpdateService$2;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    .line 109
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 110
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    .line 113
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 115
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 117
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 119
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 121
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 124
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "NetworkTimeUpdateService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NewNetworkTimeUpdateService;

    .line 58
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NewNetworkTimeUpdateService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NewNetworkTimeUpdateService;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/NewNetworkTimeUpdateService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NewNetworkTimeUpdateService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NewNetworkTimeUpdateService;

    .line 58
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NewNetworkTimeUpdateService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 58
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method private getNitzAge()J
    .locals 4

    .line 203
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 204
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 206
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    const/4 v1, 0x0

    const-string v2, "auto_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onPollNetworkTime(I)V
    .locals 2
    .param p1, "event"    # I

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPollNetworkTime(): isAutomaticTimeRequested() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultNetwork = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 169
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 172
    nop

    .line 173
    return-void

    .line 171
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .locals 4
    .param p1, "event"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 178
    const-string v0, "NetworkTimeUpdateService"

    const-string v1, "Stale NTP fix; forcing refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceSync()Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 184
    invoke-direct {p0, v2, v3}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    .line 185
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->updateSystemClock(I)V

    goto :goto_1

    .line 191
    :cond_1
    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 192
    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    if-gt v1, v0, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 197
    invoke-direct {p0, v2, v3}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_1

    .line 193
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    .line 200
    :cond_4
    :goto_1
    return-void
.end method

.method private registerForAlarms()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NewNetworkTimeUpdateService$1;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "interval"    # J

    .line 238
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 240
    .local v0, "now":J
    add-long v2, v0, p1

    .line 241
    .local v2, "next":J
    iget-object v4, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 242
    return-void
.end method

.method private updateSystemClock(I)V
    .locals 7
    .param p1, "event"    # I

    .line 215
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    .local v0, "forceUpdate":Z
    :goto_0
    if-nez v0, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->getNitzAge()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v1, v1, v3

    const-string v2, "NetworkTimeUpdateService"

    if-gez v1, :cond_1

    .line 218
    const-string v1, "Ignoring NTP update due to recent NITZ"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 223
    .local v3, "skew":J
    iget v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 224
    const-string v1, "Ignoring NTP update due to low skew"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 229
    .end local v3    # "skew":J
    :cond_2
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 230
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    const-string v0, "PollingIntervalMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 336
    const-string v0, "\nPollingIntervalShorterMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainTimesMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string v0, "TimeErrorThresholdMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache age: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache certainty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 345
    return-void
.end method

.method public systemRunning()V
    .locals 4

    .line 130
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 131
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->registerForAlarms()V

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;Lcom/android/server/NewNetworkTimeUpdateService$1;)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    .line 137
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    iget-object v3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 139
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    .line 140
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 141
    return-void
.end method
