.class public Lcom/android/server/display/OpAutoBrightnessHelper;
.super Ljava/lang/Object;
.source "OpAutoBrightnessHelper.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "52WW0MUAGI"

.field private static final DEBUG:Z = true

.field private static final DEFAULT_NIGHT_BRIGHTNESS:I = 0xf

.field private static final DEFAULT_NIGHT_COLORTEMPERA:I = 0x2e

.field public static final EPSILON:F = 0.001f

.field private static final EVENT_ADJUSTMENT:Ljava/lang/String; = "manual_adjust_info"

.field private static final EVENT_CURRENT_STATISTICS:Ljava/lang/String; = "screen_usage_statistics"

.field private static final EVENT_EXTREME_STATE:Ljava/lang/String; = "extreme_state_info"

.field public static final HBM_NIT_VALUE:F = 3.4028235E38f

.field private static final MILLI_SECONDS_PER_DAY:J = 0x5265c00L

.field public static final STATE_HIGH_BRIGHTNESS:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOW_BRIGHTNESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OpAutoBrightnessHelper"

.field public static final UPDATE_STATICS_INTERVAL:J = 0x927c0L

.field private static sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;


# instance fields
.field private final BRIGHTNESS_STATIC_FILE:Ljava/lang/String;

.field private final MSG_LOAD_BRIGHTNESS_CONF:I

.field private final MSG_REPORT_CURRENT_STATISTICS:I

.field private final MSG_STORE_BRIGHTNESS_CONF:I

.field private mAdjustedBrightnessLevel:F

