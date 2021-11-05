.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Shell;,
        Lcom/android/server/DeviceIdleController$Injector;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MotionListener;,
        Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;
    }
.end annotation


# static fields
.field private static final ACTIVE_REASON_ALARM:I = 0x7

.field private static final ACTIVE_REASON_CHARGING:I = 0x3

.field private static final ACTIVE_REASON_FORCED:I = 0x6

.field private static final ACTIVE_REASON_FROM_BINDER_CALL:I = 0x5

.field private static final ACTIVE_REASON_MOTION:I = 0x1

.field private static final ACTIVE_REASON_SCREEN:I = 0x2

.field private static final ACTIVE_REASON_UNKNOWN:I = 0x0

.field private static final ACTIVE_REASON_UNLOCKED:I = 0x4

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field public static final LIGHTIDLE_STATUS:Ljava/lang/String; = "LightIdle_Status"

.field static final LIGHT_STATE_ACTIVE:I = 0x0

.field static final LIGHT_STATE_IDLE:I = 0x4

.field static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field static final LIGHT_STATE_INACTIVE:I = 0x1

.field static final LIGHT_STATE_OVERRIDE:I = 0x7

.field static final LIGHT_STATE_PRE_IDLE:I = 0x3

.field static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field static final MIN_PRE_IDLE_FACTOR_CHANGE:F = 0.05f

.field static final MIN_STATE_STEP_ALARM_CHANGE:J = 0xea60L

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field static final MSG_REPORT_STATIONARY_STATUS:I = 0x7

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_CHANGED:I = 0x9

.field static final MSG_RESET_PRE_IDLE_TIMEOUT_FACTOR:I = 0xc

.field private static final MSG_SEND_CONSTRAINT_MONITORING:I = 0xa

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field static final MSG_UPDATE_PRE_IDLE_TIMEOUT_FACTOR:I = 0xb

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field static final SET_IDLE_FACTOR_RESULT_IGNORED:I = 0x0

.field static final SET_IDLE_FACTOR_RESULT_INVALID:I = 0x3

.field static final SET_IDLE_FACTOR_RESULT_NOT_SUPPORT:I = 0x2

.field static final SET_IDLE_FACTOR_RESULT_OK:I = 0x1

.field static final SET_IDLE_FACTOR_RESULT_UNINIT:I = -0x1

.field static final STATE_ACTIVE:I = 0x0

.field static final STATE_IDLE:I = 0x5

.field static final STATE_IDLE_MAINTENANCE:I = 0x6

.field static final STATE_IDLE_PENDING:I = 0x2

.field static final STATE_INACTIVE:I = 0x1

.field static final STATE_LOCATING:I = 0x4

.field static final STATE_QUICK_DOZE_DELAY:I = 0x7

.field static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private m1stLightIdle:Z

.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mActiveReason:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Landroid/util/AtomicFile;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

.field private final mConstraints:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/deviceidle/IDeviceIdleConstraint;",
            "Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mCurLightIdleBudget:J

.field final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private final mEventCmds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private mIdleStartTime:J

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private final mInjector:Lcom/android/server/DeviceIdleController$Injector;

.field private final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private mLastMotionEventElapsed:J

.field private mLastPreIdleFactor:F

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field private mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocalService:Lcom/android/server/DeviceIdleInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private mMaintenanceStartTime:J

.field final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private final mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private final mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNetworkConnected:Z

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mNumBlockingConstraints:I

.field private mOpPowerControllerManager:Lcom/oneplus/android/power/IOpPowerControllerManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreIdleFactor:F

.field private mQuickDozeActivated:Z

.field private mQuickDozeActivatedWhileIdling:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenLocked:Z

.field private mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private final mStationaryListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/DeviceIdleInternal$StationaryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUseMotionSensor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 286
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2151
    new-instance v0, Lcom/android/server/DeviceIdleController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;-><init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V

    .line 2152
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/DeviceIdleController$Injector;

    .line 2132
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 337
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    .line 348
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 502
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 508
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 514
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 519
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 524
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 530
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 536
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 543
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 548
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 554
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 559
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 565
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 571
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 579
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 585
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 587
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 597
    const/16 v0, 0x64

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 598
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 599
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 671
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 701
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 712
    new-instance v0, Lcom/android/server/-$$Lambda$DeviceIdleController$pUAsoxLVwpJ9Ac-b6Wbul1k9bIw;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$DeviceIdleController$pUAsoxLVwpJ9Ac-b6Wbul1k9bIw;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 720
    new-instance v0, Lcom/android/server/-$$Lambda$DeviceIdleController$t0VfPABg4g5djO2-js6H17nAdXk;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$DeviceIdleController$t0VfPABg4g5djO2-js6H17nAdXk;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 735
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 749
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 760
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 775
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 902
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 904
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 925
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 2118
    new-instance v0, Lcom/android/server/DeviceIdleController$9;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$9;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 2133
    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 2134
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 2135
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/DeviceIdleController$Injector;->getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2136
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/DeviceIdleController$Injector;->getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 2137
    const-class v1, Lcom/android/server/AppStateTracker;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2138
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->useMotionSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 2142
    invoke-static {p1}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->initInstance(Landroid/content/Context;)V

    .line 2145
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_POWERCONTROLLER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerControllerManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mOpPowerControllerManager:Lcom/oneplus/android/power/IOpPowerControllerManager;

    .line 2148
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DeviceIdleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/DeviceIdleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/DeviceIdleController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/DeviceIdleController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/DeviceIdleController;)Lcom/oneplus/android/power/IOpPowerControllerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mOpPowerControllerManager:Lcom/oneplus/android/power/IOpPowerControllerManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/DeviceIdleController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/DeviceIdleController;Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Ljava/util/List;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "x2"    # Z

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 276
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceIdleController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 276
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method private addEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eq v2, p1, :cond_0

    .line 662
    const/4 v2, 0x1

    const/16 v3, 0x63

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 663
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    .line 666
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 667
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 669
    :cond_0
    return-void
.end method

