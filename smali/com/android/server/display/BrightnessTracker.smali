.class public Lcom/android/server/display/BrightnessTracker;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessTracker$Injector;,
        Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;,
        Lcom/android/server/display/BrightnessTracker$TrackerHandler;,
        Lcom/android/server/display/BrightnessTracker$Receiver;,
        Lcom/android/server/display/BrightnessTracker$SettingsObserver;,
        Lcom/android/server/display/BrightnessTracker$DisplayListener;,
        Lcom/android/server/display/BrightnessTracker$SensorListener;,
        Lcom/android/server/display/BrightnessTracker$LightData;
    }
.end annotation


# static fields
.field private static final AMBIENT_BRIGHTNESS_STATS_FILE:Ljava/lang/String; = "ambient_brightness_stats.xml"

.field private static final ATTR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final ATTR_COLOR_SAMPLE_DURATION:Ljava/lang/String; = "colorSampleDuration"

.field private static final ATTR_COLOR_TEMPERATURE:Ljava/lang/String; = "colorTemperature"

.field private static final ATTR_COLOR_VALUE_BUCKETS:Ljava/lang/String; = "colorValueBuckets"

.field private static final ATTR_DEFAULT_CONFIG:Ljava/lang/String; = "defaultConfig"

.field private static final ATTR_LAST_NITS:Ljava/lang/String; = "lastNits"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_LUX_TIMESTAMPS:Ljava/lang/String; = "luxTimestamps"

.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "nightMode"

.field private static final ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_POWER_SAVE:Ljava/lang/String; = "powerSaveFactor"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_POINT:Ljava/lang/String; = "userPoint"

.field private static final COLOR_SAMPLE_COMPONENT_MASK:I = 0x4

.field private static final COLOR_SAMPLE_DURATION:J

.field static final DEBUG:Z = false

.field private static final EVENTS_FILE:Ljava/lang/String; = "brightness_events.xml"

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LUX_EVENT_HORIZON:J

.field private static final MAX_EVENTS:I = 0x64

.field private static final MAX_EVENT_AGE:J

.field private static final MSG_BACKGROUND_START:I = 0x0

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field private static final MSG_BRIGHTNESS_CONFIG_CHANGED:I = 0x4

.field private static final MSG_START_SENSOR_LISTENER:I = 0x3

.field private static final MSG_STOP_SENSOR_LISTENER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BrightnessTracker"

.field private static final TAG_EVENT:Ljava/lang/String; = "event"

.field private static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field private mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

.field private final mBgHandler:Landroid/os/Handler;

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColorSamplingEnabled:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDataCollectionLock:Ljava/lang/Object;

.field private mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

.field private mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDirty:Z

.field private final mEventsLock:Ljava/lang/Object;

.field private mFrameRate:F

.field private final mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

.field private mLastBatteryLevel:F

.field private mLastBrightness:F

.field private mLastSensorReadings:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/display/BrightnessTracker$LightData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoFramesToSample:I

.field private mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

.field private mSensorRegistered:Z

.field private mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

