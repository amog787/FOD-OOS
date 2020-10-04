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

.field private static final MSG_START_SENSOR_LISTENER:I = 0x3

.field private static final MSG_STOP_SENSOR_LISTENER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BrightnessTracker"

.field private static final TAG_EVENT:Ljava/lang/String; = "event"

.field private static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field private mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

.field private final mBgHandler:Landroid/os/Handler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColorSamplingEnabled:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDataCollectionLock:Ljava/lang/Object;

.field private mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

.field private mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDirty:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation
.end field

.field private final mEventsLock:Ljava/lang/Object;

.field private mFrameRate:F

.field private final mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

.field private mLastBatteryLevel:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field private mLastBrightness:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field private mLastSensorReadings:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private volatile mWriteBrightnessTrackerStateScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 131
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

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 163
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 169
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 171
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 181
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    if-eqz p2, :cond_0

    .line 184
    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessTracker$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 188
    :goto_0
    new-instance v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$TrackerHandler;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 189
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 190
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/BrightnessTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->batteryLevelChanged(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/BrightnessTracker;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # F

    .line 93
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

    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->updateColorSampling()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 93
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private backgroundStart(F)V
    .locals 4
    .param p1, "initialBrightness"    # F

    .line 206
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readEvents()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readAmbientBrightnessStats()V

    .line 209
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 211
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 212
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 213
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    new-instance v2, Lcom/android/server/display/BrightnessTracker$Receiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 223
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 226
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 227
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 229
    return-void

    .line 227
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

    .line 876
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    :try_start_0
    iput v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 878
    monitor-exit v0

    .line 879
    return-void

    .line 878
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private disableColorSampling()V
    .locals 3

    .line 798
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_0

    .line 799
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    .line 802
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 803
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-eqz v0, :cond_1

    .line 804
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 810
    :cond_1
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNoFramesToSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method private enableColorSampling()V
    .locals 5

    .line 760
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 761
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 767
    iget v0, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 768
    const-string v0, "BrightnessTracker"

    const-string v1, "Default display has a zero or negative framerate."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void

    .line 771
    :cond_1
    sget-wide v1, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 773
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    .line 781
    .local v0, "attributes":Landroid/hardware/display/DisplayedContentSamplingAttributes;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_2

    .line 782
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 784
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 791
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-nez v1, :cond_3

    .line 792
    new-instance v1, Lcom/android/server/display/BrightnessTracker$DisplayListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 793
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/BrightnessTracker$Injector;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 795
    :cond_3
    return-void

    .line 763
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

    .line 318
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 319
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    if-nez v0, :cond_0

    .line 321
    monitor-exit v3

    return-void

    .line 324
    :cond_0
    iget v0, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 325
    .local v0, "previousBrightness":F
    iput v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 327
    if-nez p2, :cond_1

    .line 331
    monitor-exit v3

    return-void

    .line 334
    :cond_1
    new-instance v4, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 335
    .local v4, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 336
    move-wide/from16 v5, p6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 337
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 338
    move/from16 v8, p4

    :try_start_1
    invoke-virtual {v4, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    move/from16 v9, p5

    :try_start_2
    invoke-virtual {v4, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 341
    iget-object v10, v1, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v10}, Ljava/util/Deque;->size()I

    move-result v10

    .line 342
    .local v10, "readingCount":I
    if-nez v10, :cond_2

    .line 344
    monitor-exit v3

    return-void

    .line 347
    :cond_2
    new-array v11, v10, [F

    .line 348
    .local v11, "luxValues":[F
    new-array v12, v10, [J

    .line 350
    .local v12, "luxTimestamps":[J
    const/4 v13, 0x0

    .line 353
    .local v13, "pos":I
    iget-object v14, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v14}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v14

    .line 354
    .local v14, "currentTimeMillis":J
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v16

    .line 355
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

    .line 356
    .local v19, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    move-object/from16 v18, v2

    move-object/from16 v2, v19

    .end local v19    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    .local v2, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    iget v5, v2, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    aput v5, v11, v13

    .line 357
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    sub-long v6, v16, v6

    .line 358
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long v5, v14, v5

    aput-wide v5, v12, v13

    .line 359
    nop

    .end local v2    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    add-int/lit8 v13, v13, 0x1

    .line 360
    move/from16 v7, p3

    move-wide/from16 v5, p6

    move-object/from16 v2, v18

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {v4, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 362
    invoke-virtual {v4, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 364
    iget v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 365
    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 366
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

    .line 369
    :try_start_3
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getFocusedStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 370
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    .line 371
    iget v2, v0, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 372
    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 383
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    nop

    .line 385
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->isNightDisplayActivated(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 386
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getNightDisplayColorTemperature(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 388
    iget-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget v2, v1, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->sampleColor(I)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    .line 390
    .local v0, "sample":Landroid/hardware/display/DisplayedContentSample;
    if-eqz v0, :cond_4

    sget-object v2, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v2

    if-eqz v2, :cond_4

    .line 392
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, v1, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    .line 393
    .local v2, "numMillis":F
    sget-object v3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 394
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v3

    .line 395
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    .line 393
    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 399
    .end local v0    # "sample":Landroid/hardware/display/DisplayedContentSample;
    .end local v2    # "numMillis":F
    :cond_4
    invoke-virtual {v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v2

    .line 403
    .local v2, "event":Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 404
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 405
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 406
    monitor-exit v3

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 378
    .end local v2    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :cond_5
    return-void

    .line 380
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 366
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

    .line 508
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;-><init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 509
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 510
    .local v0, "readFrom":Landroid/util/AtomicFile;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const/4 v1, 0x0

    .line 513
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 514
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    nop

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 520
    goto :goto_2

    .line 519
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 515
    :catch_0
    move-exception v2

    .line 516
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 517
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to read ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 522
    .end local v1    # "input":Ljava/io/FileInputStream;
    :cond_0
    :goto_2
    return-void
.end method

.method private readEvents()V
    .locals 6

    .line 487
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 490
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 491
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 492
    .local v1, "readFrom":Landroid/util/AtomicFile;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 493
    const/4 v2, 0x0

    .line 495
    .local v2, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    :goto_0
    goto :goto_2

    .line 501
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 497
    :catch_0
    move-exception v3

    .line 498
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 499
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to read change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    nop

    .end local v3    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    throw v3

    .line 504
    .end local v1    # "readFrom":Landroid/util/AtomicFile;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    :cond_0
    :goto_2
    monitor-exit v0

    .line 505
    return-void

    .line 504
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

    .line 872
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->add(IF)V

    .line 873
    return-void
.end method

.method private recordSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 842
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    sub-long/2addr v0, v2

    .line 843
    .local v0, "horizon":J
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 847
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 848
    invoke-interface {v5}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 850
    monitor-exit v2

    return-void

    .line 852
    :cond_0
    const/4 v3, 0x0

    move-object v4, v3

    .line 853
    .local v4, "data":Lcom/android/server/display/BrightnessTracker$LightData;
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 854
    invoke-interface {v5}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_1

    .line 856
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    move-object v4, v5

    goto :goto_0

    .line 860
    :cond_1
    if-eqz v4, :cond_2

    .line 861
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 864
    :cond_2
    new-instance v5, Lcom/android/server/display/BrightnessTracker$LightData;

    invoke-direct {v5, v3}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>(Lcom/android/server/display/BrightnessTracker$1;)V

    move-object v3, v5

    .line 865
    .end local v4    # "data":Lcom/android/server/display/BrightnessTracker$LightData;
    .local v3, "data":Lcom/android/server/display/BrightnessTracker$LightData;
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    .line 866
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    .line 867
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 868
    .end local v3    # "data":Lcom/android/server/display/BrightnessTracker$LightData;
    monitor-exit v2

    .line 869
    return-void

    .line 868
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private scheduleWriteBrightnessTrackerState()V
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 437
    :cond_0
    return-void
.end method

.method private startSensorListener()V
    .locals 4

    .line 410
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 411
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 412
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->start()V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 415
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 416
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    .line 415
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/os/Handler;)V

    .line 418
    :cond_0
    return-void
.end method

.method private stopSensorListener()V
    .locals 3

    .line 421
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->stop()V

    .line 423
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 426
    :cond_0
    return-void
.end method

.method private updateColorSampling()V
    .locals 2

    .line 813
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_0

    .line 814
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    .line 817
    .local v0, "frameRate":F
    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 818
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 819
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 821
    :cond_1
    return-void
.end method

.method private writeAmbientBrightnessStats()V
    .locals 5

    .line 471
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 472
    .local v0, "writeTo":Landroid/util/AtomicFile;
    if-nez v0, :cond_0

    .line 473
    return-void

    .line 475
    :cond_0
    const/4 v1, 0x0

    .line 477
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 478
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 479
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_0

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 482
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to write ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private writeEvents()V
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    if-nez v1, :cond_0

    .line 443
    monitor-exit v0

    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 447
    .local v1, "writeTo":Landroid/util/AtomicFile;
    if-nez v1, :cond_1

    .line 448
    monitor-exit v0

    return-void

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 451
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 452
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 454
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 456
    :cond_3
    const/4 v2, 0x0

    .line 458
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 459
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 460
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 461
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    goto :goto_0

    .line 462
    :catch_0
    move-exception v3

    .line 463
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 464
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to write change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v1    # "writeTo":Landroid/util/AtomicFile;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 710
    const-string v0, "BrightnessTracker state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
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

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
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

    .line 716
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings time span "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 718
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 719
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 722
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 723
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

    .line 724
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

    .line 725
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 726
    .local v0, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    aget-object v7, v0, v3

    iget-wide v7, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isUserSetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", powerBrightnessFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isDefaultBrightnessConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    const-string v4, " {"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    move v4, v2

    .local v4, "j":I
    :goto_1
    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 735
    if-eqz v4, :cond_1

    .line 736
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 740
    .end local v4    # "j":I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 742
    .end local v0    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteBrightnessTrackerStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;-><init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 746
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_4

    .line 747
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 748
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    .line 750
    :cond_4
    return-void

    .line 742
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 721
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

    .line 824
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_0

    .line 825
    nop

    .line 826
    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 827
    .local v0, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    if-eqz v0, :cond_0

    .line 828
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 831
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

    .line 264
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 266
    .local v1, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/display/BrightnessTracker$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v0

    .line 268
    .local v0, "profiles":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v2, "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 270
    aget v4, v0, v3

    .line 273
    .local v4, "profileId":I
    if-eqz p2, :cond_1

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 274
    .local v5, "redact":Z
    :cond_1
    :goto_1
    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v4    # "profileId":I
    .end local v5    # "redact":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v6, v1

    if-ge v4, v6, :cond_5

    .line 278
    aget-object v6, v1, v4

    iget v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 279
    .local v6, "redact":Ljava/lang/Boolean;
    if-eqz v6, :cond_4

    .line 280
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 281
    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 283
    :cond_3
    new-instance v7, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object v8, v1, v4

    invoke-direct {v7, v8, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 285
    .local v7, "event":Landroid/hardware/display/BrightnessChangeEvent;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v6    # "redact":Ljava/lang/Boolean;
    .end local v7    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 289
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4

    .line 266
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

    .line 745
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic lambda$scheduleWriteBrightnessTrackerState$0$BrightnessTracker()V
    .locals 1

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 432
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeEvents()V

    .line 433
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeAmbientBrightnessStats()V

    .line 434
    return-void
.end method

.method public notifyBrightnessChanged(FZFZZ)V
    .locals 10
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z

    .line 306
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 307
    const/4 v1, 0x0

    new-instance v9, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 309
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJ)V

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 310
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 311
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .line 254
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 255
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    .line 294
    return-void
.end method

.method readEventsLocked(Ljava/io/InputStream;)V
    .locals 36
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    move-object/from16 v1, p0

    const-string v0, ","

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 599
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 602
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

    .line 605
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "tag":Ljava/lang/String;
    const-string v7, "events"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 611
    iget-object v7, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v7}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v7, v9

    .line 613
    .local v7, "timeCutOff":J
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 614
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 615
    .local v9, "outerDepth":I
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v5, v10

    if-eq v10, v6, :cond_d

    const/4 v10, 0x3

    if-ne v5, v10, :cond_1

    .line 616
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v9, :cond_e

    .line 617
    :cond_1
    if-eq v5, v10, :cond_c

    const/4 v10, 0x4

    if-ne v5, v10, :cond_2

    .line 618
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move/from16 v22, v5

    move/from16 v25, v9

    goto/16 :goto_7

    .line 620
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 621
    const-string v10, "event"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 622
    new-instance v10, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 624
    .local v10, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    const-string/jumbo v11, "nits"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, "brightness":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v10, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 626
    const-string/jumbo v13, "timestamp"

    invoke-interface {v2, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 627
    .local v13, "timestamp":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 628
    const-string/jumbo v14, "packageName"

    invoke-interface {v2, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 629
    const-string/jumbo v14, "user"

    invoke-interface {v2, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 630
    .local v14, "user":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v6, v1, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v15, v6, v12}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 631
    const-string v6, "batteryLevel"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 632
    .local v6, "batteryLevel":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v10, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 633
    const-string/jumbo v12, "nightMode"

    const/4 v15, 0x0

    invoke-interface {v2, v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 634
    .local v12, "nightMode":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 635
    const-string v15, "colorTemperature"

    .line 636
    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "tag":Ljava/lang/String;
    .local v17, "tag":Ljava/lang/String;
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v3, v15

    .line 637
    .local v3, "colorTemperature":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 638
    const-string/jumbo v15, "lastNits"

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "colorTemperature":Ljava/lang/String;
    .local v18, "colorTemperature":Ljava/lang/String;
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v3, v15

    .line 639
    .local v3, "lastBrightness":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual {v10, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 641
    const-string/jumbo v15, "lux"

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "lastBrightness":Ljava/lang/String;
    .local v19, "lastBrightness":Ljava/lang/String;
    invoke-interface {v2, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 642
    .local v15, "luxValue":Ljava/lang/String;
    const-string/jumbo v3, "luxTimestamps"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "luxTimestamp":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, "luxValuesStrings":[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v20

    .line 646
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

    .line 647
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move/from16 v25, v9

    goto/16 :goto_6

    .line 649
    :cond_3
    array-length v3, v4

    new-array v3, v3, [F

    .line 650
    .local v3, "luxValues":[F
    array-length v6, v4

    new-array v6, v6, [J

    .line 651
    .local v6, "luxTimestamps":[J
    const/16 v23, 0x0

    move/from16 v24, v23

    move/from16 v25, v9

    move/from16 v9, v24

    .local v9, "i":I
    .local v25, "outerDepth":I
    :goto_2
    move-object/from16 v24, v11

    .end local v11    # "brightness":Ljava/lang/String;
    .local v24, "brightness":Ljava/lang/String;
    array-length v11, v3

    if-ge v9, v11, :cond_4

    .line 652
    aget-object v11, v4, v9

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v3, v9

    .line 653
    aget-object v11, v5, v9

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    aput-wide v26, v6, v9

    .line 651
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v24

    goto :goto_2

    .line 655
    .end local v9    # "i":I
    :cond_4
    invoke-virtual {v10, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 656
    invoke-virtual {v10, v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 658
    const-string v9, "defaultConfig"

    const/4 v11, 0x0

    invoke-interface {v2, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 659
    .local v9, "defaultConfig":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 660
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 662
    :cond_5
    const-string/jumbo v11, "powerSaveFactor"

    move-object/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "luxValues":[F
    .local v26, "luxValues":[F
    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 663
    .local v3, "powerSave":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 664
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_3

    .line 666
    :cond_6
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 668
    :goto_3
    const-string/jumbo v11, "userPoint"

    move-object/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "powerSave":Ljava/lang/String;
    .local v27, "powerSave":Ljava/lang/String;
    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 669
    .local v3, "userPoint":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 670
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 673
    :cond_7
    const-string v11, "colorSampleDuration"

    .line 674
    move-object/from16 v28, v3

    const/4 v3, 0x0

    .end local v3    # "userPoint":Ljava/lang/String;
    .local v28, "userPoint":Ljava/lang/String;
    invoke-interface {v2, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, "colorSampleDurationString":Ljava/lang/String;
    const-string v3, "colorValueBuckets"

    .line 676
    move-object/from16 v29, v4

    const/4 v4, 0x0

    .end local v4    # "luxValuesStrings":[Ljava/lang/String;
    .local v29, "luxValuesStrings":[Ljava/lang/String;
    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "colorValueBucketsString":Ljava/lang/String;
    if-eqz v11, :cond_9

    if-eqz v3, :cond_9

    .line 678
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    move-wide/from16 v32, v30

    .line 679
    .local v32, "colorSampleDuration":J
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, "buckets":[Ljava/lang/String;
    move-object/from16 v16, v0

    array-length v0, v4

    new-array v0, v0, [J

    .line 681
    .local v0, "bucketValues":[J
    move-object/from16 v30, v2

    move/from16 v2, v23

    .local v2, "i":I
    .local v30, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    move-object/from16 v23, v3

    .end local v3    # "colorValueBucketsString":Ljava/lang/String;
    .local v23, "colorValueBucketsString":Ljava/lang/String;
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 682
    aget-object v3, v4, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    aput-wide v34, v0, v2

    .line 681
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v23

    goto :goto_4

    .line 684
    .end local v2    # "i":I
    :cond_8
    move-wide/from16 v2, v32

    .end local v32    # "colorSampleDuration":J
    .local v2, "colorSampleDuration":J
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_5

    .line 677
    .end local v0    # "bucketValues":[J
    .end local v4    # "buckets":[Ljava/lang/String;
    .end local v23    # "colorValueBucketsString":Ljava/lang/String;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "colorValueBucketsString":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move-object/from16 v23, v3

    .line 687
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "colorValueBucketsString":Ljava/lang/String;
    .restart local v23    # "colorValueBucketsString":Ljava/lang/String;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_5
    invoke-virtual {v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v0

    .line 693
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

    .line 695
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 697
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
    .end local v23    # "colorValueBucketsString":Ljava/lang/String;
    .end local v24    # "brightness":Ljava/lang/String;
    .end local v26    # "luxValues":[F
    .end local v27    # "powerSave":Ljava/lang/String;
    .end local v28    # "userPoint":Ljava/lang/String;
    .end local v29    # "luxValuesStrings":[Ljava/lang/String;
    :cond_a
    goto :goto_6

    .line 621
    .end local v17    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v25    # "outerDepth":I
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

    move/from16 v25, v9

    .line 615
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v9    # "outerDepth":I
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    .restart local v25    # "outerDepth":I
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_6
    move-object/from16 v4, p1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move/from16 v5, v22

    move/from16 v9, v25

    move-object/from16 v2, v30

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 617
    .end local v17    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v25    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v9    # "outerDepth":I
    :cond_c
    move-object/from16 v16, v0

    move-object/from16 v30, v2

    move/from16 v22, v5

    move/from16 v25, v9

    .line 615
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .end local v9    # "outerDepth":I
    .restart local v22    # "type":I
    .restart local v25    # "outerDepth":I
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_7
    move-object/from16 v4, p1

    move-object/from16 v0, v16

    move/from16 v5, v22

    move/from16 v9, v25

    move-object/from16 v2, v30

    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v22    # "type":I
    .end local v25    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    .restart local v9    # "outerDepth":I
    :cond_d
    move-object/from16 v30, v2

    move/from16 v22, v5

    move/from16 v25, v9

    .line 706
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v7    # "timeCutOff":J
    .end local v9    # "outerDepth":I
    :cond_e
    nop

    .line 707
    return-void

    .line 607
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

    .line 699
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/display/BrightnessTracker;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 703
    const-string v2, "BrightnessTracker"

    const-string v3, "Failed to parse brightness event"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to parse file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public start(F)V
    .locals 3
    .param p1, "initialBrightness"    # F

    .line 201
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 202
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void
.end method

.method stop()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 239
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 248
    return-void

    .line 246
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 528
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 529
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 532
    const-string v2, "events"

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    iget-object v4, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 535
    .local v4, "toWrite":[Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v6, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v6}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 539
    iget-object v6, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v6, v8

    .line 540
    .local v6, "timeCutOff":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_6

    .line 541
    iget-object v9, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v10, v0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v9

    .line 542
    .local v9, "userSerialNo":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    aget-object v10, v4, v8

    iget-wide v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v10, v10, v6

    if-lez v10, :cond_5

    .line 543
    iget-object v10, v0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    aget-object v11, v4, v8

    invoke-virtual {v10, v11}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 544
    const-string v10, "event"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "nits"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    aget-object v11, v4, v8

    iget-wide v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "timestamp"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    aget-object v11, v4, v8

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "packageName"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    const-string v12, "batteryLevel"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "nightMode"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "colorTemperature"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 554
    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    .line 553
    const-string/jumbo v12, "lastNits"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 556
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 555
    const-string v12, "defaultConfig"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 558
    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    .line 557
    const-string/jumbo v12, "powerSaveFactor"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 560
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 559
    const-string/jumbo v12, "userPoint"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v11, "luxValues":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v12, "luxTimestamps":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v14, v14

    const/16 v15, 0x2c

    if-ge v13, v14, :cond_1

    .line 564
    if-lez v13, :cond_0

    .line 565
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    :cond_0
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v14, v14, v13

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v14, v14, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 571
    .end local v13    # "j":I
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "lux"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "luxTimestamps"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    aget-object v13, v4, v8

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    if-eqz v13, :cond_4

    aget-object v13, v4, v8

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v13, v13

    if-lez v13, :cond_4

    .line 575
    aget-object v13, v4, v8

    iget-wide v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 576
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 575
    const-string v14, "colorSampleDuration"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v13, "buckets":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    aget-object v5, v4, v8

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v5, v5

    if-ge v14, v5, :cond_3

    .line 579
    if-lez v14, :cond_2

    .line 580
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    :cond_2
    aget-object v5, v4, v8

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    aget-wide v16, v5, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_2

    .line 584
    .end local v14    # "j":I
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "colorValueBuckets"

    const/4 v15, 0x0

    invoke-interface {v1, v15, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 573
    .end local v13    # "buckets":Ljava/lang/StringBuilder;
    :cond_4
    move-object v15, v5

    .line 586
    :goto_3
    invoke-interface {v1, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    .end local v9    # "userSerialNo":I
    .end local v11    # "luxValues":Ljava/lang/StringBuilder;
    .end local v12    # "luxTimestamps":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 589
    .end local v8    # "i":I
    :cond_6
    const/4 v5, 0x0

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 591
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 592
    return-void
.end method