.method private addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2430
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2431
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .line 2432
    .local v1, "numErrors":I
    monitor-enter p0

    .line 2433
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2434
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2436
    add-int/lit8 v1, v1, 0x1

    .line 2437
    goto :goto_1

    .line 2440
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2442
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 2444
    add-int/lit8 v0, v0, 0x1

    .line 2449
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_1

    .line 2446
    :catch_0
    move-exception v4

    .line 2447
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to add unknown package to power save whitelist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    add-int/lit8 v1, v1, 0x1

    .line 2433
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2451
    .end local v2    # "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 2452
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2453
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2456
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    return v2

    .line 2456
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private becomeActiveLocked(Ljava/lang/String;IJZ)V
    .locals 3
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I
    .param p3, "newInactiveTimeout"    # J
    .param p5, "changeLightIdle"    # Z

    .line 3036
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "becomeActiveLocked, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", changeLightIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_4

    .line 3041
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3042
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3043
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3044
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3047
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 3048
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3051
    :cond_2
    if-eqz p5, :cond_3

    .line 3052
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3053
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3054
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3056
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 3057
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3062
    :cond_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mOpPowerControllerManager:Lcom/oneplus/android/power/IOpPowerControllerManager;

    if-eqz v0, :cond_4

    .line 3063
    invoke-interface {v0}, Lcom/oneplus/android/power/IOpPowerControllerManager;->informDeviceActive()V

    .line 3069
    :cond_4
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleControllerInjector;->setDozeState(I)V

    .line 3071
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 4
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .line 3879
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3880
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3881
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3882
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3885
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 3886
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3887
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3886
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3890
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 3891
    .local v0, "size":I
    new-array v1, v0, [I

    .line 3892
    .local v1, "appids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 3893
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 3892
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3895
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private cancelMotionRegistrationAlarmLocked()V
    .locals 2

    .line 3810
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3811
    return-void
.end method

.method private cancelMotionTimeoutAlarmLocked()V
    .locals 2

    .line 3806
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3807
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 4100
    const-string v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4101
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4103
    const-string v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4104
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4105
    const-string v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4106
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    const-string v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4108
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    const-string v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    const-string v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4112
    const-string v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    const-string v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    const-string v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    const-string v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    const-string v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4120
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4121
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    const-string v0, "  sys-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4126
    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    const-string v0, "    reset will reset the whitelist to the original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4129
    const-string v0, "    Prints the system whitelist if no arguments are specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4133
    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4134
    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    const-string v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    const-string v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4143
    const-string v0, "  motion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    const-string v0, "  pre-idle-factor [0|1|2]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4146
    const-string v0, "    Set a new factor to idle time before step to idle(inactive_to and idle_after_inactive_to)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    const-string v0, "  reset-pre-idle-factor"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    const-string v0, "    Reset factor to idle time to default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4150
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .line 2167
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isStationaryLocked()Z
    .locals 6

    .line 795
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 796
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 798
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 796
    :goto_0
    return v2
.end method

.method private isUpcomingAlarmClock()Z
    .locals 4

    .line 3330
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3331
    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3330
    :goto_0
    return v0
.end method

.method static synthetic lambda$stepIdleStateLocked$3(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Z
    .locals 1
    .param p0, "x"    # Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 3362
    iget-boolean v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    return v0
.end method

.method static synthetic lambda$stepIdleStateLocked$4(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 3363
    iget-object v0, p0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    return-object v0
.end method

.method static lightStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 443
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 451
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 450
    :cond_0
    const-string v0, "OVERRIDE"

    return-object v0

    .line 449
    :cond_1
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 448
    :cond_2
    const-string v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 447
    :cond_3
    const-string v0, "IDLE"

    return-object v0

    .line 446
    :cond_4
    const-string v0, "PRE_IDLE"

    return-object v0

    .line 445
    :cond_5
    const-string v0, "INACTIVE"

    return-object v0

    .line 444
    :cond_6
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method private maybeDoImmediateMaintenance()V
    .locals 5

    .line 3631
    monitor-enter p0

    .line 3632
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    sub-long/2addr v0, v2

    .line 3636
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3637
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3640
    .end local v0    # "duration":J
    :cond_0
    monitor-exit p0

    .line 3641
    return-void

    .line 3640
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeStopMonitoringMotionLocked()V
    .locals 2

    .line 3772
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "maybeStopMonitoringMotionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3774
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_1

    .line 3775
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 3776
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionTimeoutAlarmLocked()V

    .line 3778
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->cancelMotionRegistrationAlarmLocked()V

    .line 3780
    :cond_2
    return-void
.end method

.method private moveToStateLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 3488
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3489
    .local v0, "oldState":I
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3490
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3491
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3492
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3491
    const-string v2, "Moved from STATE_%s to STATE_%s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    :cond_0
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v1, p2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3495
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3496
    return-void
.end method

.method private onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2849
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing appId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from temp whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2853
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2854
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2855
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 2857
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v1, 0x4011

    invoke-interface {v0, v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2860
    goto :goto_0

    .line 2859
    :catch_0
    move-exception v0

    .line 2861
    :goto_0
    return-void
.end method

.method private onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .locals 5
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "active"    # Z

    .line 2379
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2380
    .local v0, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    if-nez v0, :cond_0

    .line 2381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device-idle constraint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    return-void

    .line 2384
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eq p2, v1, :cond_4

    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v1, :cond_4

    .line 2385
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2386
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    iget-boolean v2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2387
    if-nez v1, :cond_4

    .line 2388
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v1, :cond_2

    .line 2389
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_1

    .line 2390
    :cond_2
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 2391
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2395
    :cond_4
    :goto_1
    return-void
.end method

.method private passWhiteListsToForceAppStandbyTrackerLocked()V
    .locals 4

    .line 3958
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppStateTracker;->setPowerSaveWhitelistAppIds([I[I[I)V

    .line 3962
    return-void
.end method

.method private postResetPreIdleTimeoutFactor()V
    .locals 2

    .line 3605
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3606
    return-void
.end method

.method private postStationaryStatus(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 786
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 787
    return-void
.end method

.method private postStationaryStatusUpdated()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 792
    return-void
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "delay"    # J

    .line 2816
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postTempActiveTimeoutMessage: appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2820
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2819
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2821
    return-void
.end method

.method private postUpdatePreIdleFactor()V
    .locals 2

    .line 3601
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3602
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 3987
    const-string v0, "Failed parsing config "

    const-string v1, "DeviceIdleController"

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3991
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v5, :cond_0

    if-eq v4, v6, :cond_0

    goto :goto_0

    .line 3996
    :cond_0
    if-ne v4, v5, :cond_a

    .line 4000
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4001
    .local v3, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    if-eq v5, v6, :cond_b

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 4002
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_b

    .line 4003
    :cond_2
    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 4004
    goto :goto_1

    .line 4007
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4008
    .local v5, "tagName":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0xed5

    if-eq v8, v9, :cond_6

    const v9, 0x6a37689

    if-eq v8, v9, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    const-string/jumbo v8, "un-wl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v7, v6

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "wl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    :goto_2
    const-string/jumbo v8, "n"

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    if-eq v7, v6, :cond_7

    .line 4029
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <config>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4030
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4029
    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 4022
    :cond_7
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4023
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4024
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 4025
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 4024
    invoke-virtual {v8, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4010
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_8
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4011
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 4013
    const/high16 v8, 0x400000

    :try_start_2
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 4015
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4016
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 4015
    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 4017
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 4034
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_9
    :goto_3
    goto/16 :goto_1

    .line 3997
    .end local v3    # "outerDepth":I
    :cond_a
    :try_start_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "no start tag found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4046
    .end local v4    # "type":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 4047
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4044
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 4045
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 4042
    :catch_3
    move-exception v3

    .line 4043
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_4

    .line 4040
    :catch_4
    move-exception v3

    .line 4041
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 4038
    :catch_5
    move-exception v3

    .line 4039
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NullPointerException;
    goto :goto_4

    .line 4036
    :catch_6
    move-exception v3

    .line 4037
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_b
    :goto_4
    nop

    .line 4049
    :goto_5
    return-void
.end method

.method private registerDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .locals 4
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 2344
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering device-idle constraint with invalid type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    return-void

    .line 2349
    :cond_0
    const/4 v0, 0x3

    .line 2350
    .local v0, "minState":I
    goto :goto_0

    .line 2346
    .end local v0    # "minState":I
    :cond_1
    const/4 v0, 0x0

    .line 2347
    .restart local v0    # "minState":I
    nop

    .line 2355
    :goto_0
    monitor-enter p0

    .line 2356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2357
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-registering device-idle constraint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    monitor-exit p0

    return-void

    .line 2360
    :cond_2
    new-instance v1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-direct {v1, p2, v0}, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;-><init>(Ljava/lang/String;I)V

    .line 2361
    .local v1, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2362
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2363
    .end local v1    # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    monitor-exit p0

    .line 2364
    return-void

    .line 2363
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removePowerSaveTempWhitelistAppDirectInternal(I)V
    .locals 3
    .param p1, "appId"    # I

    .line 2803
    monitor-enter p0

    .line 2804
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 2805
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 2807
    monitor-exit p0

    return-void

    .line 2809
    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2810
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2811
    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 2812
    .end local v0    # "idx":I
    .end local v1    # "reason":Ljava/lang/String;
    monitor-exit p0

    .line 2813
    return-void

    .line 2812
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2794
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 2796
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2797
    .local v1, "appId":I
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2799
    .end local v0    # "uid":I
    .end local v1    # "appId":I
    goto :goto_0

    .line 2798
    :catch_0
    move-exception v0

    .line 2800
    :goto_0
    return-void
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .locals 3

    .line 3946
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3947
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3948
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3949
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .locals 3

    .line 3952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3953
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3954
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3955
    return-void
.end method

.method private resetIdleManagementLocked()V
    .locals 2

    .line 3190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3191
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3192
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 3194
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3195
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3196
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3197
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 3198
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3199
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3200
    return-void
.end method

.method private resetLightIdleManagementLocked()V
    .locals 2

    .line 3203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3204
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3205
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3206
    return-void
.end method

.method private scheduleMotionRegistrationAlarmLocked()V
    .locals 11

    .line 3854
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "scheduleMotionRegistrationAlarmLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 3856
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 3857
    .local v0, "nextMotionRegistrationAlarmTime":J
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.motion_registration"

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3860
    return-void
.end method

.method private scheduleMotionTimeoutAlarmLocked()V
    .locals 11

    .line 3863
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "scheduleMotionAlarmLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 3865
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    add-long/2addr v0, v2

    .line 3866
    .local v0, "nextMotionTimeoutAlarmTime":J
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v8, "DeviceIdleController.motion"

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3868
    return-void
.end method

.method private setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .locals 4
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "monitor"    # Z

    .line 2399
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2400
    .local v0, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v1, p2, :cond_0

    .line 2401
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 2402
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 2405
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0xa

    .line 2406
    const/4 v3, -0x1

    .line 2405
    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2408
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2410
    :cond_0
    return-void
.end method

.method private shouldUseIdleTimeoutFactorLocked()Z
    .locals 2

    .line 3645
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3646
    const/4 v0, 0x0

    return v0

    .line 3648
    :cond_0
    return v1
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 405
    packed-switch p0, :pswitch_data_0

    .line 414
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :pswitch_0
    const-string v0, "QUICK_DOZE_DELAY"

    return-object v0

    .line 412
    :pswitch_1
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 411
    :pswitch_2
    const-string v0, "IDLE"

    return-object v0

    .line 410
    :pswitch_3
    const-string v0, "LOCATING"

    return-object v0

    .line 409
    :pswitch_4
    const-string v0, "SENSING"

    return-object v0

    .line 408
    :pswitch_5
    const-string v0, "IDLE_PENDING"

    return-object v0

    .line 407
    :pswitch_6
    const-string v0, "INACTIVE"

    return-object v0

    .line 406
    :pswitch_7
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unregisterDeviceIdleConstraintInternal(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .locals 1
    .param p1, "constraint"    # Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2367
    monitor-enter p0

    .line 2369
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2372
    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2373
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    monitor-exit p0

    .line 2375
    return-void

    .line 2374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 824
    monitor-enter p0

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 833
    :cond_1
    monitor-exit p0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateActiveConstraintsLocked()V
    .locals 7

    .line 2414
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2415
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2416
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 2417
    .local v2, "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 2418
    .local v3, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    iget v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v0

    .line 2419
    .local v4, "monitoring":Z
    :goto_1
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eq v4, v5, :cond_1

    .line 2420
    invoke-direct {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 2421
    iput-boolean v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 2423
    :cond_1
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    if-eqz v5, :cond_2

    .line 2424
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 2415
    .end local v2    # "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .end local v3    # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    .end local v4    # "monitoring":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2427
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private updatePreIdleFactor()V
    .locals 8

    .line 3609
    monitor-enter p0

    .line 3610
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3611
    monitor-exit p0

    return-void

    .line 3613
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3614
    :cond_1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3615
    monitor-exit p0

    return-void

    .line 3617
    :cond_2
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3618
    .local v0, "delay":J
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 3619
    monitor-exit p0

    return-void

    .line 3621
    :cond_3
    long-to-float v4, v0

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    .line 3622
    .local v4, "newDelay":J
    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gez v2, :cond_4

    .line 3623
    monitor-exit p0

    return-void

    .line 3625
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3627
    .end local v0    # "delay":J
    .end local v4    # "newDelay":J
    :cond_5
    monitor-exit p0

    .line 3628
    return-void

    .line 3627
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateTempWhitelistAppIdsLocked(IZ)V
    .locals 4
    .param p1, "appId"    # I
    .param p2, "adding"    # Z

    .line 3920
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3921
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 3922
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3924
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3925
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 3924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3927
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    const-string v2, "DeviceIdleController"

    if-eqz v1, :cond_3

    .line 3928
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 3929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting activity manager temp whitelist to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3930
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3929
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    :cond_2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v3, p1, p2}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempWhitelist([IIZ)V

    .line 3935
    :cond_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_5

    .line 3936
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 3937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting wakelock temp whitelist to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3938
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3937
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    :cond_4
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 3942
    :cond_5
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3943
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .locals 3

    .line 3899
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 3901
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 3903
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 3905
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    .line 3906
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 3909
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_2

    .line 3910
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting wakelock whitelist to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 3912
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3911
    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 3916
    :cond_2
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3917
    return-void
.end method

.method private verifyAlarmStateLocked()V
    .locals 6

    .line 3091
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-wide/16 v1, 0x0

    const-string v3, "DeviceIdleController"

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 3092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mState=ACTIVE but mNextAlarmTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but AlarmManager is idling"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0}, Lcom/android/server/AlarmManagerInternal;->isIdling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3098
    const-string/jumbo v0, "mState=IDLE but AlarmManager is not idling"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_2
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_3

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    .line 3101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLightState=ACTIVE but mNextLightAlarmTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3101
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_3
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2675
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2679
    .local v1, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2680
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2679
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "addPowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v1

    move/from16 v6, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2686
    .end local p4    # "userId":I
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2688
    .local v11, "token":J
    const/4 v9, 0x1

    move-object v3, p0

    move v4, v1

    move-object v5, p1

    move-wide v6, p2

    move v8, v2

    move-object/from16 v10, p5

    :try_start_0
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2691
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2692
    nop

    .line 2693
    return-void

    .line 2691
    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2692
    throw v3
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .locals 16
    .param p1, "callingUid"    # I
    .param p2, "uid"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 2735
    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2736
    .local v4, "timeNow":J
    const/4 v6, 0x0

    .line 2737
    .local v6, "informWhitelistChanged":Z
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 2738
    .local v7, "appId":I
    monitor-enter p0

    .line 2739
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v8, v0

    .line 2740
    .local v8, "callingAppId":I
    const/16 v0, 0x2710

    if-lt v8, v0, :cond_1

    .line 2741
    :try_start_1
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2742
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not on whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "timeNow":J
    .end local v6    # "informWhitelistChanged":Z
    .end local v7    # "appId":I
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "callingUid":I
    .end local p2    # "uid":I
    .end local p3    # "duration":J
    .end local p5    # "sync":Z
    .end local p6    # "reason":Ljava/lang/String;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2783
    .end local v8    # "callingAppId":I
    .restart local v4    # "timeNow":J
    .restart local v6    # "informWhitelistChanged":Z
    .restart local v7    # "appId":I
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "callingUid":I
    .restart local p2    # "uid":I
    .restart local p3    # "duration":J
    .restart local p5    # "sync":Z
    .restart local p6    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move/from16 v14, p2

    move-wide/from16 v9, p3

    goto/16 :goto_8

    .line 2746
    .restart local v8    # "callingAppId":I
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v11, p3

    :try_start_3
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2747
    .end local p3    # "duration":J
    .local v9, "duration":J
    :try_start_4
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2748
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 2750
    .local v12, "newEntry":Z
    :goto_1
    if-eqz v12, :cond_3

    .line 2751
    new-instance v13, Landroid/util/Pair;

    new-instance v14, Landroid/util/MutableLong;

    move/from16 p4, v12

    .end local v12    # "newEntry":Z
    .local p4, "newEntry":Z
    const-wide/16 v11, 0x0

    invoke-direct {v14, v11, v12}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {v13, v14, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v13

    .line 2752
    iget-object v11, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v11, v0

    goto :goto_2

    .line 2750
    .end local p4    # "newEntry":Z
    .restart local v12    # "newEntry":Z
    :cond_3
    move/from16 p4, v12

    .end local v12    # "newEntry":Z
    .restart local p4    # "newEntry":Z
    move-object v11, v0

    .line 2754
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .local v11, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_2
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    add-long v12, v4, v9

    iput-wide v12, v0, Landroid/util/MutableLong;->value:J

    .line 2755
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2762
    const-string v0, "DeviceIdleController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding AppId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " to temp whitelist. New entry: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    .end local p4    # "newEntry":Z
    .local v13, "newEntry":Z
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", duration="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", sync="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", reason="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 2755
    .end local v13    # "newEntry":Z
    .restart local p4    # "newEntry":Z
    :cond_4
    move/from16 v13, p4

    .line 2766
    .end local p4    # "newEntry":Z
    .restart local v13    # "newEntry":Z
    :goto_3
    if-eqz v13, :cond_6

    .line 2769
    :try_start_5
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const v12, 0x8011

    move/from16 v14, p2

    :try_start_6
    invoke-interface {v0, v12, v3, v14}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2772
    goto :goto_4

    .line 2771
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v14, p2

    .line 2773
    :goto_4
    :try_start_7
    invoke-direct {v1, v7, v9, v10}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2774
    const/4 v12, 0x1

    invoke-direct {v1, v7, v12}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2775
    if-eqz v2, :cond_5

    .line 2776
    const/4 v0, 0x1

    move v6, v0

    .end local v6    # "informWhitelistChanged":Z
    .local v0, "informWhitelistChanged":Z
    goto :goto_5

    .line 2778
    .end local v0    # "informWhitelistChanged":Z
    .restart local v6    # "informWhitelistChanged":Z
    :cond_5
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v12, 0x9

    const/4 v15, 0x1

    invoke-virtual {v0, v12, v7, v15}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2779
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2781
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    goto :goto_6

    .line 2766
    :cond_6
    move/from16 v14, p2

    .line 2783
    .end local v8    # "callingAppId":I
    .end local v11    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v13    # "newEntry":Z
    :goto_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2784
    if-eqz v6, :cond_7

    .line 2785
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 2787
    :cond_7
    return-void

    .line 2783
    :catchall_1
    move-exception v0

    move/from16 v14, p2

    goto :goto_8

    .end local v9    # "duration":J
    .restart local p3    # "duration":J
    :catchall_2
    move-exception v0

    move/from16 v14, p2

    goto :goto_7

    :catchall_3
    move-exception v0

    move/from16 v14, p2

    move-wide/from16 v11, p3

    :goto_7
    move-wide v9, v11

    .end local p3    # "duration":J
    .restart local v9    # "duration":J
    :goto_8
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_8
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 2723
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 2724
    .local v3, "uid":I
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2726
    .end local v3    # "uid":I
    goto :goto_0

    .line 2725
    :catch_0
    move-exception v0

    .line 2727
    :goto_0
    return-void
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2515
    monitor-enter p0

    .line 2517
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2519
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2521
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2522
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2523
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2527
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2529
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    monitor-exit p0

    return v1

    .line 2533
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2530
    :catch_0
    move-exception v0

    .line 2531
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2533
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .locals 7
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 3031
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 3032
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .locals 12

    .line 3108
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->verifyAlarmStateLocked()V

    .line 3110
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3112
    .local v0, "isScreenBlockingInactive":Z
    :goto_0
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    const-string v4, "DeviceIdleController"

    if-eqz v3, :cond_2

    .line 3113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "becomeInactiveIfAppropriateLocked(): isScreenBlockingInactive="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " (mScreenOn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", WAIT_FOR_UNLOCK="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mScreenLocked="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") mCharging="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mForceIdle="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    .line 3123
    :cond_3
    return-void

    .line 3126
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const-string/jumbo v5, "no activity"

    if-eqz v3, :cond_e

    .line 3127
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v3, :cond_9

    .line 3128
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x7

    if-eq v3, v6, :cond_8

    const/4 v7, 0x5

    if-eq v3, v7, :cond_8

    const/4 v7, 0x6

    if-ne v3, v7, :cond_5

    goto :goto_2

    .line 3135
    :cond_5
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 3136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moved from "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3137
    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to STATE_QUICK_DOZE_DELAY"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3136
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :cond_6
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3141
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3142
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3146
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3147
    invoke-virtual {v3}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v3, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    add-long/2addr v6, v8

    .line 3146
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_1

    .line 3152
    :cond_7
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v3, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3154
    :goto_1
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_4

    .line 3133
    :cond_8
    :goto_2
    return-void

    .line 3155
    :cond_9
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v3, :cond_d

    .line 3156
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3157
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "Moved from STATE_ACTIVE to STATE_INACTIVE"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    :cond_a
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3159
    iget-wide v6, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3160
    .local v6, "delay":J
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3161
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v8, v6

    mul-float/2addr v3, v8

    float-to-long v6, v3

    .line 3163
    :cond_b
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3167
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3168
    invoke-virtual {v3}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v8

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v8, v6

    .line 3167
    invoke-virtual {p0, v8, v9, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_3

    .line 3171
    :cond_c
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3173
    :goto_3
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3177
    .end local v6    # "delay":J
    :cond_d
    :goto_4
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleControllerInjector;->setDozeState(I)V

    .line 3180
    :cond_e
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_10

    .line 3181
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3182
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string v1, "Moved from LIGHT_STATE_ACTIVE to LIGHT_STATE_INACTIVE"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    :cond_f
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3184
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3185
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3187
    :cond_10
    return-void
.end method

.method cancelAlarmLocked()V
    .locals 4

    .line 3783
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3784
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3785
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3787
    :cond_0
    return-void
.end method

.method cancelLightAlarmLocked()V
    .locals 4

    .line 3790
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3791
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3792
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3794
    :cond_0
    return-void
.end method

.method cancelLocatingLocked()V
    .locals 2

    .line 3797
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_0

    .line 3798
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 3799
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3800
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3801
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 3803
    .end local v0    # "locationManager":Landroid/location/LocationManager;
    :cond_0
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .locals 4

    .line 3814
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3815
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3816
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3818
    :cond_0
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .locals 7
    .param p1, "appId"    # I

    .line 2824
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2825
    .local v0, "timeNow":J
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTempAppWhitelistTimeout: appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timeNow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceIdleController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :cond_0
    monitor-enter p0

    .line 2829
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2830
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 2832
    monitor-exit p0

    return-void

    .line 2834
    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 2835
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2836
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_0

    .line 2839
    :cond_2
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2840
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time to remove AppId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2844
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    .line 2845
    return-void

    .line 2844
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method decActiveIdleOps()V
    .locals 1

    .line 3505
    monitor-enter p0

    .line 3506
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3507
    if-gtz v0, :cond_0

    .line 3508
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3509
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3511
    :cond_0
    monitor-exit p0

    .line 3512
    return-void

    .line 3511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4628
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceIdleController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4630
    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 4631
    const/4 v5, 0x0

    .line 4632
    .local v5, "userId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_6

    .line 4633
    aget-object v7, v3, v6

    .line 4634
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "-h"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4635
    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 4636
    return-void

    .line 4637
    :cond_1
    const-string v8, "-u"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4638
    add-int/lit8 v6, v6, 0x1

    .line 4639
    array-length v8, v3

    if-ge v6, v8, :cond_3

    .line 4640
    aget-object v7, v3, v6

    .line 4641
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 4643
    :cond_2
    const-string v8, "-a"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4632
    .end local v7    # "arg":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/2addr v6, v4

    goto :goto_0

    .line 4645
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x2d

    if-ne v4, v8, :cond_5

    .line 4646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4647
    return-void

    .line 4649
    :cond_5
    new-instance v4, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v4, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 4650
    .local v4, "shell":Lcom/android/server/DeviceIdleController$Shell;
    iput v5, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 4651
    array-length v8, v3

    sub-int/2addr v8, v6

    new-array v15, v8, [Ljava/lang/String;

    .line 4652
    .local v15, "newArgs":[Ljava/lang/String;
    array-length v8, v3

    sub-int/2addr v8, v6

    invoke-static {v3, v6, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4653
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v0, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v4

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    .end local v15    # "newArgs":[Ljava/lang/String;
    .local v16, "newArgs":[Ljava/lang/String;
    move-object v15, v0

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4655
    return-void

    .line 4660
    .end local v4    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local v5    # "userId":I
    .end local v6    # "i":I
    .end local v7    # "arg":Ljava/lang/String;
    .end local v16    # "newArgs":[Ljava/lang/String;
    :cond_6
    monitor-enter p0

    .line 4661
    :try_start_0
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v5, v2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4663
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v5, v5, v0

    if-eqz v5, :cond_e

    .line 4664
    const-string v5, "  Idling history:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4665
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4666
    .local v5, "now":J
    const/16 v7, 0x63

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_e

    .line 4667
    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v8, v8, v7

    .line 4668
    .local v8, "cmd":I
    if-nez v8, :cond_7

    .line 4669
    goto :goto_4

    .line 4672
    :cond_7
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v9, v9, v7

    if-eq v9, v4, :cond_c

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b

    const/4 v10, 0x3

    if-eq v9, v10, :cond_a

    const/4 v10, 0x4

    if-eq v9, v10, :cond_9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_8

    .line 4678
    const-string v9, "         ??"

    .local v9, "label":Ljava/lang/String;
    goto :goto_3

    .line 4677
    .end local v9    # "label":Ljava/lang/String;
    :cond_8
    const-string v9, " deep-maint"

    .restart local v9    # "label":Ljava/lang/String;
    goto :goto_3

    .line 4676
    .end local v9    # "label":Ljava/lang/String;
    :cond_9
    const-string v9, "  deep-idle"

    .restart local v9    # "label":Ljava/lang/String;
    goto :goto_3

    .line 4675
    .end local v9    # "label":Ljava/lang/String;
    :cond_a
    const-string/jumbo v9, "light-maint"

    .restart local v9    # "label":Ljava/lang/String;
    goto :goto_3

    .line 4674
    .end local v9    # "label":Ljava/lang/String;
    :cond_b
    const-string v9, " light-idle"

    .restart local v9    # "label":Ljava/lang/String;
    goto :goto_3

    .line 4673
    .end local v9    # "label":Ljava/lang/String;
    :cond_c
    const-string v9, "     normal"

    .line 4680
    .restart local v9    # "label":Ljava/lang/String;
    :goto_3
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4681
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4682
    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4683
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4684
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    if-eqz v10, :cond_d

    .line 4685
    const-string v10, " ("

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4686
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4687
    const-string v10, ")"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4689
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4666
    .end local v8    # "cmd":I
    .end local v9    # "label":Ljava/lang/String;
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4694
    .end local v5    # "now":J
    .end local v7    # "i":I
    :cond_e
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 4695
    .local v5, "size":I
    if-lez v5, :cond_f

    .line 4696
    const-string v6, "  Whitelist (except idle) system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v5, :cond_f

    .line 4698
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 4702
    .end local v6    # "i":I
    :cond_f
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4703
    if-lez v5, :cond_10

    .line 4704
    const-string v6, "  Whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4705
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    if-ge v6, v5, :cond_10

    .line 4706
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4707
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4705
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 4710
    .end local v6    # "i":I
    :cond_10
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4711
    if-lez v5, :cond_11

    .line 4712
    const-string v6, "  Removed from whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4713
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v5, :cond_11

    .line 4714
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4715
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4713
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 4718
    .end local v6    # "i":I
    :cond_11
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4719
    if-lez v5, :cond_12

    .line 4720
    const-string v6, "  Whitelist user apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4721
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    if-ge v6, v5, :cond_12

    .line 4722
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4723
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4721
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 4726
    .end local v6    # "i":I
    :cond_12
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4727
    if-lez v5, :cond_13

    .line 4728
    const-string v6, "  Whitelist (except idle) all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4729
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v5, :cond_13

    .line 4730
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4731
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4732
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4729
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 4735
    .end local v6    # "i":I
    :cond_13
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4736
    if-lez v5, :cond_14

    .line 4737
    const-string v6, "  Whitelist user app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    if-ge v6, v5, :cond_14

    .line 4739
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4740
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4741
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4738
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 4744
    .end local v6    # "i":I
    :cond_14
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4745
    if-lez v5, :cond_15

    .line 4746
    const-string v6, "  Whitelist all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v5, :cond_15

    .line 4748
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4749
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4750
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4747
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 4753
    .end local v6    # "i":I
    :cond_15
    invoke-virtual {v1, v2, v4}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4755
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v4, :cond_16

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v0, v0

    .line 4756
    .end local v5    # "size":I
    .local v0, "size":I
    :cond_16
    if-lez v0, :cond_17

    .line 4757
    const-string v4, "  Temp whitelist app ids:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_17

    .line 4759
    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4760
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4761
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4758
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 4765
    .end local v4    # "i":I
    :cond_17
    const-string v4, "  mLightEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4766
    const-string v4, "  mDeepEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4767
    const-string v4, "  mForceIdle="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4768
    const-string v4, "  mUseMotionSensor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4769
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v4, :cond_18

    .line 4770
    const-string v4, " mMotionSensor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_d

    .line 4772
    :cond_18
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4774
    :goto_d
    const-string v4, "  mScreenOn="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4775
    const-string v4, "  mScreenLocked="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4776
    const-string v4, "  mNetworkConnected="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4777
    const-string v4, "  mCharging="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4778
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 4779
    const-string v4, "  mConstraints={"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_e
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 4781
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 4782
    .local v5, "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    const-string v6, "    \""

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "\"="

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4783
    iget v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    iget v7, v1, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v6, v7, :cond_19

    .line 4784
    iget-boolean v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_f

    .line 4786
    :cond_19
    const-string v6, "ignored <mMinState="

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4787
    const-string v6, ">"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    .end local v5    # "tracker":Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4790
    .end local v4    # "i":I
    :cond_1a
    const-string v4, "  }"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4792
    :cond_1b
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-nez v4, :cond_1c

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_1d

    .line 4793
    :cond_1c
    const-string v4, "  mMotionActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v4, v4, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4794
    const-string v4, "  mNotMoving="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4795
    const-string v4, "  mMotionListener.activatedTimeElapsed="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4796
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4797
    const-string v4, "  mLastMotionEventElapsed="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4798
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4799
    const-string v4, " stationary listeners registered"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4801
    :cond_1d
    const-string v4, "  mLocating="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasGps="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4802
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasNetwork="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4803
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mLocated="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4804
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v4, :cond_1e

    .line 4805
    const-string v4, "  mLastGenericLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4807
    :cond_1e
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v4, :cond_1f

    .line 4808
    const-string v4, "  mLastGpsLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4810
    :cond_1f
    const-string v4, "  mState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4811
    const-string v4, " mLightState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4812
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    const-string v4, "  mInactiveTimeout="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4814
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4815
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v4, :cond_20

    .line 4816
    const-string v4, "  mActiveIdleOpCount="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4818
    :cond_20
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_21

    .line 4819
    const-string v4, "  mNextAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4820
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4821
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4823
    :cond_21
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_22

    .line 4824
    const-string v4, "  mNextIdlePendingDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4825
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4826
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4828
    :cond_22
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_23

    .line 4829
    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4830
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4831
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4833
    :cond_23
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_24

    .line 4834
    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4835
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4836
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4838
    :cond_24
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_25

    .line 4839
    const-string v4, "  mNextLightAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4840
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4841
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4843
    :cond_25
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_26

    .line 4844
    const-string v4, "  mCurLightIdleBudget="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4845
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4846
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4848
    :cond_26
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_27

    .line 4849
    const-string v4, "  mMaintenanceStartTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4850
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4851
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4853
    :cond_27
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v4, :cond_28

    .line 4854
    const-string v4, "  mJobsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4856
    :cond_28
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v4, :cond_29

    .line 4857
    const-string v4, "  mAlarmsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4859
    :cond_29
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3d4ccccd    # 0.05f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2a

    .line 4860
    const-string v4, "  mPreIdleFactor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 4862
    .end local v0    # "size":I
    :cond_2a
    monitor-exit p0

    .line 4863
    return-void

    .line 4862
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "printTitle"    # Z

    .line 4866
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4867
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 4868
    const-string v1, ""

    .line 4869
    .local v1, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 4870
    const-string v2, "  Temp whitelist schedule:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4871
    const-string v1, "    "

    .line 4873
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4874
    .local v2, "timeNow":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 4875
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4876
    const-string v5, "UID="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4877
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4878
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4879
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 4880
    .local v5, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/MutableLong;

    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4881
    const-string v6, " - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4882
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4874
    .end local v5    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4885
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "timeNow":J
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method exitForceIdleLocked()V
    .locals 2

    .line 3209
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_1

    .line 3210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3211
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1

    .line 3212
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3213
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "exit-force"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3216
    :cond_1
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 2864
    monitor-enter p0

    .line 2865
    const/4 v0, 0x5

    :try_start_0
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2867
    monitor-exit p0

    .line 2868
    return-void

    .line 2867
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .locals 7

    .line 3670
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    .line 3672
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3674
    .local v3, "now":J
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3676
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Exit: start="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3677
    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3678
    const-string v5, " now="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeviceIdleController"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v5, "s:early"

    if-ne v0, v2, :cond_2

    .line 3683
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 3684
    :cond_2
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_3

    .line 3685
    const-string/jumbo v0, "s:predone"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 3687
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3691
    .end local v3    # "now":J
    :cond_4
    :goto_0
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .locals 1

    .line 2668
    monitor-enter p0

    .line 2669
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2670
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .locals 1

    .line 2662
    monitor-enter p0

    .line 2663
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2664
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .locals 1

    .line 2650
    monitor-enter p0

    .line 2651
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2652
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .locals 1

    .line 2656
    monitor-enter p0

    .line 2657
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2658
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 5

    .line 2602
    monitor-enter p0

    .line 2603
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2604
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2605
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2606
    .local v2, "cur":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2607
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2608
    add-int/lit8 v2, v2, 0x1

    .line 2606
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2610
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2611
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2612
    add-int/lit8 v2, v2, 0x1

    .line 2610
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2614
    .end local v3    # "i":I
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2615
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    .end local v2    # "cur":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .locals 5

    .line 2619
    monitor-enter p0

    .line 2620
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2621
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2622
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2623
    .local v2, "cur":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2624
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2625
    add-int/lit8 v2, v2, 0x1

    .line 2623
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2627
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2628
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2629
    add-int/lit8 v2, v2, 0x1

    .line 2627
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2631
    .end local v3    # "i":I
    :cond_1
    monitor-exit p0

    return-object v1

    .line 2632
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    .end local v2    # "cur":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLightState()I
    .locals 1

    .line 3232
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    return v0
.end method

.method getNextAlarmTime()J
    .locals 2

    .line 3662
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    return-wide v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2473
    monitor-enter p0

    .line 2474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2475
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2552
    monitor-enter p0

    .line 2553
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2554
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .locals 1

    .line 2161
    monitor-enter p0

    .line 2162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPreIdleTimeoutByMode(I)F
    .locals 3
    .param p1, "mode"    # I

    .line 3547
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 3558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time out factor mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    return v0

    .line 3552
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_SHORT:F

    return v0

    .line 3549
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->PRE_IDLE_FACTOR_LONG:F

    return v0

    .line 3555
    :cond_2
    return v0
.end method

.method getPreIdleTimeoutFactor()F
    .locals 1

    .line 3566
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    return v0
.end method

.method public getRemovedSystemPowerWhitelistAppsInternal()[Ljava/lang/String;
    .locals 4

    .line 2580
    monitor-enter p0

    .line 2581
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2582
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2583
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2584
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2586
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    return-object v1

    .line 2587
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getState()I
    .locals 1

    .line 3322
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 4

    .line 2558
    monitor-enter p0

    .line 2559
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2560
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2561
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2562
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2564
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    return-object v1

    .line 2565
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .locals 4

    .line 2569
    monitor-enter p0

    .line 2570
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2571
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2572
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2573
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2575
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    return-object v1

    .line 2576
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .locals 4

    .line 2591
    monitor-enter p0

    .line 2592
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2593
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2594
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2595
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2594
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2597
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    return-object v1

    .line 2598
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .locals 10
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    .line 3700
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3701
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    .line 3702
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 3706
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionRegistrationAlarmLocked()V

    .line 3708
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    if-nez v0, :cond_1

    .line 3713
    return-void

    .line 3715
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 3719
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    .line 3722
    .local v0, "becomeInactive":Z
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v4, v2, :cond_4

    move v9, v3

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    move-object v4, p0

    move-object v5, p3

    move-wide v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 3723
    if-eqz v0, :cond_5

    .line 3724
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3726
    :cond_5
    return-void
.end method

.method handleWriteConfigFile()V
    .locals 6

    .line 4057
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4060
    .local v0, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4061
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4062
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4063
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4064
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    monitor-exit p0

    .line 4066
    goto :goto_0

    .line 4064
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "memStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4065
    .restart local v0    # "memStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    :catch_0
    move-exception v1

    .line 4068
    :goto_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 4069
    const/4 v2, 0x0

    .line 4071
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 4072
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 4073
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4077
    goto :goto_1

    .line 4078
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 4074
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 4075
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "DeviceIdleController"

    const-string v5, "Error writing config file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4076
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4078
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v1

    .line 4079
    return-void

    .line 4078
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method hasMotionSensor()Z
    .locals 1

    .line 2338
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incActiveIdleOps()V
    .locals 1

    .line 3499
    monitor-enter p0

    .line 3500
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3501
    monitor-exit p0

    .line 3502
    return-void

    .line 3501
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .locals 1
    .param p1, "appid"    # I

    .line 2155
    monitor-enter p0

    .line 2156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 2157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isCharging()Z
    .locals 1

    .line 2959
    monitor-enter p0

    .line 2960
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    monitor-exit p0

    return v0

    .line 2961
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isKeyguardShowing()Z
    .locals 1

    .line 3007
    monitor-enter p0

    .line 3008
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    monitor-exit p0

    return v0

    .line 3009
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNetworkConnected()Z
    .locals 1

    .line 2872
    monitor-enter p0

    .line 2873
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    monitor-exit p0

    return v0

    .line 2874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .locals 1

    .line 3666
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2643
    monitor-enter p0

    .line 2644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2645
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    .line 2644
    return v0

    .line 2646
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2636
    monitor-enter p0

    .line 2637
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2638
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    .line 2637
    return v0

    .line 2639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isQuickDozeEnabled()Z
    .locals 1

    .line 2982
    monitor-enter p0

    .line 2983
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    monitor-exit p0

    return v0

    .line 2984
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isScreenOn()Z
    .locals 1

    .line 2916
    monitor-enter p0

    .line 2917
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    monitor-exit p0

    return v0

    .line 2918
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method keyguardShowingLocked(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .line 3014
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "keyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eq v0, p1, :cond_1

    .line 3016
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 3017
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 3018
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3019
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string/jumbo v1, "unlocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3022
    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$DeviceIdleController()V
    .locals 1

    .line 713
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 717
    :cond_0
    monitor-exit p0

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$new$1$DeviceIdleController()V
    .locals 2

    .line 721
    monitor-enter p0

    .line 722
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "motion timeout went off and device isn\'t stationary"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    monitor-exit p0

    return-void

    .line 731
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postStationaryStatusUpdated()V

    .line 733
    return-void

    .line 731
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic lambda$onBootPhase$2$DeviceIdleController(Landroid/os/PowerSaveState;)V
    .locals 1
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 2311
    monitor-enter p0

    .line 2312
    :try_start_0
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2313
    monitor-exit p0

    .line 2314
    return-void

    .line 2313
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method motionLocked()V
    .locals 3

    .line 3694
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "motionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 3696
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 3697
    return-void
.end method

.method public onAnyMotionResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 1476
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnyMotionResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1478
    monitor-enter p0

    .line 1479
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 1480
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1482
    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1487
    :cond_2
    if-nez p1, :cond_6

    .line 1488
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1490
    monitor-enter p0

    .line 1491
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1492
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1493
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1494
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 1497
    monitor-enter p0

    .line 1498
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1499
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_4

    .line 1500
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1502
    :cond_4
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1484
    :cond_5
    :goto_1
    monitor-enter p0

    .line 1485
    :try_start_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1486
    monitor-exit p0

    .line 1505
    :cond_6
    :goto_2
    return-void

    .line 1486
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .line 2234
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3

    .line 2235
    monitor-enter p0

    .line 2236
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2237
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerInternal;

    .line 2238
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2239
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 2240
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2241
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2242
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 2243
    const-string v1, "deviceidle_maint"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2245
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "deviceidle_going_idle"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2248
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2249
    const-string/jumbo v0, "netpolicy"

    .line 2250
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2249
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 2251
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 2252
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2254
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getMotionSensor()Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 2258
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2260
    invoke-static {}, Landroid/location/LocationRequest;->create()Landroid/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 2261
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v0

    .line 2262
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 2263
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 2264
    invoke-virtual {v0, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 2267
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 2268
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleInternal;

    .line 2267
    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController$Injector;->getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)Lcom/android/server/deviceidle/ConstraintController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraintController:Lcom/android/server/deviceidle/ConstraintController;

    .line 2269
    if-eqz v0, :cond_2

    .line 2270
    invoke-interface {v0}, Lcom/android/server/deviceidle/ConstraintController;->start()V

    .line 2273
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 2275
    .local v0, "angleThreshold":F
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/android/server/DeviceIdleController$Injector;->getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 2278
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker;->onSystemServicesReady()V

    .line 2280
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 2281
    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2283
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 2284
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2287
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2288
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2291
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 2292
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2293
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2296
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 2297
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2300
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 2301
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2302
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2305
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 2307
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2309
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/-$$Lambda$DeviceIdleController$XHtDp82oR6rwjHDEkXhoJ_Wo3AQ;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$DeviceIdleController$XHtDp82oR6rwjHDEkXhoJ_Wo3AQ;-><init>(Lcom/android/server/DeviceIdleController;)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 2315
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2316
    invoke-virtual {v2, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    iget-boolean v2, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 2315
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    .line 2319
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2321
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 2323
    .end local v0    # "angleThreshold":F
    .end local v1    # "filter":Landroid/content/IntentFilter;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 2328
    monitor-enter p0

    .line 2329
    :try_start_1
    new-instance v0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;-><init>(Lcom/android/server/DeviceIdleController;Landroid/content/Context;Lcom/android/server/DeviceIdleController;)V

    .line 2330
    .local v0, "mInner":Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;
    invoke-static {v0}, Lcom/android/server/DeviceIdleControllerInjector;->prepare(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V

    .line 2331
    .end local v0    # "mInner":Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2323
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2334
    :cond_3
    :goto_0
    return-void
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .locals 19
    .param p1, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 4168
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 4169
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "step"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 4370
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4169
    if-eqz v1, :cond_3

    .line 4170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    monitor-enter p0

    .line 4173
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4174
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4176
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_2

    :try_start_1
    const-string v4, "deep"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 4180
    :cond_0
    const-string/jumbo v4, "light"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4181
    const-string/jumbo v4, "s:shell"

    invoke-virtual {v7, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 4182
    const-string v4, "Stepped to light: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4184
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4177
    :cond_2
    :goto_0
    const-string/jumbo v4, "s:shell"

    invoke-virtual {v7, v4}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4178
    const-string v4, "Stepped to deep: "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4179
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4187
    :goto_1
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4188
    nop

    .line 4189
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_26

    .line 4187
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4188
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4189
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 4190
    :cond_3
    const-string v1, "force-idle"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v12, -0x1

    const/4 v6, 0x1

    if-eqz v1, :cond_c

    .line 4191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4193
    monitor-enter p0

    .line 4194
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4195
    .restart local v1    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4197
    .restart local v3    # "arg":Ljava/lang/String;
    if-eqz v3, :cond_8

    :try_start_4
    const-string v13, "deep"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_3

    .line 4216
    :cond_4
    const-string/jumbo v5, "light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4217
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4219
    iget v5, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 4220
    .local v5, "curLightState":I
    :goto_2
    if-eq v5, v4, :cond_6

    .line 4221
    const-string/jumbo v6, "s:shell"

    invoke-virtual {v7, v6}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 4222
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v5, v6, :cond_5

    .line 4223
    const-string v4, "Unable to go light idle; stopped at "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4224
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4226
    nop

    .line 4235
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4226
    return v12

    .line 4228
    :cond_5
    :try_start_6
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    move v5, v6

    goto :goto_2

    .line 4230
    :cond_6
    const-string v4, "Now forced in to light idle mode"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    .end local v5    # "curLightState":I
    goto :goto_5

    .line 4232
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown idle mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 4198
    :cond_8
    :goto_3
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v4, :cond_9

    .line 4199
    const-string v4, "Unable to go deep idle; not enabled"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4200
    nop

    .line 4235
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4200
    return v12

    .line 4202
    :cond_9
    :try_start_8
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4204
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mState:I

    .line 4205
    .local v4, "curState":I
    :goto_4
    if-eq v4, v5, :cond_b

    .line 4206
    const-string/jumbo v6, "s:shell"

    invoke-virtual {v7, v6}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4207
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v4, v6, :cond_a

    .line 4208
    const-string v5, "Unable to go deep idle; stopped at "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4209
    iget v5, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4210
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4211
    nop

    .line 4235
    :try_start_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4211
    return v12

    .line 4213
    :cond_a
    :try_start_a
    iget v6, v7, Lcom/android/server/DeviceIdleController;->mState:I

    move v4, v6

    goto :goto_4

    .line 4215
    :cond_b
    const-string v5, "Now forced in to deep idle mode"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 4216
    .end local v4    # "curState":I
    nop

    .line 4235
    :goto_5
    :try_start_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4236
    nop

    .line 4237
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_26

    .line 4235
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4236
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4237
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .line 4238
    :cond_c
    const-string v1, "force-inactive"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    monitor-enter p0

    .line 4242
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 4244
    .restart local v1    # "token":J
    :try_start_d
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4245
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4246
    const-string v3, "Light state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4247
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4248
    const-string v3, ", deep state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4249
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 4251
    :try_start_e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4252
    nop

    .line 4253
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_26

    .line 4251
    .restart local v1    # "token":J
    :catchall_4
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4252
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4253
    .end local v1    # "token":J
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v1

    .line 4254
    :cond_d
    const-string/jumbo v1, "unforce"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4255
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4257
    monitor-enter p0

    .line 4258
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 4260
    .restart local v1    # "token":J
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 4261
    const-string v3, "Light state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4262
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4263
    const-string v3, ", deep state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4264
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 4266
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4267
    nop

    .line 4268
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_26

    .line 4266
    .restart local v1    # "token":J
    :catchall_6
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4267
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4268
    .end local v1    # "token":J
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v1

    .line 4269
    :cond_e
    const-string v1, "get"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v13, 0x6

    const/4 v14, 0x2

    if-eqz v1, :cond_11

    .line 4270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4272
    monitor-enter p0

    .line 4273
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4274
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 4275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 4277
    .local v2, "token":J
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_f
    goto :goto_6

    :sswitch_0
    const-string/jumbo v4, "network"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v13

    goto :goto_7

    :sswitch_1
    const-string v4, "charging"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    goto :goto_7

    :sswitch_2
    const-string/jumbo v4, "quick"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    goto :goto_7

    :sswitch_3
    const-string/jumbo v4, "light"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v11

    goto :goto_7

    :sswitch_4
    const-string v4, "force"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v14

    goto :goto_7

    :sswitch_5
    const-string v4, "deep"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v6

    goto :goto_7

    :sswitch_6
    const-string/jumbo v5, "screen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_7

    :goto_6
    move v4, v12

    :goto_7
    packed-switch v4, :pswitch_data_0

    .line 4285
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_8

    .line 4284
    :pswitch_0
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    .line 4283
    :pswitch_1
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    .line 4282
    :pswitch_2
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    .line 4281
    :pswitch_3
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    .line 4280
    :pswitch_4
    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    .line 4279
    :pswitch_5
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 4278
    :pswitch_6
    iget v4, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 4285
    :goto_8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown get option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 4288
    :goto_9
    :try_start_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4289
    nop

    .line 4290
    .end local v2    # "token":J
    goto :goto_a

    .line 4288
    .restart local v2    # "token":J
    :catchall_8
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4289
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4291
    .end local v2    # "token":J
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :cond_10
    const-string v2, "Argument required"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4293
    .end local v1    # "arg":Ljava/lang/String;
    :goto_a
    monitor-exit p0

    goto/16 :goto_26

    :catchall_9
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v1

    .line 4294
    :cond_11
    const-string v1, "disable"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4295
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4297
    monitor-enter p0

    .line 4298
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4299
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 4301
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4302
    .local v4, "becomeActive":Z
    const/4 v5, 0x0

    .line 4303
    .local v5, "valid":Z
    if-eqz v3, :cond_12

    :try_start_16
    const-string v6, "deep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 4304
    :cond_12
    const/4 v5, 0x1

    .line 4305
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v6, :cond_13

    .line 4306
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4307
    const/4 v4, 0x1

    .line 4308
    const-string v6, "Deep idle mode disabled"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4311
    :cond_13
    if-eqz v3, :cond_14

    const-string/jumbo v6, "light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 4312
    :cond_14
    const/4 v5, 0x1

    .line 4313
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v6, :cond_15

    .line 4314
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4315
    const/4 v4, 0x1

    .line 4316
    const-string v6, "Light idle mode disabled"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4319
    :cond_15
    if-eqz v4, :cond_17

    .line 4320
    iput v13, v7, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 4321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_16

    const-string v12, "all"

    goto :goto_b

    :cond_16
    move-object v12, v3

    :goto_b
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-disabled"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4322
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    .line 4321
    invoke-virtual {v7, v6, v12}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 4324
    :cond_17
    if-nez v5, :cond_18

    .line 4325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown idle mode: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 4328
    .end local v4    # "becomeActive":Z
    .end local v5    # "valid":Z
    :cond_18
    :try_start_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4329
    nop

    .line 4330
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_26

    .line 4328
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4329
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4330
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v1

    .line 4331
    :cond_19
    const-string v1, "enable"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4332
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4334
    monitor-enter p0

    .line 4335
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4336
    .restart local v1    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 4338
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4339
    .local v4, "becomeInactive":Z
    const/4 v5, 0x0

    .line 4340
    .restart local v5    # "valid":Z
    if-eqz v3, :cond_1a

    :try_start_19
    const-string v12, "deep"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    const-string v12, "all"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 4341
    :cond_1a
    const/4 v5, 0x1

    .line 4342
    iget-boolean v12, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v12, :cond_1b

    .line 4343
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4344
    const/4 v4, 0x1

    .line 4345
    const-string v12, "Deep idle mode enabled"

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4348
    :cond_1b
    if-eqz v3, :cond_1c

    const-string/jumbo v12, "light"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    const-string v12, "all"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 4349
    :cond_1c
    const/4 v5, 0x1

    .line 4350
    iget-boolean v12, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v12, :cond_1d

    .line 4351
    iput-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4352
    const/4 v4, 0x1

    .line 4353
    const-string v6, "Light idle mode enable"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4356
    :cond_1d
    if-eqz v4, :cond_1e

    .line 4357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4359
    :cond_1e
    if-nez v5, :cond_1f

    .line 4360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown idle mode: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 4363
    .end local v4    # "becomeInactive":Z
    .end local v5    # "valid":Z
    :cond_1f
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4364
    nop

    .line 4365
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_26

    .line 4363
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object v4, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4364
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4365
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    throw v1

    .line 4366
    :cond_20
    const-string v1, "enabled"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4367
    monitor-enter p0

    .line 4368
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4369
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_26

    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_c

    .line 4371
    :cond_21
    const-string v2, "deep"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4372
    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_22

    const-string v3, "1"

    :cond_22
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_d

    .line 4373
    :cond_23
    const-string/jumbo v2, "light"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4374
    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_24

    const-string v3, "1"

    :cond_24
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_d

    .line 4376
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown idle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 4370
    :cond_26
    :goto_c
    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v2, :cond_27

    iget-boolean v2, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v2, :cond_27

    const-string v3, "1"

    :cond_27
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4378
    .end local v1    # "arg":Ljava/lang/String;
    :goto_d
    monitor-exit p0

    goto/16 :goto_26

    :catchall_e
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    throw v1

    .line 4379
    :cond_28
    const-string/jumbo v1, "whitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x3d

    const/16 v4, 0x2d

    const/16 v5, 0x2b

    if-eqz v1, :cond_34

    .line 4380
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4381
    .restart local v1    # "arg":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 4382
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "android.permission.DEVICE_POWER"

    invoke-virtual {v13, v14, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 4387
    .local v13, "token":J
    :goto_e
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_2f

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_29

    .line 4388
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_29

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_29

    goto/16 :goto_10

    .line 4392
    :cond_29
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4393
    .local v2, "op":C
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 4394
    .local v15, "pkg":Ljava/lang/String;
    if-ne v2, v5, :cond_2b

    .line 4395
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;)I

    move-result v3

    if-ne v3, v6, :cond_2a

    .line 4397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 4399
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 4401
    :cond_2b
    if-ne v2, v4, :cond_2c

    .line 4402
    invoke-virtual {v7, v15}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 4403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 4406
    :cond_2c
    invoke-virtual {v7, v15}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4408
    .end local v2    # "op":C
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_2d
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    move-object v1, v2

    if-nez v2, :cond_2e

    .line 4410
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4411
    nop

    .line 4412
    .end local v13    # "token":J
    goto/16 :goto_14

    .line 4408
    .restart local v13    # "token":J
    :cond_2e
    const/16 v3, 0x3d

    const/16 v5, 0x2b

    goto/16 :goto_e

    .line 4389
    :cond_2f
    :goto_10
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 4390
    nop

    .line 4410
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4390
    return v12

    .line 4410
    :catchall_f
    move-exception v0

    move-object v2, v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4411
    throw v2

    .line 4413
    .end local v13    # "token":J
    :cond_30
    monitor-enter p0

    .line 4414
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11
    :try_start_1e
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 4415
    const-string/jumbo v3, "system-excidle,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4416
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4417
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4418
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4414
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4420
    .end local v2    # "j":I
    :cond_31
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_12
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 4421
    const-string/jumbo v3, "system,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4422
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4423
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4424
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4420
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4426
    .end local v2    # "j":I
    :cond_32
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_13
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 4427
    const-string/jumbo v3, "user,"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4428
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4429
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4430
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4426
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 4432
    .end local v2    # "j":I
    :cond_33
    monitor-exit p0

    .line 4434
    .end local v1    # "arg":Ljava/lang/String;
    :goto_14
    goto/16 :goto_26

    .line 4432
    .restart local v1    # "arg":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    throw v2

    .line 4434
    .end local v1    # "arg":Ljava/lang/String;
    :cond_34
    const-string/jumbo v1, "tempwhitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 4435
    const-wide/16 v1, 0x2710

    .line 4436
    .local v1, "duration":J
    const/4 v3, 0x0

    move-wide v13, v1

    move v15, v3

    .line 4438
    .end local v1    # "duration":J
    .local v13, "duration":J
    .local v15, "removePkg":Z
    :cond_35
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .local v6, "opt":Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 4439
    const-string v1, "-u"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4440
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4441
    .end local v6    # "opt":Ljava/lang/String;
    .local v1, "opt":Ljava/lang/String;
    if-nez v1, :cond_36

    .line 4442
    const-string v2, "-u requires a user number"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4443
    return v12

    .line 4445
    :cond_36
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_15

    .line 4446
    .end local v1    # "opt":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_37
    const-string v1, "-d"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 4447
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4448
    .end local v6    # "opt":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    if-nez v1, :cond_38

    .line 4449
    const-string v2, "-d requires a duration"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4450
    return v12

    .line 4452
    :cond_38
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_15

    .line 4453
    .end local v1    # "opt":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_39
    const-string v1, "-r"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4454
    const/4 v15, 0x1

    goto :goto_15

    .line 4457
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 4458
    .local v5, "arg":Ljava/lang/String;
    if-eqz v5, :cond_3c

    .line 4460
    if-eqz v15, :cond_3b

    .line 4461
    :try_start_1f
    iget v1, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {v7, v5, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    goto :goto_16

    .line 4465
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    goto :goto_17

    .line 4463
    :cond_3b
    :try_start_20
    iget v3, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v16, "shell"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v17, v3

    move-wide v3, v13

    move-object/from16 v18, v5

    .end local v5    # "arg":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    move/from16 v5, v17

    move-object/from16 v17, v6

    .end local v6    # "opt":Ljava/lang/String;
    .local v17, "opt":Ljava/lang/String;
    move-object/from16 v6, v16

    :try_start_21
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1

    .line 4468
    :goto_16
    goto :goto_18

    .line 4465
    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_17

    .end local v17    # "opt":Ljava/lang/String;
    .end local v18    # "arg":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object v1, v0

    .line 4466
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "opt":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v17    # "opt":Ljava/lang/String;
    .restart local v18    # "arg":Ljava/lang/String;
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4467
    return v12

    .line 4469
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v17    # "opt":Ljava/lang/String;
    .end local v18    # "arg":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_3c
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "opt":Ljava/lang/String;
    .restart local v17    # "opt":Ljava/lang/String;
    .restart local v18    # "arg":Ljava/lang/String;
    if-eqz v15, :cond_3d

    .line 4470
    const-string v1, "[-r] requires a package name"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4471
    return v12

    .line 4473
    :cond_3d
    invoke-virtual {v7, v10, v11}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4475
    .end local v13    # "duration":J
    .end local v15    # "removePkg":Z
    .end local v17    # "opt":Ljava/lang/String;
    .end local v18    # "arg":Ljava/lang/String;
    :goto_18
    goto/16 :goto_26

    :cond_3e
    const-string v1, "except-idle-whitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 4476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4480
    .local v1, "token":J
    :try_start_22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 4481
    .restart local v3    # "arg":Ljava/lang/String;
    if-nez v3, :cond_3f

    .line 4482
    const-string v4, "No arguments given"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 4483
    nop

    .line 4510
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4483
    return v12

    .line 4484
    :cond_3f
    :try_start_23
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 4485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto/16 :goto_1a

    .line 4488
    :cond_40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_45

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_41

    .line 4489
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_41

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x3d

    if-eq v5, v13, :cond_41

    goto :goto_1b

    .line 4493
    :cond_41
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4494
    .local v5, "op":C
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4495
    .local v13, "pkg":Ljava/lang/String;
    const/16 v14, 0x2b

    if-ne v5, v14, :cond_43

    .line 4496
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_42

    .line 4497
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v14, 0x3d

    goto :goto_19

    .line 4499
    :cond_42
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v14, 0x3d

    goto :goto_19

    .line 4501
    :cond_43
    const/16 v14, 0x3d

    if-ne v5, v14, :cond_44

    .line 4502
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->println(Z)V

    .line 4507
    .end local v5    # "op":C
    .end local v13    # "pkg":Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    move-object v3, v5

    if-nez v5, :cond_40

    .line 4510
    .end local v3    # "arg":Ljava/lang/String;
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    nop

    .line 4512
    .end local v1    # "token":J
    goto/16 :goto_26

    .line 4504
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    .restart local v5    # "op":C
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_44
    :try_start_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown argument: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    .line 4505
    nop

    .line 4510
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4505
    return v12

    .line 4490
    .end local v5    # "op":C
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_45
    :goto_1b
    :try_start_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    .line 4491
    nop

    .line 4510
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4491
    return v12

    .line 4510
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    throw v3

    .line 4512
    .end local v1    # "token":J
    :cond_46
    const-string/jumbo v1, "sys-whitelist"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4513
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 4514
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_4e

    .line 4515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4519
    .local v2, "token":J
    :try_start_26
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 4520
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_1e

    .line 4523
    :cond_47
    :goto_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_4d

    .line 4524
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_48

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_48

    goto :goto_1f

    .line 4528
    :cond_48
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4529
    .restart local v5    # "op":C
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4530
    .restart local v13    # "pkg":Ljava/lang/String;
    const/16 v14, 0x2b

    if-eq v5, v14, :cond_4a

    if-eq v5, v4, :cond_49

    goto :goto_1d

    .line 4537
    :cond_49
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4b

    .line 4538
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 4532
    :cond_4a
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 4533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4542
    .end local v5    # "op":C
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_4b
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    move-object v1, v4

    if-nez v4, :cond_4c

    .line 4545
    :goto_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4546
    nop

    .line 4547
    .end local v2    # "token":J
    goto :goto_21

    .line 4542
    .restart local v2    # "token":J
    :cond_4c
    const/16 v4, 0x2d

    goto :goto_1c

    .line 4525
    :cond_4d
    :goto_1f
    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package must be prefixed with + or - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 4526
    nop

    .line 4545
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4526
    return v12

    .line 4545
    :catchall_12
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4546
    throw v4

    .line 4548
    .end local v2    # "token":J
    :cond_4e
    monitor-enter p0

    .line 4549
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    :try_start_28
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 4550
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4551
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4552
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4549
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 4554
    .end local v2    # "j":I
    :cond_4f
    monitor-exit p0

    .line 4556
    .end local v1    # "arg":Ljava/lang/String;
    :goto_21
    goto/16 :goto_26

    .line 4554
    .restart local v1    # "arg":Ljava/lang/String;
    :catchall_13
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    throw v2

    .line 4556
    .end local v1    # "arg":Ljava/lang/String;
    :cond_50
    const-string/jumbo v1, "motion"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 4557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4559
    monitor-enter p0

    .line 4560
    :try_start_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    .line 4562
    .local v1, "token":J
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 4563
    const-string v3, "Light state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4564
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4565
    const-string v3, ", deep state: "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4566
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    .line 4568
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4569
    nop

    .line 4570
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_26

    .line 4568
    .restart local v1    # "token":J
    :catchall_14
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4569
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4570
    .end local v1    # "token":J
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_15
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    throw v1

    .line 4571
    :cond_51
    const-string/jumbo v1, "pre-idle-factor"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 4572
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    monitor-enter p0

    .line 4575
    :try_start_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    .line 4576
    .restart local v1    # "token":J
    const/4 v3, -0x1

    .line 4578
    .local v3, "ret":I
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 4579
    .local v4, "arg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4580
    .local v5, "valid":Z
    const/4 v12, 0x0

    .line 4581
    .local v12, "mode":I
    if-eqz v4, :cond_54

    .line 4582
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v12, v13

    .line 4583
    invoke-virtual {v7, v12}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutMode(I)I

    move-result v13

    move v3, v13

    .line 4584
    if-ne v3, v6, :cond_52

    .line 4585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pre-idle-factor: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4586
    const/4 v5, 0x1

    goto :goto_22

    .line 4587
    :cond_52
    if-ne v3, v14, :cond_53

    .line 4588
    const/4 v5, 0x1

    .line 4589
    const-string v6, "Deep idle not supported"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 4590
    :cond_53
    if-nez v3, :cond_54

    .line 4591
    const/4 v5, 0x1

    .line 4592
    const-string v6, "Idle timeout factor not changed"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4595
    :cond_54
    :goto_22
    if-nez v5, :cond_55

    .line 4596
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown idle timeout factor: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",(error code: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_3
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    .line 4603
    .end local v4    # "arg":Ljava/lang/String;
    .end local v5    # "valid":Z
    .end local v12    # "mode":I
    :cond_55
    :try_start_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    .line 4604
    :goto_23
    goto :goto_24

    .line 4603
    :catchall_16
    move-exception v0

    move-object v4, v0

    goto :goto_25

    .line 4599
    :catch_3
    move-exception v0

    move-object v4, v0

    .line 4600
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle timeout factor,(error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    .line 4603
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .line 4605
    .end local v1    # "token":J
    .end local v3    # "ret":I
    :goto_24
    monitor-exit p0

    goto :goto_26

    .line 4603
    .restart local v1    # "token":J
    .restart local v3    # "ret":I
    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4604
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v4

    .line 4605
    .end local v1    # "token":J
    .end local v3    # "ret":I
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_17
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    throw v1

    .line 4606
    :cond_56
    const-string/jumbo v1, "reset-pre-idle-factor"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 4607
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4609
    monitor-enter p0

    .line 4610
    :try_start_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    .line 4612
    .restart local v1    # "token":J
    :try_start_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPreIdleTimeoutMode()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    .line 4614
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4615
    nop

    .line 4616
    .end local v1    # "token":J
    monitor-exit p0

    goto :goto_26

    .line 4614
    .restart local v1    # "token":J
    :catchall_18
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4615
    nop

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/DeviceIdleController;
    .end local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local p2    # "cmd":Ljava/lang/String;
    throw v3

    .line 4616
    .end local v1    # "token":J
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/DeviceIdleController;
    .restart local p1    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .restart local p2    # "cmd":Ljava/lang/String;
    :catchall_19
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_19

    throw v1

    .line 4619
    :cond_57
    invoke-static {v9, v10, v8}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 4624
    :goto_26
    return v11

    .line 4622
    :cond_58
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x361a3f94 -> :sswitch_6
        0x2efcec -> :sswitch_5
        0x5d18aeb -> :sswitch_4
        0x6233516 -> :sswitch_3
        0x66f25ed -> :sswitch_2
        0x55996271 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 13

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2174
    .local v0, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 2175
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2177
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 2178
    .local v1, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 2179
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/high16 v5, 0x100000

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    .line 2180
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    .local v4, "pkg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2184
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 2185
    .local v7, "appid":I
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2188
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "appid":I
    goto :goto_1

    .line 2187
    :catch_0
    move-exception v5

    .line 2179
    .end local v4    # "pkg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2190
    .end local v3    # "i":I
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v3

    .line 2191
    .local v3, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 2192
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2194
    .local v7, "pkg":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2196
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 2199
    .local v9, "appid":I
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2201
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2204
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "appid":I
    goto :goto_3

    .line 2203
    :catch_1
    move-exception v8

    .line 2191
    .end local v7    # "pkg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2207
    .end local v4    # "i":I
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/server/DeviceIdleController$Injector;->getConstants(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 2209
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 2210
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2212
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2213
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2214
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2217
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2218
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2219
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2220
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2221
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2222
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 2223
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 2224
    .end local v1    # "sysConfig":Lcom/android/server/SystemConfig;
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2226
    new-instance v1, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 2227
    const-string v3, "deviceidle"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2228
    new-instance v1, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 2229
    const-class v2, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2230
    return-void

    .line 2224
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method readConfigFileLocked()V
    .locals 3

    .line 3965
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading config from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3969
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3972
    .local v0, "stream":Ljava/io/FileInputStream;
    nop

    .line 3974
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 3975
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3976
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3980
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 3979
    :catchall_0
    move-exception v1

    .line 3980
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3982
    goto :goto_0

    .line 3981
    :catch_0
    move-exception v2

    .line 3983
    :goto_0
    throw v1

    .line 3977
    :catch_1
    move-exception v1

    .line 3980
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3982
    :goto_1
    goto :goto_2

    .line 3981
    :catch_2
    move-exception v1

    .line 3983
    nop

    .line 3984
    :goto_2
    return-void

    .line 3970
    .end local v0    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 3971
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 3729
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3730
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3731
    return-void

    .line 3733
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    :cond_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3735
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_2

    .line 3736
    return-void

    .line 3738
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3739
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_3

    .line 3740
    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3742
    :cond_3
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 3745
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3746
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3747
    return-void

    .line 3749
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPS location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    :cond_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3751
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 3752
    return-void

    .line 3754
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3755
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_3

    .line 3756
    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3758
    :cond_3
    return-void
.end method

.method registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 804
    monitor-enter p0

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    monitor-exit p0

    return-void

    .line 809
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->postStationaryStatus(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 810
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_1

    .line 811
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 814
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 818
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 820
    :cond_2
    :goto_0
    monitor-exit p0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2697
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2701
    .local v0, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2702
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2701
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    const/4 v10, 0x0

    move v5, v0

    move v6, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2710
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2712
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2713
    nop

    .line 2714
    return-void

    .line 2712
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2713
    throw v3
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 2461
    monitor-enter p0

    .line 2462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2463
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2464
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2465
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2466
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2468
    :cond_0
    monitor-exit p0

    .line 2469
    const/4 v0, 0x0

    return v0

    .line 2468
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2502
    monitor-enter p0

    .line 2503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2504
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2508
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2510
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .locals 3

    .line 2537
    monitor-enter p0

    .line 2538
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2541
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2544
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2546
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2548
    :cond_0
    monitor-exit p0

    .line 2549
    return-void

    .line 2548
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetPreIdleTimeoutMode()V
    .locals 2

    .line 3592
    monitor-enter p0

    .line 3593
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3594
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3595
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3596
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "resetPreIdleTimeoutMode to 1.0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postResetPreIdleTimeoutFactor()V

    .line 3598
    return-void

    .line 3595
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method resetSystemPowerWhitelistInternal()V
    .locals 2

    .line 2479
    monitor-enter p0

    .line 2480
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 2481
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2482
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2483
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2484
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2485
    monitor-exit p0

    .line 2486
    return-void

    .line 2485
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2489
    monitor-enter p0

    .line 2490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2491
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2495
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2496
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2497
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2498
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .line 3821
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleAlarmLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 3834
    return-void

    .line 3836
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3837
    if-eqz p3, :cond_2

    .line 3838
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.deep"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 3841
    :cond_2
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.deep"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3844
    :goto_0
    return-void
.end method

.method scheduleLightAlarmLocked(J)V
    .locals 9
    .param p1, "delay"    # J

    .line 3847
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleLightAlarmLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3849
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.light"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3851
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 3026
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3027
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3028
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .locals 9
    .param p1, "delay"    # J

    .line 3871
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleSensingAlarmLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3873
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-string v6, "DeviceIdleController.sensing"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3875
    return-void
.end method

.method setActiveIdleOpsForTest(I)V
    .locals 1
    .param p1, "count"    # I

    .line 3517
    monitor-enter p0

    .line 3518
    :try_start_0
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3519
    monitor-exit p0

    .line 3520
    return-void

    .line 3519
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAlarmsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 3532
    monitor-enter p0

    .line 3533
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 3534
    if-nez p1, :cond_0

    .line 3535
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3537
    :cond_0
    monitor-exit p0

    .line 3538
    return-void

    .line 3537
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeepEnabledForTest(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3076
    monitor-enter p0

    .line 3077
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3078
    monitor-exit p0

    .line 3079
    return-void

    .line 3078
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setIdleStartTimeForTest(J)V
    .locals 1
    .param p1, "idleStartTime"    # J

    .line 3654
    monitor-enter p0

    .line 3655
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3656
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    .line 3657
    monitor-exit p0

    .line 3658
    return-void

    .line 3657
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setJobsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 3523
    monitor-enter p0

    .line 3524
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3525
    if-nez p1, :cond_0

    .line 3526
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3528
    :cond_0
    monitor-exit p0

    .line 3529
    return-void

    .line 3528
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLightEnabledForTest(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3084
    monitor-enter p0

    .line 3085
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3086
    monitor-exit p0

    .line 3087
    return-void

    .line 3086
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLightStateForTest(I)V
    .locals 1
    .param p1, "lightState"    # I

    .line 3225
    monitor-enter p0

    .line 3226
    :try_start_0
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3227
    monitor-exit p0

    .line 3228
    return-void

    .line 3227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setPreIdleTimeoutFactor(F)I
    .locals 2
    .param p1, "ratio"    # F

    .line 3571
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_1

    .line 3572
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "setPreIdleTimeoutFactor: Deep Idle disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 3574
    :cond_1
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_3

    .line 3575
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "setPreIdleTimeoutFactor: Invalid input"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 3577
    :cond_3
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    .line 3578
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "setPreIdleTimeoutFactor: New factor same as previous factor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 3581
    :cond_5
    monitor-enter p0

    .line 3582
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLastPreIdleFactor:F

    .line 3583
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    .line 3584
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3585
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreIdleTimeoutFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    :cond_6
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->postUpdatePreIdleFactor()V

    .line 3587
    const/4 v0, 0x1

    return v0

    .line 3584
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setPreIdleTimeoutMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 3542
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->getPreIdleTimeoutByMode(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->setPreIdleTimeoutFactor(F)I

    move-result v0

    return v0
.end method

.method startMonitoringMotionLocked()V
    .locals 2

    .line 3761
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "startMonitoringMotionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_1

    .line 3763
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    .line 3765
    :cond_1
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .locals 19
    .param p1, "reason"    # Ljava/lang/String;

    .line 3342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stepIdleStateLocked: mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceIdleController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 3347
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    move-result v2

    const/4 v4, 0x7

    if-eqz v2, :cond_1

    .line 3349
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v2, :cond_0

    .line 3350
    iput v4, v0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 3351
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "alarm"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3352
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3354
    :cond_0
    return-void

    .line 3357
    :cond_1
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_3

    .line 3360
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 3361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot step idle state. Blocked by: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/-$$Lambda$DeviceIdleController$mY1hvWRYPWeXUPxt-3PQiwn90GU;->INSTANCE:Lcom/android/server/-$$Lambda$DeviceIdleController$mY1hvWRYPWeXUPxt-3PQiwn90GU;

    .line 3362
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;->INSTANCE:Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;

    .line 3363
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 3364
    const-string v5, ","

    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3361
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_2
    return-void

    .line 3369
    :cond_3
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v5, 0x5

    const/4 v6, 0x2

    const-string v7, " ms."

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 3465
    :pswitch_0
    iput v10, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3466
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3467
    iget-wide v12, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v12, v13, v11}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3468
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved from STATE_IDLE to STATE_IDLE_MAINTENANCE. Next alarm in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3471
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v4, v6

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v6, v6, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v4, v6

    float-to-long v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3473
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    .line 3474
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3476
    :cond_5
    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3477
    invoke-direct {v0, v5, v9}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3478
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v8}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 3382
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3383
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3384
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3385
    iput-object v9, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3386
    iput-object v9, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3387
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 3390
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->hasSensor()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3391
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 3392
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3393
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 3394
    goto/16 :goto_2

    .line 3395
    :cond_6
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    if-eqz v2, :cond_7

    .line 3396
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3397
    goto/16 :goto_2

    .line 3400
    :cond_7
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3403
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3404
    invoke-direct {v0, v8, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3405
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v12, v2, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v12, v13, v11}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3406
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    .line 3407
    .local v2, "locationManager":Landroid/location/LocationManager;
    if-eqz v2, :cond_8

    .line 3408
    const-string/jumbo v12, "network"

    invoke-virtual {v2, v12}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 3409
    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3410
    invoke-virtual {v14}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    .line 3409
    invoke-virtual {v2, v12, v13, v14}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3411
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_0

    .line 3413
    :cond_8
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    .line 3415
    :goto_0
    if-eqz v2, :cond_9

    .line 3416
    const-string v12, "gps"

    invoke-virtual {v2, v12}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 3417
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3418
    const-wide/16 v14, 0x3e8

    const/high16 v16, 0x40a00000    # 5.0f

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3419
    invoke-virtual {v12}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v18

    .line 3418
    const-string v13, "gps"

    move-object v12, v2

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v18}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3420
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_1

    .line 3422
    :cond_9
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3426
    :goto_1
    iget-boolean v11, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v11, :cond_a

    .line 3427
    goto/16 :goto_2

    .line 3432
    .end local v2    # "locationManager":Landroid/location/LocationManager;
    :cond_a
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3434
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3439
    :pswitch_4
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3440
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3444
    :pswitch_5
    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3445
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Moved to STATE_IDLE. Next alarm in "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_b
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v2, v10

    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v7, v7, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v2, v7

    float-to-long v10, v2

    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3448
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting mNextIdleDelay = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mIdleStartTime:J

    .line 3450
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v7, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3451
    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v7, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v2, v2, v10

    if-gez v2, :cond_d

    .line 3452
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v2, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3454
    :cond_d
    invoke-direct {v0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3455
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v2, v4, :cond_e

    .line 3456
    iput v4, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3457
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3459
    :cond_e
    invoke-direct {v0, v8, v9}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3460
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3461
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3462
    goto :goto_2

    .line 3373
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 3374
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 3375
    .local v2, "delay":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->shouldUseIdleTimeoutFactorLocked()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3376
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mPreIdleFactor:F

    long-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-long v2, v4

    .line 3378
    :cond_f
    invoke-virtual {v0, v2, v3, v11}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3379
    invoke-direct {v0, v6, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 3380
    nop

    .line 3483
    .end local v2    # "delay":J
    :goto_2
    iget v2, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleControllerInjector;->setDozeState(I)V

    .line 3485
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .locals 14
    .param p1, "reason"    # Ljava/lang/String;

    .line 3236
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3239
    return-void

    .line 3242
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    const-string v1, "DeviceIdleController"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stepLightIdleStateLocked: mLightState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    :cond_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 3245
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v0, v3, :cond_9

    if-eq v0, v7, :cond_a

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-eq v0, v6, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_a

    goto/16 :goto_3

    .line 3290
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v9, :cond_3

    goto :goto_0

    .line 3311
    :cond_3
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3312
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "Moved to LIGHT_WAITING_FOR_NETWORK."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_4
    iput v9, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3314
    invoke-static {v9, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 3292
    :cond_5
    :goto_0
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3293
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3295
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v3, v9

    if-gez v0, :cond_6

    .line 3296
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    goto :goto_1

    .line 3297
    :cond_6
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v0, v3, v9

    if-lez v0, :cond_7

    .line 3298
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3300
    :cond_7
    :goto_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3301
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "Moved from LIGHT_STATE_IDLE to LIGHT_STATE_IDLE_MAINTENANCE."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    :cond_8
    iput v8, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3304
    invoke-static {v8, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3305
    invoke-direct {p0, v7, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3306
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 3247
    :cond_9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3249
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3250
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3251
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3254
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3255
    invoke-static {v7, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3256
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3257
    goto :goto_3

    .line 3262
    :cond_a
    iget-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v8, v4

    if-eqz v0, :cond_c

    .line 3263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v8, v10

    .line 3264
    .local v8, "duration":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v10, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_b

    .line 3266
    iget-wide v10, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v12, v8

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    goto :goto_2

    .line 3270
    :cond_b
    iget-wide v10, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v12, v8, v12

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 3274
    .end local v8    # "duration":J
    :cond_c
    :goto_2
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3275
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3276
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v8, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v0, v8

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v0, v5

    float-to-long v8, v0

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3278
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v0, v3, v8

    if-gez v0, :cond_d

    .line 3279
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3281
    :cond_d
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "Moved to LIGHT_STATE_IDLE."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    :cond_e
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3283
    invoke-static {v6, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3284
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3285
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3286
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3287
    nop

    .line 3318
    :goto_3
    return-void
.end method

.method updateChargingLocked(Z)V
    .locals 2
    .param p1, "charging"    # Z

    .line 2965
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateChargingLocked: charging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1

    .line 2967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2968
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_2

    .line 2969
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_0

    .line 2971
    :cond_1
    if-eqz p1, :cond_2

    .line 2972
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2973
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_2

    .line 2974
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2975
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "charging"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2978
    :cond_2
    :goto_0
    return-void
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .locals 5
    .param p1, "connIntent"    # Landroid/content/Intent;

    .line 2879
    monitor-enter p0

    .line 2880
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2881
    .local v0, "cm":Landroid/net/ConnectivityManager;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2882
    if-nez v0, :cond_0

    .line 2883
    return-void

    .line 2886
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2887
    .local v1, "ni":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 2889
    if-nez v1, :cond_1

    .line 2890
    const/4 v2, 0x0

    .local v2, "conn":Z
    goto :goto_0

    .line 2892
    .end local v2    # "conn":Z
    :cond_1
    if-nez p1, :cond_2

    .line 2893
    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .restart local v2    # "conn":Z
    goto :goto_0

    .line 2895
    .end local v2    # "conn":Z
    :cond_2
    const-string/jumbo v2, "networkType"

    const/4 v3, -0x1

    .line 2896
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2898
    .local v2, "networkType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 2899
    monitor-exit p0

    return-void

    .line 2901
    :cond_3
    const-string/jumbo v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 2905
    .local v2, "conn":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v2, v3, :cond_4

    .line 2906
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2907
    if-eqz v2, :cond_4

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 2908
    const-string/jumbo v3, "network"

    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2911
    .end local v2    # "conn":Z
    :cond_4
    monitor-exit p0

    .line 2912
    return-void

    .line 2911
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2881
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method updateInteractivityLocked()V
    .locals 5

    .line 2925
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 2926
    .local v0, "screenOn":Z
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInteractivityLocked: screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v2, :cond_2

    .line 2928
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2929
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_1

    .line 2930
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2934
    :cond_1
    invoke-static {v1}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->updateScreenStatus(Z)V

    .line 2935
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    .line 2936
    invoke-static {v1}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->update1stLightIdleStatus(Z)V

    .line 2937
    invoke-static {}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->resetTimeofDeepIdleStart()V

    goto :goto_0

    .line 2939
    :cond_2
    if-eqz v0, :cond_5

    .line 2940
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2941
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v3, v3, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-nez v3, :cond_4

    .line 2942
    :cond_3
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveReason:I

    .line 2943
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string/jumbo v4, "screen"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2947
    :cond_4
    invoke-static {v2}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->updateScreenStatus(Z)V

    .line 2948
    invoke-static {v1}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->leavingDeepIdleLocked(Z)V

    .line 2951
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    .line 2952
    invoke-static {v1}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->update1stLightIdleStatus(Z)V

    .line 2955
    :cond_5
    :goto_0
    return-void
.end method

.method updateQuickDozeFlagLocked(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 2990
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateQuickDozeFlagLocked: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 2992
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 2994
    if-eqz p1, :cond_3

    .line 2996
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3001
    :cond_3
    return-void
.end method

.method writeConfigFileLocked()V
    .locals 4

    .line 4052
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 4053
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4054
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4082
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4083
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4084
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-string/jumbo v4, "n"

    if-ge v2, v3, :cond_0

    .line 4085
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4086
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "wl"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4087
    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4088
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4084
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4090
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4091
    const-string/jumbo v3, "un-wl"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4092
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4093
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4090
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4095
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4096
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4097
    return-void
.end method