.field private mStarted:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private volatile mWriteBrightnessTrackerStateScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 133
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/BrightnessTracker$Injector;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 166
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 172
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 174
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 184
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    if-eqz p2, :cond_0

    .line 187
    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessTracker$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 191
    :goto_0
    new-instance v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$TrackerHandler;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 192
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 193
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/BrightnessTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->batteryLevelChanged(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/BrightnessTracker;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # F

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->backgroundStart(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/BrightnessTracker;FZFZZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z
    .param p3, "x3"    # F
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # J

    .line 94
    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 94
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/BrightnessTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->updateColorSampling()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 94
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private backgroundStart(F)V
    .locals 4
    .param p1, "initialBrightness"    # F

    .line 217
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readEvents()V

    .line 218
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readAmbientBrightnessStats()V

    .line 220
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 222
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 223
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 224
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    new-instance v2, Lcom/android/server/display/BrightnessTracker$Receiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 234
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 237
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private batteryLevelChanged(II)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "scale"    # I

    .line 889
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    :try_start_0
    iput v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 891
    monitor-exit v0

    .line 892
    return-void

    .line 891
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private disableColorSampling()V
    .locals 3

    .line 811
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_0

    .line 812
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    .line 815
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 816
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-eqz v0, :cond_1

    .line 817
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 823
    :cond_1
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNoFramesToSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method private enableColorSampling()V
    .locals 5

    .line 771
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 772
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    if-eqz v0, :cond_4

    .line 775
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 780
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 781
    const-string v0, "BrightnessTracker"

    const-string v1, "Default display has a zero or negative framerate."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void

    .line 784
    :cond_1
    sget-wide v1, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 786
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    .line 794
    .local v0, "attributes":Landroid/hardware/display/DisplayedContentSamplingAttributes;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_2

    .line 795
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 797
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 804
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-nez v1, :cond_3

    .line 805
    new-instance v1, Lcom/android/server/display/BrightnessTracker$DisplayListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 806
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/display/BrightnessTracker$Injector;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 808
    :cond_3
    return-void

    .line 776
    .end local v0    # "attributes":Landroid/hardware/display/DisplayedContentSamplingAttributes;
    :cond_4
    :goto_0
    return-void
.end method

.method private handleBrightnessChanged(FZFZZJ)V
    .locals 20
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z
    .param p6, "timestamp"    # J

    .line 329
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 330
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    if-nez v0, :cond_0

    .line 332
    monitor-exit v3

    return-void

    .line 335
    :cond_0
    iget v0, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 336
    .local v0, "previousBrightness":F
    iput v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 338
    if-nez p2, :cond_1

    .line 342
    monitor-exit v3

    return-void

    .line 345
    :cond_1
    new-instance v4, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 346
    .local v4, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 347
    move-wide/from16 v5, p6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 348
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 349
    move/from16 v8, p4

    :try_start_1
    invoke-virtual {v4, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    move/from16 v9, p5

    :try_start_2
    invoke-virtual {v4, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 352
    iget-object v10, v1, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v10}, Ljava/util/Deque;->size()I

    move-result v10

    .line 353
    .local v10, "readingCount":I
    if-nez v10, :cond_2

    .line 355
    monitor-exit v3

    return-void

    .line 358
    :cond_2
    new-array v11, v10, [F

    .line 359
    .local v11, "luxValues":[F
    new-array v12, v10, [J

    .line 361
    .local v12, "luxTimestamps":[J
    const/4 v13, 0x0

    .line 364
    .local v13, "pos":I
    iget-object v14, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v14}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v14

    .line 365
    .local v14, "currentTimeMillis":J
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v16

    .line 366
    .local v16, "elapsedTimeNanos":J
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/display/BrightnessTracker$LightData;

    move-object/from16 v19, v18

    .line 367
    .local v19, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    move-object/from16 v18, v2

    move-object/from16 v2, v19

    .end local v19    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    .local v2, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    iget v5, v2, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    aput v5, v11, v13

    .line 368
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    sub-long v6, v16, v6

    .line 369
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long v5, v14, v5

    aput-wide v5, v12, v13

    .line 370
    nop

    .end local v2    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    add-int/lit8 v13, v13, 0x1

    .line 371
    move/from16 v7, p3

    move-wide/from16 v5, p6

    move-object/from16 v2, v18

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {v4, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 373
    invoke-virtual {v4, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 375
    iget v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 376
    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 377
    nop

    .end local v0    # "previousBrightness":F
    .end local v10    # "readingCount":I
    .end local v11    # "luxValues":[F
    .end local v12    # "luxTimestamps":[J
    .end local v13    # "pos":I
    .end local v14    # "currentTimeMillis":J
    .end local v16    # "elapsedTimeNanos":J
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 380
    :try_start_3
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getFocusedStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 381
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    .line 382
    iget v2, v0, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 383
    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 394
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    nop

    .line 396
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->isNightDisplayActivated(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 397
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getNightDisplayColorTemperature(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 399
    iget-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget v2, v1, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->sampleColor(I)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    .line 401
    .local v0, "sample":Landroid/hardware/display/DisplayedContentSample;
    if-eqz v0, :cond_4

    sget-object v2, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v2

    if-eqz v2, :cond_4

    .line 403
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, v1, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    .line 404
    .local v2, "numMillis":F
    sget-object v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 405
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v3

    .line 406
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    .line 404
    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 410
    .end local v0    # "sample":Landroid/hardware/display/DisplayedContentSample;
    .end local v2    # "numMillis":F
    :cond_4
    invoke-virtual {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v2

    .line 414
    .local v2, "event":Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 415
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 416
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 417
    monitor-exit v3

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 389
    .end local v2    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :cond_5
    return-void

    .line 391
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 377
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move/from16 v8, p4

    :goto_1
    move/from16 v9, p5

    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method

.method private readAmbientBrightnessStats()V
    .locals 5

    .line 519
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;-><init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 520
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 521
    .local v0, "readFrom":Landroid/util/AtomicFile;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 525
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    nop

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 531
    goto :goto_2

    .line 530
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 526
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 528
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to read ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 531
    throw v2

    .line 533
    .end local v1    # "input":Ljava/io/FileInputStream;
    :cond_0
    :goto_2
    return-void
.end method

.method private readEvents()V
    .locals 6

    .line 498
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 501
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 502
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 503
    .local v1, "readFrom":Landroid/util/AtomicFile;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 504
    const/4 v2, 0x0

    .line 506
    .local v2, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 507
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :goto_0
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    goto :goto_2

    .line 512
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 508
    :catch_0
    move-exception v3

    .line 509
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 510
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to read change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 512
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 513
    nop

    .end local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    throw v3

    .line 515
    .end local v1    # "readFrom":Landroid/util/AtomicFile;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    :cond_0
    :goto_2
    monitor-exit v0

    .line 516
    return-void

    .line 515
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 885
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->add(IF)V

    .line 886
    return-void
.end method

.method private recordSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 855
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    sub-long/2addr v0, v2

    .line 856
    .local v0, "horizon":J
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 860
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 861
    invoke-interface {v5}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 863
    monitor-exit v2

    return-void

    .line 865
    :cond_0
    const/4 v3, 0x0

    .line 866
    .local v3, "data":Lcom/android/server/display/BrightnessTracker$LightData;
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 867
    invoke-interface {v4}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v4, v4, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 869
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessTracker$LightData;

    move-object v3, v4

    goto :goto_0

    .line 873
    :cond_1
    if-eqz v3, :cond_2

    .line 874
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 877
    :cond_2
    new-instance v4, Lcom/android/server/display/BrightnessTracker$LightData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>(Lcom/android/server/display/BrightnessTracker$1;)V

    move-object v3, v4

    .line 878
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    .line 879
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    .line 880
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 881
    .end local v3    # "data":Lcom/android/server/display/BrightnessTracker$LightData;
    monitor-exit v2

    .line 882
    return-void

    .line 881
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private scheduleWriteBrightnessTrackerState()V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 448
    :cond_0
    return-void
.end method

.method private startSensorListener()V
    .locals 4

    .line 421
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 422
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 423
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->start()V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 426
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 427
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    .line 426
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/os/Handler;)V

    .line 429
    :cond_0
    return-void
.end method

.method private stopSensorListener()V
    .locals 3

    .line 432
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->stop()V

    .line 434
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 437
    :cond_0
    return-void
.end method

.method private updateColorSampling()V
    .locals 2

    .line 826
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_0

    .line 827
    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    .line 830
    .local v0, "frameRate":F
    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 831
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 832
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 834
    :cond_1
    return-void
.end method

.method private writeAmbientBrightnessStats()V
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 483
    .local v0, "writeTo":Landroid/util/AtomicFile;
    if-nez v0, :cond_0

    .line 484
    return-void

    .line 486
    :cond_0
    const/4 v1, 0x0

    .line 488
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 489
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 490
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    goto :goto_0

    .line 491
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 493
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to write ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeEvents()V
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    if-nez v1, :cond_0

    .line 454
    monitor-exit v0

    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 458
    .local v1, "writeTo":Landroid/util/AtomicFile;
    if-nez v1, :cond_1

    .line 459
    monitor-exit v0

    return-void

    .line 461
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 462
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 465
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    :cond_3
    const/4 v2, 0x0

    .line 469
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 470
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 471
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 472
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    goto :goto_0

    .line 473
    :catch_0
    move-exception v3

    .line 474
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 475
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to write change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v1    # "writeTo":Landroid/util/AtomicFile;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 721
    const-string v0, "BrightnessTracker state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings time span "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 729
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 730
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 733
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 734
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEventsDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEvents.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 737
    .local v0, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    aget-object v6, v0, v2

    iget-wide v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isUserSetBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget-boolean v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", powerBrightnessFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isDefaultBrightnessConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget-boolean v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    const-string v3, " {"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 746
    if-eqz v3, :cond_1

    .line 747
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 751
    .end local v3    # "j":I
    :cond_2
    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 753
    .end local v0    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v2    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteBrightnessTrackerStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;-><init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 757
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_4

    .line 758
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 759
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    .line 761
    :cond_4
    return-void

    .line 753
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 732
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_0

    .line 838
    nop

    .line 839
    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 840
    .local v0, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    if-eqz v0, :cond_0

    .line 841
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 844
    .end local v0    # "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    :cond_0
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 277
    .local v1, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/display/BrightnessTracker$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v0

    .line 279
    .local v0, "profiles":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v2, "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 281
    aget v4, v0, v3

    .line 284
    .local v4, "profileId":I
    if-eqz p2, :cond_1

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 285
    .local v5, "redact":Z
    :cond_1
    :goto_1
    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v4    # "profileId":I
    .end local v5    # "redact":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v6, v1

    if-ge v4, v6, :cond_5

    .line 289
    aget-object v6, v1, v4

    iget v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 290
    .local v6, "redact":Ljava/lang/Boolean;
    if-eqz v6, :cond_4

    .line 291
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 292
    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 294
    :cond_3
    new-instance v7, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object v8, v1, v4

    invoke-direct {v7, v8, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 296
    .local v7, "event":Landroid/hardware/display/BrightnessChangeEvent;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v6    # "redact":Ljava/lang/Boolean;
    .end local v7    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 300
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4

    .line 277
    .end local v0    # "profiles":[I
    .end local v1    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v2    # "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$dump$1$BrightnessTracker(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 756
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic lambda$scheduleWriteBrightnessTrackerState$0$BrightnessTracker()V
    .locals 1

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 443
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeEvents()V

    .line 444
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeAmbientBrightnessStats()V

    .line 445
    return-void
.end method

.method public notifyBrightnessChanged(FZFZZ)V
    .locals 10
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z

    .line 317
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 318
    const/4 v1, 0x0

    new-instance v9, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 320
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJ)V

    .line 317
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 322
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 265
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 266
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    .line 305
    return-void
.end method

.method readEventsLocked(Ljava/io/InputStream;)V
    .locals 35
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    move-object/from16 v1, p0

    const-string v0, ","

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 610
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 613
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v5, v3

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    const/4 v3, 0x2

    if-eq v5, v3, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "tag":Ljava/lang/String;
    const-string v7, "events"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 622
    iget-object v7, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v7}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v7, v9

    .line 624
    .local v7, "timeCutOff":J
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 625
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 626
    .local v9, "outerDepth":I
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v5, v10

    if-eq v10, v6, :cond_d

    const/4 v10, 0x3

    if-ne v5, v10, :cond_1

    .line 627
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v9, :cond_e

    .line 628
    :cond_1
    if-eq v5, v10, :cond_c

    const/4 v10, 0x4

    if-ne v5, v10, :cond_2

    .line 629
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move/from16 v22, v5

    move/from16 v24, v9

    goto/16 :goto_7

    .line 631
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 632
    const-string v10, "event"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 633
    new-instance v10, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 635
    .local v10, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    const-string/jumbo v11, "nits"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 636
    .local v11, "brightness":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v10, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 637
    const-string/jumbo v13, "timestamp"

    invoke-interface {v2, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 638
    .local v13, "timestamp":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 639
    const-string/jumbo v14, "packageName"

    invoke-interface {v2, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 640
    const-string/jumbo v14, "user"

    invoke-interface {v2, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 641
    .local v14, "user":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v6, v1, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v15, v6, v12}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 642
    const-string v6, "batteryLevel"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, "batteryLevel":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v10, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 644
    const-string/jumbo v12, "nightMode"

    const/4 v15, 0x0

    invoke-interface {v2, v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 645
    .local v12, "nightMode":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 646
    const-string v15, "colorTemperature"

    .line 647
    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "tag":Ljava/lang/String;
    .local v17, "tag":Ljava/lang/String;
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v3, v15

    .line 648
    .local v3, "colorTemperature":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 649
    const-string/jumbo v15, "lastNits"

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "colorTemperature":Ljava/lang/String;
    .local v18, "colorTemperature":Ljava/lang/String;
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v3, v15

    .line 650
    .local v3, "lastBrightness":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual {v10, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 652
    const-string/jumbo v15, "lux"

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "lastBrightness":Ljava/lang/String;
    .local v19, "lastBrightness":Ljava/lang/String;
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 653
    .local v15, "luxValue":Ljava/lang/String;
    const-string/jumbo v3, "luxTimestamps"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, "luxTimestamp":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, "luxValuesStrings":[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v20

    .line 657
    .local v21, "luxTimestampsStrings":[Ljava/lang/String;
    move-object/from16 v20, v3

    .end local v3    # "luxTimestamp":Ljava/lang/String;
    .local v20, "luxTimestamp":Ljava/lang/String;
    array-length v3, v4

    move/from16 v22, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v6

    .end local v6    # "batteryLevel":Ljava/lang/String;
    .local v5, "luxTimestampsStrings":[Ljava/lang/String;
    .local v21, "batteryLevel":Ljava/lang/String;
    .local v22, "type":I
    array-length v6, v5

    if-eq v3, v6, :cond_3

    .line 658
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move/from16 v24, v9

    goto/16 :goto_6

    .line 660
    :cond_3
    array-length v3, v4

    new-array v3, v3, [F

    .line 661
    .local v3, "luxValues":[F
    array-length v6, v4

    new-array v6, v6, [J

    .line 662
    .local v6, "luxTimestamps":[J
    const/16 v23, 0x0

    move/from16 v24, v9

    move/from16 v9, v23

    .local v9, "i":I
    .local v24, "outerDepth":I
    :goto_2
    move-object/from16 v23, v11

    .end local v11    # "brightness":Ljava/lang/String;
    .local v23, "brightness":Ljava/lang/String;
    array-length v11, v3

    if-ge v9, v11, :cond_4

    .line 663
    aget-object v11, v4, v9

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v3, v9

    .line 664
    aget-object v11, v5, v9

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    aput-wide v25, v6, v9

    .line 662
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v23

    goto :goto_2

    .line 666
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {v10, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 667
    invoke-virtual {v10, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 669
    const-string v9, "defaultConfig"

    const/4 v11, 0x0

    invoke-interface {v2, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 670
    .local v9, "defaultConfig":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 671
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 673
    :cond_5
    const-string/jumbo v11, "powerSaveFactor"

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "luxValues":[F
    .local v25, "luxValues":[F
    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 674
    .local v3, "powerSave":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 675
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_3

    .line 677
    :cond_6
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 679
    :goto_3
    const-string/jumbo v11, "userPoint"

    move-object/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "powerSave":Ljava/lang/String;
    .local v26, "powerSave":Ljava/lang/String;
    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 680
    .local v3, "userPoint":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 681
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 684
    :cond_7
    const-string v11, "colorSampleDuration"

    .line 685
    move-object/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "userPoint":Ljava/lang/String;
    .local v27, "userPoint":Ljava/lang/String;
    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 686
    .local v11, "colorSampleDurationString":Ljava/lang/String;
    const-string v3, "colorValueBuckets"

    .line 687
    move-object/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "luxValuesStrings":[Ljava/lang/String;
    .local v28, "luxValuesStrings":[Ljava/lang/String;
    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "colorValueBucketsString":Ljava/lang/String;
    if-eqz v11, :cond_9

    if-eqz v3, :cond_9

    .line 689
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    move-wide/from16 v31, v29

    .line 690
    .local v31, "colorSampleDuration":J
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, "buckets":[Ljava/lang/String;
    move-object/from16 v16, v0

    array-length v0, v4

    new-array v0, v0, [J

    .line 692
    .local v0, "bucketValues":[J
    const/16 v29, 0x0

    move-object/from16 v30, v2

    move/from16 v2, v29

    .local v2, "i":I
    .local v30, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    move-object/from16 v29, v3

    .end local v3    # "colorValueBucketsString":Ljava/lang/String;
    .local v29, "colorValueBucketsString":Ljava/lang/String;
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 693
    aget-object v3, v4, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    aput-wide v33, v0, v2

    .line 692
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v29

    goto :goto_4

    .line 695
    .end local v2    # "i":I
    :cond_8
    move-wide/from16 v2, v31

    .end local v31    # "colorSampleDuration":J
    .local v2, "colorSampleDuration":J
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_5

    .line 688
    .end local v0    # "bucketValues":[J
    .end local v4    # "buckets":[Ljava/lang/String;
    .end local v29    # "colorValueBucketsString":Ljava/lang/String;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "colorValueBucketsString":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move-object/from16 v29, v3

    .line 698
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "colorValueBucketsString":Ljava/lang/String;
    .restart local v29    # "colorValueBucketsString":Ljava/lang/String;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_5
    invoke-virtual {v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v0

    .line 704
    .local v0, "event":Landroid/hardware/display/BrightnessChangeEvent;
    iget v2, v0, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    iget-wide v2, v0, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_a

    iget-object v2, v0, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v2, v2

    if-lez v2, :cond_a

    .line 706
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 708
    .end local v0    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .end local v5    # "luxTimestampsStrings":[Ljava/lang/String;
    .end local v6    # "luxTimestamps":[J
    .end local v9    # "defaultConfig":Ljava/lang/String;
    .end local v10    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .end local v11    # "colorSampleDurationString":Ljava/lang/String;
    .end local v12    # "nightMode":Ljava/lang/String;
    .end local v13    # "timestamp":Ljava/lang/String;
    .end local v14    # "user":Ljava/lang/String;
    .end local v15    # "luxValue":Ljava/lang/String;
    .end local v18    # "colorTemperature":Ljava/lang/String;
    .end local v19    # "lastBrightness":Ljava/lang/String;
    .end local v20    # "luxTimestamp":Ljava/lang/String;
    .end local v21    # "batteryLevel":Ljava/lang/String;
    .end local v23    # "brightness":Ljava/lang/String;
    .end local v25    # "luxValues":[F
    .end local v26    # "powerSave":Ljava/lang/String;
    .end local v27    # "userPoint":Ljava/lang/String;
    .end local v28    # "luxValuesStrings":[Ljava/lang/String;
    .end local v29    # "colorValueBucketsString":Ljava/lang/String;
    :cond_a
    goto :goto_6

    .line 632
    .end local v17    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v24    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "tag":Ljava/lang/String;
    .local v5, "type":I
    .local v9, "outerDepth":I
    :cond_b
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move-object/from16 v17, v3

    move/from16 v22, v5

    move/from16 v24, v9

    .line 626
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v9    # "outerDepth":I
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    .restart local v24    # "outerDepth":I
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_6
    move-object/from16 v4, p1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move/from16 v5, v22

    move/from16 v9, v24

    move-object/from16 v2, v30

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 628
    .end local v17    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v24    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v9    # "outerDepth":I
    :cond_c
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move/from16 v22, v5

    move/from16 v24, v9

    .line 626
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .end local v9    # "outerDepth":I
    .restart local v22    # "type":I
    .restart local v24    # "outerDepth":I
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_7
    move-object/from16 v4, p1

    move-object/from16 v0, v16

    move/from16 v5, v22

    move/from16 v9, v24

    move-object/from16 v2, v30

    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v22    # "type":I
    .end local v24    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    .restart local v9    # "outerDepth":I
    :cond_d
    move-object/from16 v30, v2

    move/from16 v22, v5

    move/from16 v24, v9

    .line 717
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v7    # "timeCutOff":J
    .end local v9    # "outerDepth":I
    :cond_e
    nop

    .line 718
    return-void

    .line 618
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v5    # "type":I
    :cond_f
    move-object/from16 v30, v2

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Events not found in brightness tracker file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 714
    const-string v2, "BrightnessTracker"

    const-string v3, "Failed to parse brightness event"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to parse file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .param p1, "brightnessConfiguration"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 212
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void
.end method

.method public start(F)V
    .locals 3
    .param p1, "initialBrightness"    # F

    .line 204
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 205
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method stop()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 250
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 259
    return-void

    .line 257
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method writeEventsLocked(Ljava/io/OutputStream;)V
    .locals 18
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 539
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 540
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 541
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 543
    const-string v2, "events"

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 546
    .local v4, "toWrite":[Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v6, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v6}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 550
    iget-object v6, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v6, v8

    .line 551
    .local v6, "timeCutOff":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_6

    .line 552
    iget-object v9, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v10, v0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v9

    .line 553
    .local v9, "userSerialNo":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    aget-object v10, v4, v8

    iget-wide v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v10, v10, v6

    if-lez v10, :cond_5

    .line 554
    iget-object v10, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    aget-object v11, v4, v8

    invoke-virtual {v10, v11}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 555
    const-string v10, "event"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "nits"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    aget-object v11, v4, v8

    iget-wide v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "timestamp"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    aget-object v11, v4, v8

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "packageName"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    const-string v12, "batteryLevel"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "nightMode"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "colorTemperature"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 565
    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    .line 564
    const-string/jumbo v12, "lastNits"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 567
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 566
    const-string v12, "defaultConfig"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 569
    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    .line 568
    const-string/jumbo v12, "powerSaveFactor"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 571
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 570
    const-string/jumbo v12, "userPoint"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v11, "luxValues":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v12, "luxTimestamps":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v14, v14

    const/16 v15, 0x2c

    if-ge v13, v14, :cond_1

    .line 575
    if-lez v13, :cond_0

    .line 576
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    :cond_0
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v14, v14, v13

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v14, v14, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 582
    .end local v13    # "j":I
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "lux"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "luxTimestamps"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    aget-object v13, v4, v8

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    if-eqz v13, :cond_4

    aget-object v13, v4, v8

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v13, v13

    if-lez v13, :cond_4

    .line 586
    aget-object v13, v4, v8

    iget-wide v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 587
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 586
    const-string v14, "colorSampleDuration"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v13, "buckets":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    aget-object v5, v4, v8

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v5, v5

    if-ge v14, v5, :cond_3

    .line 590
    if-lez v14, :cond_2

    .line 591
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    :cond_2
    aget-object v5, v4, v8

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    aget-wide v16, v5, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_2

    .line 595
    .end local v14    # "j":I
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "colorValueBuckets"

    const/4 v15, 0x0

    invoke-interface {v1, v15, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 584
    .end local v13    # "buckets":Ljava/lang/StringBuilder;
    :cond_4
    move-object v15, v5

    .line 597
    :goto_3
    invoke-interface {v1, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    .end local v9    # "userSerialNo":I
    .end local v11    # "luxValues":Ljava/lang/StringBuilder;
    .end local v12    # "luxTimestamps":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 600
    .end local v8    # "i":I
    :cond_6
    const/4 v5, 0x0

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 602
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 603
    return-void
.end method
