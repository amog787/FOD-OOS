.class public final Lcom/android/server/audio/OpAudioMonitor;
.super Ljava/lang/Object;
.source "OpAudioMonitor.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ADCN:Ljava/lang/String; = "audio_connect"

.field private static final ALSD:Ljava/lang/String; = "alert_slider"

.field private static final APPID:Ljava/lang/String; = "RBS8PPYT2W"

.field private static final EAPPID:Ljava/lang/String; = "51WRFPTQT7"

.field private static final EASC:Ljava/lang/String; = "audioserver.crash"

.field private static final TAG:Ljava/lang/String; = "OpAudioMonitor"

.field private static final VLST:Ljava/lang/String; = "volume_set"

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentDevice:I

.field private mCurrentIndex:I

.field private mCurrentPackageName:Ljava/lang/String;

.field private mCurrentStreamType:I

.field private mHsTime:J

.field mPkStartTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mStartTime:J

.field private mStartVolumeTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;-><init>(Lcom/android/server/audio/OpAudioMonitor;Lcom/android/server/audio/OpAudioMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    .line 78
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    .line 79
    iput-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mHsTime:J

    .line 91
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    .line 97
    iput-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    .line 98
    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 99
    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentDevice:I

    .line 100
    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    .line 104
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    .line 107
    sget-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandlerThread:Landroid/os/HandlerThread;

    const-string v1, "OpAudioMonitor"

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandlerThread:Landroid/os/HandlerThread;

    .line 109
    sget-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/audio/OpAudioMonitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandler:Landroid/os/Handler;

    .line 113
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init mStartVolumeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/audio/OpAudioMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/OpAudioMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 58
    iget v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/audio/OpAudioMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # I

    .line 58
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/audio/OpAudioMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 58
    iget-wide v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/audio/OpAudioMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/audio/OpAudioMonitor;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor;->convertRingerMode2AlertSlider(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/OpAudioMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/OpAudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # I
    .param p8, "x5"    # Ljava/lang/String;

    .line 58
    invoke-direct/range {p0 .. p8}, Lcom/android/server/audio/OpAudioMonitor;->setMdmEvent(JJJILjava/lang/String;)V

    return-void
.end method

.method private convertDevice2MdmType(I)I
    .locals 1
    .param p1, "device"    # I

    .line 365
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 366
    const/4 v0, 0x5

    return v0

    .line 367
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_2

    .line 370
    const/4 v0, 0x3

    return v0

    .line 372
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 368
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private convertRingerMode2AlertSlider(I)I
    .locals 1
    .param p1, "m"    # I

    .line 392
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private convertStream2MdmType(I)Ljava/lang/String;
    .locals 1
    .param p1, "streamType"    # I

    .line 378
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 379
    const-string/jumbo v0, "media_volume"

    return-object v0

    .line 380
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 381
    const-string/jumbo v0, "ring_volume"

    return-object v0

    .line 382
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 383
    const-string v0, "alarm_volume"

    return-object v0

    .line 384
    :cond_2
    if-nez p1, :cond_3

    .line 385
    const-string/jumbo v0, "voice_volume"

    return-object v0

    .line 387
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private setMdmEvent(JJJILjava/lang/String;)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "lapse"    # J
    .param p7, "device"    # I
    .param p8, "packageName"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p7}, Lcom/android/server/audio/OpAudioMonitor;->convertDevice2MdmType(I)I

    move-result v0

    .line 179
    .local v0, "mdmDevice":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "use_time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start_time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end_time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v2, "package_name"

    invoke-interface {v1, v2, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appid"

    const-string v4, "RBS8PPYT2W"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v3, "audio_connect"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDM, playing,device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lapse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpAudioMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private setMdmVolumeEvent(III)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 205
    invoke-direct {p0, p3}, Lcom/android/server/audio/OpAudioMonitor;->convertDevice2MdmType(I)I

    move-result v0

    .line 206
    .local v0, "mdmDevice":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor;->convertStream2MdmType(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "mdmVolume":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    if-nez v1, :cond_1

    .line 212
    return-void

    .line 215
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "volume_type"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "volume_index"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "device"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "appid"

    const-string v5, "RBS8PPYT2W"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v4, "volume_set"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM, set volume type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpAudioMonitor"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method private wasStreamActiveRecently(II)Z
    .locals 1
    .param p1, "stream"    # I
    .param p2, "delayms"    # I

    .line 360
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 360
    :goto_1
    return v0
.end method


# virtual methods
.method public loadVolumeIndex(III)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    sub-long/2addr v0, v4

    .line 312
    .local v0, "lapse":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    .line 317
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    if-ltz v2, :cond_7

    iget v3, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentDevice:I

    if-ltz v3, :cond_7

    iget v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    if-ltz v4, :cond_7

    const-wide/16 v5, 0x3c

    cmp-long v5, v0, v5

    if-gtz v5, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    if-ne v3, p3, :cond_3

    .line 325
    if-ne v4, p1, :cond_1

    .line 326
    if-eq v2, p2, :cond_6

    .line 327
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->setMdmVolumeEvent(III)V

    .line 328
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    goto :goto_0

    .line 331
    :cond_1
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->setMdmVolumeEvent(III)V

    .line 332
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    if-eq v2, p2, :cond_2

    .line 333
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 335
    :cond_2
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    goto :goto_0

    .line 338
    :cond_3
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->setMdmVolumeEvent(III)V

    .line 339
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    if-eq v2, p2, :cond_4

    .line 340
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 342
    :cond_4
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    if-eq v2, p1, :cond_5

    .line 343
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    .line 345
    :cond_5
    iput p3, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentDevice:I

    .line 347
    :cond_6
    :goto_0
    return-void

    .line 318
    :cond_7
    :goto_1
    const-string v2, "OpAudioMonitor"

    const-string/jumbo v3, "loadVolumeIndex current index/device/streamType < 0 or lapse <= 60, skip!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 320
    iput p3, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentDevice:I

    .line 321
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    .line 322
    return-void
.end method

.method public logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/audio/OpAudioMonitor$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/audio/OpAudioMonitor$1;-><init>(Lcom/android/server/audio/OpAudioMonitor;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public onAlarm()V
    .locals 14

    .line 149
    const-string v0, "OpAudioMonitor"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v7, v1, v3

    .line 151
    .local v7, "current":J
    iget-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    sub-long v9, v7, v1

    .line 153
    .local v9, "lapse":J
    const-wide/16 v1, 0x3c

    cmp-long v1, v9, v1

    if-lez v1, :cond_0

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    invoke-direct {p0, v2}, Lcom/android/server/audio/OpAudioMonitor;->convertRingerMode2AlertSlider(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "switch_status"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "use_time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appid"

    const-string v4, "RBS8PPYT2W"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v3, "alert_slider"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDM, AudioManager.RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lapse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iput-wide v7, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    .line 168
    iget-object v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_1

    .line 169
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v11

    .line 170
    .local v11, "toAlarm":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 171
    .local v12, "millis":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-string v4, "OpAudioMonitor"

    move-wide v2, v12

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 174
    .end local v11    # "toAlarm":Ljava/time/LocalDateTime;
    .end local v12    # "millis":J
    :cond_1
    return-void
.end method

.method public onAudioServerDied()V
    .locals 4

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audioserver_crash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appid"

    const-string v3, "51WRFPTQT7"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "audioserver.crash"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 356
    return-void
.end method

.method public playerEvent(IIIILjava/lang/String;)V
    .locals 22
    .param p1, "piid"    # I
    .param p2, "streamType"    # I
    .param p3, "event"    # I
    .param p4, "device"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 240
    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    iput-object v12, v9, Lcom/android/server/audio/OpAudioMonitor;->mCurrentPackageName:Ljava/lang/String;

    .line 241
    const-wide/16 v0, 0x3e8

    const-string v2, "MDM,music is not active, clear"

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v13, "OpAudioMonitor"

    const/4 v5, 0x2

    if-ne v10, v5, :cond_1

    .line 242
    const-string v5, "MDM,start."

    invoke-static {v13, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {v9, v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 255
    :cond_0
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 256
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM,start put pk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 260
    :cond_1
    if-eq v10, v4, :cond_2

    const/4 v5, 0x4

    if-ne v10, v5, :cond_6

    .line 262
    :cond_2
    const-string v5, "MDM,stop."

    invoke-static {v13, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {v9, v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 265
    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 269
    return-void

    .line 276
    :cond_3
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 279
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 280
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 281
    .local v14, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v7, v2, v0

    .line 282
    .local v7, "endTime":J
    sub-long v5, v7, v14

    .line 283
    .local v5, "lapse":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM,stop startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-wide/16 v0, 0x5

    cmp-long v0, v5, v0

    const-string v3, " packageName:"

    const-string v4, " lapse:"

    if-lez v0, :cond_4

    const-wide/32 v0, 0x15180

    cmp-long v0, v5, v0

    if-gez v0, :cond_4

    .line 290
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object v10, v3

    move-wide/from16 v16, v14

    move-object v14, v4

    .end local v14    # "startTime":J
    .local v16, "startTime":J
    move-wide v3, v7

    move-wide/from16 v18, v5

    .end local v5    # "lapse":J
    .local v18, "lapse":J
    move-wide/from16 v20, v7

    .end local v7    # "endTime":J
    .local v20, "endTime":J
    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/audio/OpAudioMonitor;->setMdmEvent(JJJILjava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM,device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v18

    .end local v18    # "lapse":J
    .local v7, "lapse":J
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v16    # "startTime":J
    .end local v20    # "endTime":J
    .restart local v5    # "lapse":J
    .local v7, "endTime":J
    .restart local v14    # "startTime":J
    :cond_4
    move-object v10, v3

    move-wide/from16 v20, v7

    move-wide/from16 v16, v14

    move-object v14, v4

    move-wide v7, v5

    .line 294
    .end local v5    # "lapse":J
    .end local v14    # "startTime":J
    .local v7, "lapse":J
    .restart local v16    # "startTime":J
    .restart local v20    # "endTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM,ignore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v7    # "lapse":J
    .end local v16    # "startTime":J
    .end local v20    # "endTime":J
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM,stop remove start time for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_6
    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 11

    .line 127
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 129
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 131
    .local v0, "toAlarm":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 132
    .local v9, "millis":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpAudioMonitor"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const/4 v8, 0x0

    const-string v6, "OpAudioMonitor"

    move-wide v4, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 135
    .end local v0    # "toAlarm":Ljava/time/LocalDateTime;
    .end local v9    # "millis":J
    :cond_0
    return-void
.end method
