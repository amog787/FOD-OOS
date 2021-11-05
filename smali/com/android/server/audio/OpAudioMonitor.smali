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

.field private static final APP_HEAD:Ljava/lang/String; = "x-api-key"

.field private static final APP_HEAD_VALUE:Ljava/lang/String; = "zfQ8IMsGsJ4sNsZeNvG5hGTIS565ojd4EbuQmMw1"

.field private static final AWL:Ljava/lang/String; = "widevine.lost"

.field private static final EAPPID:Ljava/lang/String; = "51WRFPTQT7"

.field private static final EASC:Ljava/lang/String; = "audioserver.crash"

.field private static final JSON_KEYBOX_TAG:Ljava/lang/String; = "keybox"

.field private static final JSON_SHAREKEY_TAG:Ljava/lang/String; = "sharedKey"

.field private static final JSON_SIGN_TAG:Ljava/lang/String; = "sign"

.field private static final KEYBOX_SERVER_URL:Ljava/lang/String; = "https://kb-ota.1plus.io/v1/keybox"

.field private static final NO_KEYBOX_JASON:Ljava/lang/String; = "Nokeybox"

.field private static final OTA_GET_LICENSE:Ljava/lang/String; = "otaGetLicense"

.field private static final OTA_INSTALL_KEYBOX:Ljava/lang/String; = "otaInstallKeybox"

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

.field private mDebug:Z

.field private mHsTime:J

