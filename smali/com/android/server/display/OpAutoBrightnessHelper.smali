.class public Lcom/android/server/display/OpAutoBrightnessHelper;
.super Ljava/lang/Object;
.source "OpAutoBrightnessHelper.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "52WW0MUAGI"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_NIGHT_BRIGHTNESS:I = 0xf

.field private static final DEFAULT_NIGHT_COLORTEMPERA:I = 0x2e

.field private static final EVENT_ADJUSTMENT:Ljava/lang/String; = "manual_adjust_info"

.field private static final EVENT_EXTREME_STATE:Ljava/lang/String; = "extreme_state_info"

.field public static final STATE_HIGH_BRIGHTNESS:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOW_BRIGHTNESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpAutoBrightnessHelper"

.field public static final UPDATE_STATICS_INTERVAL:J = 0x927c0L

.field private static sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;


# instance fields
.field private final BRIGHTNESS_STATIC_FILE:Ljava/lang/String;

.field private final MSG_LOAD_BRIGHTNESS_CONF:I

.field private final MSG_STORE_BRIGHTNESS_CONF:I

.field private mAdjustedBrightnessLevel:I

.field private mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

.field private mContext:Landroid/content/Context;

.field private mEnterLux:F

.field private mEnterTime:Landroid/text/format/Time;

.field private mExtremeState:I

.field private mLuxWhileAdjustment:F

.field private mOptFuncOn:I

.field private mOrigBrightnessLevel:I

.field private mPackageName:Ljava/lang/String;

.field private mRGB:I

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mTime:Landroid/text/format/Time;

.field private sHandler:Landroid/os/Handler;

.field private sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    .line 58
    iput v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOrigBrightnessLevel:I

    .line 59
    iput v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAdjustedBrightnessLevel:I

    .line 60
    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLuxWhileAdjustment:F

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOptFuncOn:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->MSG_LOAD_BRIGHTNESS_CONF:I

    .line 76
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->MSG_STORE_BRIGHTNESS_CONF:I

    .line 78
    const-string v1, "/mnt/vendor/persist/display/BrightnessStatics"

    iput-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->BRIGHTNESS_STATIC_FILE:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    .line 85
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    .line 86
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterTime:Landroid/text/format/Time;

    .line 88
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OpAutoBrightnessHelper;)Lcom/android/server/display/BrightnessStaticBeans;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/display/OpAutoBrightnessHelper;Lcom/android/server/display/BrightnessStaticBeans;)Lcom/android/server/display/BrightnessStaticBeans;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;
    .param p1, "x1"    # Lcom/android/server/display/BrightnessStaticBeans;

    .line 41
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->currentHour()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/OpAutoBrightnessHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeCct()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OpAutoBrightnessHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->darkThemeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    iget v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOptFuncOn:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/OpAutoBrightnessHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 41
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculateDuration()J
    .locals 6

    .line 291
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 292
    .local v0, "currentTime":Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterTime:Landroid/text/format/Time;

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2
.end method

.method private currentHour()I
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 320
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    return v0
.end method