.field private mAvgNits:[F

.field private mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

.field private mContext:Landroid/content/Context;

.field private mCurrentBrightnessNits:F

.field private mDuration:[J

.field private mEnterLux:F

.field private mEnterTime:Landroid/text/format/Time;

.field private mExtremeState:I

.field private mLastTimestamp:J

.field private mLuxWhileAdjustment:F

.field private mOptFuncOn:I

.field private mOrigBrightnessLevel:F

.field private mPackageName:Ljava/lang/String;

.field private mRGB:I

.field private mRange:[F

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mTime:Landroid/text/format/Time;

.field private sHandler:Landroid/os/Handler;

.field private sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    .line 59
    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOrigBrightnessLevel:F

    .line 60
    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAdjustedBrightnessLevel:F

    .line 61
    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLuxWhileAdjustment:F

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOptFuncOn:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->MSG_LOAD_BRIGHTNESS_CONF:I

    .line 78
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->MSG_STORE_BRIGHTNESS_CONF:I

    .line 79
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->MSG_REPORT_CURRENT_STATISTICS:I

    .line 81
    const-string v2, "/mnt/vendor/persist/display/BrightnessStatics"

    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->BRIGHTNESS_STATIC_FILE:Ljava/lang/String;

    .line 86
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    .line 87
    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAvgNits:[F

    .line 88
    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    .line 89
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLastTimestamp:J

    .line 90
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mCurrentBrightnessNits:F

    .line 98
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    .line 99
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    .line 100
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterTime:Landroid/text/format/Time;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    .line 103
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v0, :cond_0

    .line 104
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAvgNits:[F

    .line 105
    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->clearData()V

    .line 110
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OpAutoBrightnessHelper;)Lcom/android/server/display/BrightnessStaticBeans;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/display/OpAutoBrightnessHelper;Lcom/android/server/display/BrightnessStaticBeans;)Lcom/android/server/display/BrightnessStaticBeans;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;
    .param p1, "x1"    # Lcom/android/server/display/BrightnessStaticBeans;

    .line 42
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/display/OpAutoBrightnessHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportCurrentStatisticsData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/OpAutoBrightnessHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->toCurrentStatisticsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/OpAutoBrightnessHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->currentHour()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/OpAutoBrightnessHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeCct()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->nightModeBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/OpAutoBrightnessHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->darkThemeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/OpAutoBrightnessHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    iget v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOptFuncOn:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/OpAutoBrightnessHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculateDuration()J
    .locals 6

    .line 300
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 301
    .local v0, "currentTime":Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 304
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

    .line 327
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 329
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    return v0
.end method

.method private darkThemeEnabled()Z
    .locals 3

    .line 308
    const-string/jumbo v0, "persist.sys.theme.status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static floatEquals(FF)Z
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 427
    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 428
    return v1

    .line 429
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    return v1

    .line 431
    :cond_1
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 432
    return v1

    .line 434
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getCurrentTime()J
    .locals 4

    .line 398
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 408
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 409
    .local v0, "N":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 410
    :cond_0
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [F

    .line 411
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 412
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v2    # "i":I
    :cond_1
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    aput v2, v1, v0

    .line 415
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    return-object v1
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "OpAutoBrightnessHelper"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandlerThread:Landroid/os/HandlerThread;

    .line 173
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 174
    new-instance v0, Lcom/android/server/display/OpAutoBrightnessHelper$1;

    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/OpAutoBrightnessHelper$1;-><init>(Lcom/android/server/display/OpAutoBrightnessHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandler:Landroid/os/Handler;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    sget-object v0, Lcom/android/server/display/OpAutoBrightnessHelper;->sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-direct {v0, p0}, Lcom/android/server/display/OpAutoBrightnessHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/OpAutoBrightnessHelper;->sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;

    .line 123
    :cond_0
    sget-object v0, Lcom/android/server/display/OpAutoBrightnessHelper;->sOpAutoBrightnessHelper:Lcom/android/server/display/OpAutoBrightnessHelper;

    return-object v0
.end method

.method private getScreenRGB()I
    .locals 1

    .line 136
    const v0, 0xffffff

    return v0
.end method

.method private getSurfaceFlinger()Landroid/os/IBinder;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mSurfaceFlinger:Landroid/os/IBinder;

    return-object v0
.end method

.method private nightModeBrightness()I
    .locals 3

    .line 322
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

    .line 317
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

    .line 312
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private reportAdjustEvent(Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rgb"    # Ljava/lang/String;
    .param p3, "lux"    # F
    .param p4, "before"    # F
    .param p5, "after"    # F

    .line 248
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

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OpAutoBrightnessHelper$2;-><init>(Lcom/android/server/display/OpAutoBrightnessHelper;Ljava/lang/String;Ljava/lang/String;FFF)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method private reportCurrentStatisticsData()V
    .locals 2

    .line 348
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OpAutoBrightnessHelper$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/OpAutoBrightnessHelper$3;-><init>(Lcom/android/server/display/OpAutoBrightnessHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method private reportExtremeEvent(Ljava/lang/String;JFILjava/lang/String;)V
    .locals 0
    .param p1, "enterTime"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "enterLux"    # F
    .param p5, "state"    # I
    .param p6, "rgb"    # Ljava/lang/String;

    .line 296
    return-void
.end method

.method private setEnterTime()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 141
    return-void
.end method

.method private toCurrentStatisticsString()Ljava/lang/String;
    .locals 6

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    if-eqz v1, :cond_2

    .line 458
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 459
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 461
    const-string v2, "Hbm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAvgNits:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 465
    :goto_1
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 466
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 467
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 469
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "index":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addRecord(JJ)V
    .locals 7
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J

    .line 344
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/OpAutoBrightnessHelper;->addRecord(JJJ)V

    .line 345
    return-void
.end method

.method public addRecord(JJJ)V
    .locals 4
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .param p5, "delay"    # J

    .line 333
    const-string v0, "OpAutoBrightnessHelper"

    const-string v1, "addRecord() get called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sub-long v0, p3, p1

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 335
    add-long p3, p1, v2

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mBrightnessUsageBean:Lcom/android/server/display/BrightnessStaticBeans;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessStaticBeans;->addRecord(JJ)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    return-void
.end method

.method public adjustBrightness(FFF)V
    .locals 6
    .param p1, "lux"    # F
    .param p2, "before"    # F
    .param p3, "after"    # F

    .line 164
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLuxWhileAdjustment:F

    .line 165
    iput p2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOrigBrightnessLevel:F

    .line 166
    iput p3, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAdjustedBrightnessLevel:F

    .line 167
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getScreenRGB()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportAdjustEvent(Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 168
    return-void
.end method

.method clearData()V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAvgNits:[F

    aput v2, v1, v0

    .line 442
    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "index":I
    :cond_1
    iget v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mCurrentBrightnessNits:F

    invoke-static {v0, v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLastTimestamp:J

    .line 448
    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 478
    const-string v0, "OpAutoBrightnessHelper State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
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

    .line 480
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

    .line 481
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

    .line 482
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

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnterLux = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
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

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOrigBrightnessLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOrigBrightnessLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjustedBrightnessLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAdjustedBrightnessLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExtremeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
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

    .line 490
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

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentStatisticsString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->toCurrentStatisticsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public enterExtremeState(FI)V
    .locals 0
    .param p1, "lux"    # F
    .param p2, "state"    # I

    .line 148
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->setEnterTime()V

    .line 149
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    .line 150
    iput p2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    .line 151
    return-void
.end method

.method public exitExtremeState()V
    .locals 8

    .line 158
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

    .line 159
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mEnterLux:F

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    .line 161
    return-void
.end method

.method public getExtremeState()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mExtremeState:I

    return v0
.end method

.method getStaticsFile()Ljava/io/File;
    .locals 6

    .line 226
    const-string v0, "OpAutoBrightnessHelper"

    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/vendor/persist/display/BrightnessStatics"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "staticsFiles":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v3, "result":Z
    nop

    .line 236
    if-nez v3, :cond_0

    .line 237
    const-string v4, "Failed to create brightness statics file."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-object v2

    .line 240
    :cond_0
    return-object v1

    .line 231
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 232
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

    .line 233
    return-object v2

    .line 243
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    return-object v1
.end method

.method public declared-synchronized reportBrightness(F)V
    .locals 11
    .param p1, "nits"    # F

    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 366
    :cond_0
    iget v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mCurrentBrightnessNits:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 367
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLastTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 368
    invoke-static {p1, v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_6

    .line 369
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mCurrentBrightnessNits:F

    .line 370
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLastTimestamp:J

    goto :goto_2

    .line 374
    .end local p0    # "this":Lcom/android/server/display/OpAutoBrightnessHelper;
    :cond_2
    const/4 v0, 0x0

    .line 375
    .local v0, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 376
    iget v4, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mCurrentBrightnessNits:F

    iget-object v5, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mRange:[F

    aget v5, v5, v0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 377
    goto :goto_1

    .line 379
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getCurrentTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLastTimestamp:J

    sub-long/2addr v4, v6

    .line 382
    .local v4, "currentDuration":J
    iget-object v6, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAvgNits:[F

    iget v7, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mCurrentBrightnessNits:F

    long-to-float v8, v4

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mAvgNits:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    aget-wide v9, v9, v0

    long-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    aget-wide v8, v8, v0

    add-long/2addr v8, v4

    long-to-float v8, v8

    div-float/2addr v7, v8

    aput v7, v6, v0

    .line 383
    iget-object v6, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    iget-object v7, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mDuration:[J

    aget-wide v7, v7, v0

    add-long/2addr v7, v4

    aput-wide v7, v6, v0

    .line 384
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mCurrentBrightnessNits:F

    .line 385
    invoke-static {p1, v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    iput-wide v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLastTimestamp:J

    goto :goto_2

    .line 388
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mLastTimestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v0    # "index":I
    .end local v4    # "currentDuration":J
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 364
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    .line 363
    .end local p1    # "nits":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mPackageName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setOptFuncValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 115
    iput p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper;->mOptFuncOn:I

    .line 116
    return-void
.end method

.method public shuttingDown()V
    .locals 2

    .line 451
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    invoke-direct {p0}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportCurrentStatisticsData()V

    .line 453
    return-void
.end method