.field private mKeyboxJson:Ljava/lang/String;

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

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "Nokeybox"

    iput-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mKeyboxJson:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;-><init>(Lcom/android/server/audio/OpAudioMonitor;Lcom/android/server/audio/OpAudioMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    .line 99
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    .line 100
    iput-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mHsTime:J

    .line 105
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    .line 109
    iput-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    .line 110
    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 111
    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentDevice:I

    .line 112
    iput v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mDebug:Z

    .line 117
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    .line 119
    sget-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandlerThread:Landroid/os/HandlerThread;

    const-string v1, "OpAudioMonitor"

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandlerThread:Landroid/os/HandlerThread;

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/audio/OpAudioMonitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandler:Landroid/os/Handler;

    .line 125
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init mStartVolumeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/audio/OpAudioMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 69
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/audio/OpAudioMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor;->getKeyboxFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/audio/OpAudioMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mKeyboxJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/audio/OpAudioMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 69
    iget v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/audio/OpAudioMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/audio/OpAudioMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 69
    iget-wide v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/audio/OpAudioMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # J

    .line 69
    iput-wide p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/audio/OpAudioMonitor;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor;->convertRingerMode2AlertSlider(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/OpAudioMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/OpAudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # I
    .param p8, "x5"    # Ljava/lang/String;

    .line 69
    invoke-direct/range {p0 .. p8}, Lcom/android/server/audio/OpAudioMonitor;->setMdmEvent(JJJILjava/lang/String;)V

    return-void
.end method

.method private static byte2Hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 492
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 493
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 494
    .local v1, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 495
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 497
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertDevice2MdmType(I)I
    .locals 2
    .param p1, "device"    # I

    .line 511
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 512
    const/4 v0, 0x5

    return v0

    .line 513
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 515
    :cond_1
    const/high16 v1, 0x4000000

    if-ne p1, v1, :cond_2

    .line 516
    const/4 v0, 0x3

    return v0

    .line 519
    :cond_2
    const/16 v1, 0x80

    if-ne p1, v1, :cond_3

    .line 520
    return v0

    .line 522
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 514
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private convertRingerMode2AlertSlider(I)I
    .locals 1
    .param p1, "m"    # I

    .line 540
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private convertStream2MdmType(I)Ljava/lang/String;
    .locals 1
    .param p1, "streamType"    # I

    .line 527
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 528
    const-string/jumbo v0, "media_volume"

    return-object v0

    .line 529
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 530
    const-string/jumbo v0, "ring_volume"

    return-object v0

    .line 531
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 532
    const-string v0, "alarm_volume"

    return-object v0

    .line 533
    :cond_2
    if-nez p1, :cond_3

    .line 534
    const-string/jumbo v0, "voice_volume"

    return-object v0

    .line 536
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getKeyboxFromServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "license"    # Ljava/lang/String;

    .line 419
    const-string/jumbo v0, "ro.build.ota.versionname"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "osName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"osName\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    iget-boolean v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mDebug:Z

    const-string v2, "OpAudioMonitor"

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "license: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://kb-ota.1plus.io/v1/keybox"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 428
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 429
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 430
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 431
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 432
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 433
    const-string v5, "Content-Type"

    const-string v6, "application/json;charset=utf-8"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v5, "x-api-key"

    const-string/jumbo v6, "zfQ8IMsGsJ4sNsZeNvG5hGTIS565ojd4EbuQmMw1"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 437
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 438
    .local v5, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 441
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 442
    .local v6, "responseCode":I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    .line 443
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 444
    .local v7, "inputStream":Ljava/io/InputStream;
    invoke-static {v7, v1}, Lcom/android/server/audio/OpAudioMonitor;->inputstr2StrReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, "result":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/server/audio/OpAudioMonitor;->mDebug:Z

    if-eqz v9, :cond_1

    .line 446
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "result============="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_1
    return-object v8

    .line 452
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .end local v6    # "responseCode":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "result":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method private static getSHA256Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 478
    const-string v0, ""

    .line 480
    .local v0, "encodeStr":Ljava/lang/String;
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 481
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 482
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/audio/OpAudioMonitor;->byte2Hex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 487
    goto :goto_0

    .line 485
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 484
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 487
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 488
    :goto_0
    return-object v0
.end method

.method private static inputstr2StrReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encode"    # Ljava/lang/String;

    .line 457
    const-string v0, ""

    .line 459
    .local v0, "str":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    const-string/jumbo v1, "utf-8"

    move-object p1, v1

    .line 462
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 463
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_2

    .line 466
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 469
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 473
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0
.end method

.method private setMdmEvent(JJJILjava/lang/String;)V
    .locals 16
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "lapse"    # J
    .param p7, "device"    # I
    .param p8, "packageName"    # Ljava/lang/String;

    .line 187
    move-object/from16 v1, p0

    move-wide/from16 v2, p5

    move-object/from16 v4, p8

    move/from16 v5, p7

    invoke-direct {v1, v5}, Lcom/android/server/audio/OpAudioMonitor;->convertDevice2MdmType(I)I

    move-result v6

    .line 189
    .local v6, "mdmDevice":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    .line 194
    .local v7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "type"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "use_time"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "start_time"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v8, "end_time"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v0, "package_name"

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    .line 201
    .local v8, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    const-string v9, "RBS8PPYT2W"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "audio_connect"

    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 206
    iget-object v0, v1, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 207
    return-void

    .line 209
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.media.action.CALCULATE_PLAY_TIME"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 210
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "com.oneplus.account"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string/jumbo v0, "startTime"

    move-wide/from16 v10, p1

    invoke-virtual {v9, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    const-string v0, "endTime"

    move-wide/from16 v12, p3

    invoke-virtual {v9, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    const-string/jumbo v0, "playingTime"

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    const-string/jumbo v0, "packageName"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/high16 v0, 0x4000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 221
    .local v14, "ident":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM, playing,device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lapse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAudioMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 223
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v0
.end method

.method private setMdmVolumeEvent(III)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 232
    invoke-direct {p0, p3}, Lcom/android/server/audio/OpAudioMonitor;->convertDevice2MdmType(I)I

    move-result v0

    .line 233
    .local v0, "mdmDevice":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor;->convertStream2MdmType(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "mdmVolume":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    if-nez v1, :cond_1

    .line 239
    return-void

    .line 242
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "volume_type"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "volume_index"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "device"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "appid"

    const-string v5, "RBS8PPYT2W"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v4, "volume_set"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 251
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

    .line 252
    return-void
.end method

.method private wasStreamActiveRecently(II)Z
    .locals 1
    .param p1, "stream"    # I
    .param p2, "delayms"    # I

    .line 506
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
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

    .line 506
    :goto_1
    return v0
.end method


# virtual methods
.method public loadVolumeIndex(III)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    sub-long/2addr v0, v4

    .line 309
    .local v0, "lapse":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartVolumeTime:J

    .line 310
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

    .line 317
    :cond_0
    if-ne v3, p3, :cond_3

    .line 318
    if-ne v4, p1, :cond_1

    .line 319
    if-eq v2, p2, :cond_6

    .line 320
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->setMdmVolumeEvent(III)V

    .line 321
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->setMdmVolumeEvent(III)V

    .line 325
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    if-eq v2, p2, :cond_2

    .line 326
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 328
    :cond_2
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    goto :goto_0

    .line 331
    :cond_3
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/audio/OpAudioMonitor;->setMdmVolumeEvent(III)V

    .line 332
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    if-eq v2, p2, :cond_4

    .line 333
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 335
    :cond_4
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    if-eq v2, p1, :cond_5

    .line 336
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    .line 338
    :cond_5
    iput p3, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentDevice:I

    .line 340
    :cond_6
    :goto_0
    return-void

    .line 311
    :cond_7
    :goto_1
    const-string v2, "OpAudioMonitor"

    const-string/jumbo v3, "loadVolumeIndex current index/device/streamType < 0 or lapse <= 60, skip!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput p2, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentIndex:I

    .line 313
    iput p3, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentDevice:I

    .line 314
    iput p1, p0, Lcom/android/server/audio/OpAudioMonitor;->mCurrentStreamType:I

    .line 315
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

    .line 149
    .local p2, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/audio/OpAudioMonitor;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/audio/OpAudioMonitor$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/audio/OpAudioMonitor$1;-><init>(Lcom/android/server/audio/OpAudioMonitor;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public onAlarm()V
    .locals 14

    .line 160
    const-string v0, "OpAudioMonitor"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v7, v1, v3

    .line 162
    .local v7, "current":J
    iget-wide v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    sub-long v9, v7, v1

    .line 164
    .local v9, "lapse":J
    const-wide/16 v1, 0x3c

    cmp-long v1, v9, v1

    if-lez v1, :cond_0

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mRingerMode:I

    invoke-direct {p0, v2}, Lcom/android/server/audio/OpAudioMonitor;->convertRingerMode2AlertSlider(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "switch_status"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "use_time"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appid"

    const-string v4, "RBS8PPYT2W"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v3, "alert_slider"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 173
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

    .line 176
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iput-wide v7, p0, Lcom/android/server/audio/OpAudioMonitor;->mStartTime:J

    .line 178
    iget-object v1, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_1

    .line 179
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v11

    .line 180
    .local v11, "toAlarm":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 181
    .local v12, "millis":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-string v4, "OpAudioMonitor"

    move-wide v2, v12

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 184
    .end local v11    # "toAlarm":Ljava/time/LocalDateTime;
    .end local v12    # "millis":J
    :cond_1
    return-void
.end method

.method public onAudioServerDied()V
    .locals 4

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audioserver_crash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appid"

    const-string v3, "51WRFPTQT7"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v2, "audioserver.crash"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 349
    return-void
.end method

.method public otaInstallWidevineKeybox()V
    .locals 7

    .line 373
    const-string v0, "can not get OneplusDrmKey service"

    const-string v1, "OpAudioMonitor"

    const/4 v2, 0x0

    .line 374
    .local v2, "oneplusDrmKey":Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro.boot.serialno"

    const-string v5, "default"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/audio/OpAudioMonitor;->getSHA256Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ro.boot.project_name"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "idDm":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->getService()Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v4

    .line 382
    nop

    .line 386
    :try_start_1
    const-string/jumbo v4, "otaGetLicense"

    new-instance v5, Lcom/android/server/audio/OpAudioMonitor$2;

    invoke-direct {v5, p0}, Lcom/android/server/audio/OpAudioMonitor$2;-><init>(Lcom/android/server/audio/OpAudioMonitor;)V

    invoke-interface {v2, v4, v3, v5}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->sendCommand(Ljava/lang/String;Ljava/lang/String;Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$sendCommandCallback;)V

    .line 401
    const-string/jumbo v4, "otaInstallKeybox"

    iget-object v5, p0, Lcom/android/server/audio/OpAudioMonitor;->mKeyboxJson:Ljava/lang/String;

    new-instance v6, Lcom/android/server/audio/OpAudioMonitor$3;

    invoke-direct {v6, p0}, Lcom/android/server/audio/OpAudioMonitor$3;-><init>(Lcom/android/server/audio/OpAudioMonitor;)V

    invoke-interface {v2, v4, v5, v6}, Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey;->sendCommand(Ljava/lang/String;Ljava/lang/String;Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$sendCommandCallback;)V

    .line 410
    const-string v4, "Nokeybox"

    iput-object v4, p0, Lcom/android/server/audio/OpAudioMonitor;->mKeyboxJson:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    goto :goto_0

    .line 411
    :catch_0
    move-exception v4

    .line 412
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 413
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 378
    :catch_1
    move-exception v4

    .line 379
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 380
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public playerEvent(IIIILjava/lang/String;)V
    .locals 22
    .param p1, "piid"    # I
    .param p2, "streamType"    # I
    .param p3, "event"    # I
    .param p4, "device"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 266
    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    iput-object v12, v9, Lcom/android/server/audio/OpAudioMonitor;->mCurrentPackageName:Ljava/lang/String;

    .line 267
    const-wide/16 v0, 0x3e8

    const-string v2, "MDM,music is not active, clear"

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v13, "OpAudioMonitor"

    const/4 v5, 0x2

    if-ne v10, v5, :cond_1

    .line 268
    const-string v5, "MDM,start."

    invoke-static {v13, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {v9, v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 273
    :cond_0
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 274
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
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

    .line 277
    :cond_1
    if-eq v10, v4, :cond_2

    const/4 v5, 0x4

    if-ne v10, v5, :cond_5

    .line 279
    :cond_2
    const-string v5, "MDM,stop."

    invoke-static {v13, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {v9, v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->wasStreamActiveRecently(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 281
    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 283
    return-void

    .line 285
    :cond_3
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 287
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 288
    iget-object v2, v9, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 289
    .local v14, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v7, v2, v0

    .line 290
    .local v7, "endTime":J
    sub-long v5, v7, v14

    .line 291
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

    .line 292
    const-wide/16 v0, 0x5

    cmp-long v0, v5, v0

    const-string v3, " packageName:"

    const-string v4, " lapse:"

    if-lez v0, :cond_4

    const-wide/32 v0, 0x15180

    cmp-long v0, v5, v0

    if-gez v0, :cond_4

    .line 293
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

    .line 294
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

    .line 292
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

    .line 296
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

    .line 304
    .end local v7    # "lapse":J
    .end local v16    # "startTime":J
    .end local v20    # "endTime":J
    :cond_5
    :goto_1
    return-void
.end method

.method public sendWideVineKeyLost()V
    .locals 4

    .line 352
    const-string v0, "OpAudioMonitor"

    const-string v1, "NofityWideVineLevel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "widevine_level"

    const-string/jumbo v2, "lost"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appid"

    const-string v3, "RBS8PPYT2W"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v2, "widevine.lost"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 359
    return-void
.end method

.method public sendWideVineKeyLostAgain()V
    .locals 4

    .line 362
    const-string v0, "OpAudioMonitor"

    const-string v1, "NofityWideVineLevel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "widevine_level"

    const-string/jumbo v2, "lost_again"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appid"

    const-string v3, "RBS8PPYT2W"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v2, "widevine.lost"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 369
    return-void
.end method

.method public systemReady()V
    .locals 11

    .line 138
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 142
    .local v0, "toAlarm":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    .line 143
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

    .line 144
    iget-object v2, p0, Lcom/android/server/audio/OpAudioMonitor;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const/4 v8, 0x0

    const-string v6, "OpAudioMonitor"

    move-wide v4, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 146
    .end local v0    # "toAlarm":Ljava/time/LocalDateTime;
    .end local v9    # "millis":J
    :cond_0
    return-void
.end method