.method private darkThemeEnabled()Z
    .locals 3

    .line 299
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.theme.status"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "OpAutoBrightnessHelper"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandlerThread:Landroid/os/HandlerThread;

    .line 168
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v0, Lcom/android/server/display/OpAutoBrightnessHelper$1;

    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/OpAutoBrightnessHelper$1;-><init>(Lcom/android/server/display/OpAutoBrightnessHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandler:Landroid/os/Handler;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/android/server/display/OpAutoBrightnessHelper;->sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-direct {v0, p0}, Lcom/android/server/display/OpAutoBrightnessHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/OpAutoBrightnessHelper;->sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 100
    :cond_0
    sget-object v0, Lcom/android/server/display/OpAutoBrightnessHelper;->sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;

    return-object v0
.end method

.method private getScreenRGB()I
    .locals 7

    .line 113
    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 114
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 115
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x7e4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 118
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 119
    .local v3, "r":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 120
    .local v4, "g":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 121
    .local v5, "b":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-eq v3, v0, :cond_1

    if-eq v4, v0, :cond_1

    if-ne v5, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    shl-int/lit8 v0, v3, 0x10

    shl-int/lit8 v6, v4, 0x8

    or-int/2addr v0, v6

    or-int/2addr v0, v5

    return v0

    .line 124
    :cond_1
    :goto_0
    return v0

    .line 128
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "r":I
    .end local v4    # "g":I
    .end local v5    # "b":I
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get rgb value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpAutoBrightnessHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0
.end method

.method private getSurfaceFlinger()Landroid/os/IBinder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mSurfaceFlinger:Landroid/os/IBinder;

    return-object v0
.end method

.method private nightModeBrightness()I
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_nightmode_brightness_progress"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private nightModeCct()I
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_nightmode_progress_status"

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private nightModeEnabled()Z
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "night_display_activated"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private reportAdjustEvent(Ljava/lang/String;Ljava/lang/String;FII)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rgb"    # Ljava/lang/String;
    .param p3, "lux"    # F
    .param p4, "before"    # I
    .param p5, "after"    # I

    .line 239
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/display/OpAutoBrightnessHelper$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OpAutoBrightnessHelper$2;-><init>(Lcom/android/server/display/OpAutoBrightnessHelper;Ljava/lang/String;Ljava/lang/String;FII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method

.method private reportExtremeEvent(Ljava/lang/String;JFILjava/lang/String;)V
    .locals 0
    .param p1, "enterTime"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "enterLux"    # F
    .param p5, "state"    # I
    .param p6, "rgb"    # Ljava/lang/String;

    .line 287
    return-void
.end method

.method private setEnterTime()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 136
    return-void
.end method


# virtual methods
.method public addRecord(JJ)V
    .locals 7
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J

    .line 335
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/OpAutoBrightnessHelper;->addRecord(JJJ)V

    .line 336
    return-void
.end method

.method public addRecord(JJJ)V
    .locals 4
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .param p5, "delay"    # J

    .line 324
    const-string v0, "OpAutoBrightnessHelper"

    const-string v1, "addRecord() get called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sub-long v0, p3, p1

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 326
    add-long p3, p1, v2

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessStaticBeans;->addRecord(JJ)V

    .line 330
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 332
    return-void
.end method

.method public adjustBrightness(FII)V
    .locals 6
    .param p1, "lux"    # F
    .param p2, "before"    # I
    .param p3, "after"    # I

    .line 159
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLuxWhileAdjustment:F

    .line 160
    iput p2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOrigBrightnessLevel:I

    .line 161
    iput p3, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAdjustedBrightnessLevel:I

    .line 162
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getScreenRGB()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportAdjustEvent(Ljava/lang/String;Ljava/lang/String;FII)V

    .line 163
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 339
    const-string v0, "OpAutoBrightnessHelper State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkTheme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->darkThemeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNightMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNightModeCct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeCct()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNightModeBrightness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnterLux = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentHour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->currentHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOrigBrightnessLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOrigBrightnessLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjustedBrightnessLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAdjustedBrightnessLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExtremeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRGB = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getScreenRGB()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOptFuncOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOptFuncOn:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public enterExtremeState(FI)V
    .locals 0
    .param p1, "lux"    # F
    .param p2, "state"    # I

    .line 143
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->setEnterTime()V

    .line 144
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    .line 145
    iput p2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    .line 146
    return-void
.end method

.method public exitExtremeState()V
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->calculateDuration()J

    move-result-wide v3

    iget v5, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    iget v6, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getScreenRGB()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportExtremeEvent(Ljava/lang/String;JFILjava/lang/String;)V

    .line 154
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    .line 156
    return-void
.end method

.method public getExtremeState()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    return v0
.end method

.method getStaticsFile()Ljava/io/File;
    .locals 6

    .line 217
    const-string v0, "OpAutoBrightnessHelper"

    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/vendor/persist/display/BrightnessStatics"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "staticsFiles":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v3, "result":Z
    nop

    .line 227
    if-nez v3, :cond_0

    .line 228
    const-string v4, "Failed to create brightness statics file."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v2

    .line 231
    :cond_0
    return-object v1

    .line 222
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create brightness statics file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-object v2

    .line 234
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    return-object v1
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mPackageName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setOptFuncValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 92
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOptFuncOn:I

    .line 93
    return-void
.end method
