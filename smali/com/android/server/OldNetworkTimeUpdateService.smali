.class public Lcom/android/server/OldNetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "OldNetworkTimeUpdateService.java"

# interfaces
.implements Lcom/android/server/NetworkTimeUpdateService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;,
        Lcom/android/server/OldNetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = false

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

.field private mNetworkTimeUpdateCallback:Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private final mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;

.field private final mTime:Landroid/util/NtpTrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 244
    new-instance v1, Lcom/android/server/OldNetworkTimeUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/OldNetworkTimeUpdateService$2;-><init>(Lcom/android/server/OldNetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    .line 104
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 105
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    .line 108
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 110
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 112
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 114
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 116
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 119
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "NetworkTimeUpdateService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OldNetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OldNetworkTimeUpdateService;

    .line 58
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/OldNetworkTimeUpdateService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OldNetworkTimeUpdateService;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/OldNetworkTimeUpdateService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OldNetworkTimeUpdateService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/OldNetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/OldNetworkTimeUpdateService;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OldNetworkTimeUpdateService;

    .line 58
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/OldNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OldNetworkTimeUpdateService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 58
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method private getNitzAge()J
    .locals 4

    .line 194
    iget-wide v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 195
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 197
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
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

    .line 157
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/OldNetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .locals 4
    .param p1, "event"    # I

    .line 168
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 175
    invoke-direct {p0, v2, v3}, Lcom/android/server/OldNetworkTimeUpdateService;->resetAlarm(J)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/OldNetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/OldNetworkTimeUpdateService;->updateSystemClock(I)V

    goto :goto_1

    .line 182
    :cond_1
    iget v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 183
    iget v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainCounter:I

    if-gt v1, v0, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 188
    invoke-direct {p0, v2, v3}, Lcom/android/server/OldNetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_1

    .line 184
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/OldNetworkTimeUpdateService;->resetAlarm(J)V

    .line 191
    :cond_4
    :goto_1
    return-void
.end method

.method private registerForAlarms()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/OldNetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/OldNetworkTimeUpdateService$1;-><init>(Lcom/android/server/OldNetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "interval"    # J

    .line 229
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 231
    .local v0, "now":J
    add-long v2, v0, p1

    .line 232
    .local v2, "next":J
    iget-object v4, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 233
    return-void
.end method

.method private updateSystemClock(I)V
    .locals 5
    .param p1, "event"    # I

    .line 206
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    .local v0, "forceUpdate":Z
    :goto_0
    if-nez v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/android/server/OldNetworkTimeUpdateService;->getNitzAge()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 210
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 214
    .local v1, "skew":J
    iget v3, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 216
    return-void

    .line 220
    .end local v1    # "skew":J
    :cond_2
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 221
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    const-string v0, "PollingIntervalMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-wide v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 319
    const-string v0, "\nPollingIntervalShorterMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-wide v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainTimesMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const-string v0, "TimeErrorThresholdMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v0, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache age: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache certainty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 328
    return-void
.end method

.method public systemRunning()V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/android/server/OldNetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 126
    invoke-direct {p0}, Lcom/android/server/OldNetworkTimeUpdateService;->registerForAlarms()V

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v1, Lcom/android/server/OldNetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/OldNetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/OldNetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v1, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/OldNetworkTimeUpdateService;Lcom/android/server/OldNetworkTimeUpdateService$1;)V

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    .line 132
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/OldNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    iget-object v3, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 134
    new-instance v1, Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;

    .line 135
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/OldNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 136
    return-void
.end method
