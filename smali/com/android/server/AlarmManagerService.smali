.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$ShellCmd;,
        Lcom/android/server/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/AlarmManagerService$UidObserver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$ChargingReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Injector;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$LocalService;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;,
        Lcom/android/server/AlarmManagerService$AmsInner;,
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$AppWakeupHistory;,
        Lcom/android/server/AlarmManagerService$Stats;,
        Lcom/android/server/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field static DEBUG_ALARM_CLOCK:Z = false

.field static DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z

.field static DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_PER_UID_LIMIT:Z = true

.field static final DEBUG_STANDBY:Z

.field static DEBUG_VALIDATE:Z = false

.field static final DEBUG_WAKELOCK:Z

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final FREQUENT_INDEX:I = 0x2

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MILLIS_IN_DAY:J = 0x5265c00L

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RARE_INDEX:I = 0x3

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TICK_HISTORY_DEPTH:I = 0xa

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static final WORKING_INDEX:I = 0x1

.field static localLOGV:Z

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmsPerUid:Landroid/util/SparseIntArray;

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandbyParole:Z

.field private mAppStateTracker:Lcom/android/server/AppStateTracker;

.field mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

.field mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mInFlightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerInternal$InFlightListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/AlarmManagerService$Injector;

.field mInteractive:Z

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field private mLastTickAdded:J

.field private mLastTickReceived:J

.field private mLastTickRemoved:J

.field private mLastTickSet:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field private mLastTrigger:J

.field private mLastWakeup:J

.field private mListenerCount:I

.field mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mListenerFinishCount:I

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeUpSetAt:J

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextTickHistory:I

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeUpSetAt:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCount:I

.field private mSendFinishCount:I

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field mSystemUiUid:I

.field private final mTickHistory:[J

.field mTimeTickIntent:Landroid/content/Intent;

.field mTimeTickTrigger:Landroid/app/IAlarmListener;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field final mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 163
    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 164
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 165
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 166
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    .line 168
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_WAKELOCK:Z

    .line 169
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    .line 170
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_STANDBY:Z

    .line 191
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 199
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 998
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1019
    new-instance v0, Lcom/android/server/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V

    .line 1020
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/AlarmManagerService$Injector;

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 207
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 229
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 235
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 243
    new-instance v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 269
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 275
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 292
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "REORDER_ALARMS_FOR_STANDBY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 302
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 304
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 306
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 311
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 745
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 746
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 760
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 761
    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 936
    new-instance v1, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1003
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1004
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1610
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1613
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1614
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1615
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2287
    new-instance v1, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 4836
    new-instance v1, Lcom/android/server/AlarmManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$7;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 4896
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    .line 4898
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    .line 4900
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    .line 4902
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    .line 1010
    iput-object p2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 1014
    invoke-static {p0, p1}, Lcom/android/server/OpAlarmManagerInjector;->initInstance(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V

    .line 1016
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 140
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 140
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isIdlingImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700()J
    .locals 2

    .line 140
    invoke-static {}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 140
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(JIJJ)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .line 140
    invoke-static/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;JI)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(JI)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(JJ)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 140
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 140
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 140
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 140
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 140
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 140
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static synthetic access$3208(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    return v0
.end method

.method static synthetic access$3308(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 140
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3508(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3708(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 140
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return p1
.end method

.method static synthetic access$3908(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/AlarmManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 140
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 140
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 140
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 140
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 3
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .line 1048
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1049
    .local v0, "index":I
    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 1050
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 1052
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1053
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 19
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2058
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2059
    return v3

    .line 2061
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 2062
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    .line 2064
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2065
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2066
    return v4

    .line 2068
    :cond_1
    return v3

    .line 2070
    :cond_2
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2071
    .local v5, "oldWhenElapsed":J
    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2073
    .local v7, "oldMaxWhenElapsed":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 2074
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2075
    .local v9, "sourceUserId":I
    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 2076
    invoke-virtual {v11}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v11

    .line 2075
    invoke-virtual {v10, v2, v9, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v10

    .line 2079
    .local v10, "standbyBucket":I
    const/4 v11, 0x0

    .line 2080
    .local v11, "deferred":Z
    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v12, v2, v9}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v12

    .line 2082
    .local v12, "wakeupsInWindow":I
    const/16 v13, 0x2d

    if-ne v10, v13, :cond_5

    .line 2086
    if-lez v12, :cond_4

    .line 2087
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v14, v14, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v13, v2, v9, v14}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v13

    .line 2089
    .local v13, "lastWakeupTime":J
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v15}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-wide/from16 v17, v5

    .end local v5    # "oldWhenElapsed":J
    .local v17, "oldWhenElapsed":J
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long v3, v15, v4

    if-gez v3, :cond_3

    .line 2091
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    add-long/2addr v3, v13

    .line 2093
    .local v3, "minElapsed":J
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_3

    .line 2094
    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2095
    const/4 v11, 0x1

    .line 2098
    .end local v3    # "minElapsed":J
    .end local v13    # "lastWakeupTime":J
    :cond_3
    goto :goto_1

    .line 2086
    .end local v17    # "oldWhenElapsed":J
    .restart local v5    # "oldWhenElapsed":J
    :cond_4
    move-wide/from16 v17, v5

    .end local v5    # "oldWhenElapsed":J
    .restart local v17    # "oldWhenElapsed":J
    goto :goto_1

    .line 2100
    .end local v17    # "oldWhenElapsed":J
    .restart local v5    # "oldWhenElapsed":J
    :cond_5
    move-wide/from16 v17, v5

    .end local v5    # "oldWhenElapsed":J
    .restart local v17    # "oldWhenElapsed":J
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v3

    .line 2101
    .local v3, "quotaForBucket":I
    if-lt v12, v3, :cond_7

    .line 2103
    if-gtz v3, :cond_6

    .line 2105
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    const-wide/32 v13, 0x5265c00

    add-long/2addr v4, v13

    .local v4, "minElapsed":J
    goto :goto_0

    .line 2109
    .end local v4    # "minElapsed":J
    :cond_6
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v2, v9, v3}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v4

    .line 2111
    .local v4, "t":J
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v13, v6, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long/2addr v13, v4

    move-wide v4, v13

    .line 2113
    .local v4, "minElapsed":J
    :goto_0
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v6, v13, v4

    if-gez v6, :cond_7

    .line 2114
    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2115
    const/4 v11, 0x1

    .line 2119
    .end local v3    # "quotaForBucket":I
    .end local v4    # "minElapsed":J
    :cond_7
    :goto_1
    if-nez v11, :cond_8

    .line 2121
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2122
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2125
    :cond_8
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v17, v3

    if-nez v3, :cond_a

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v7, v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x1

    :goto_3
    return v3
.end method

.method static clampPositive(J)J
    .locals 2
    .param p0, "val"    # J

    .line 1239
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private static native close(J)V
.end method

.method private convertToElapsed(JI)J
    .locals 5
    .param p1, "when"    # J
    .param p3, "type"    # I

    .line 1023
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1024
    .local v0, "isRtc":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1025
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p1, v1

    .line 1027
    :cond_2
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "decrement"    # I

    .line 5201
    const/4 v0, 0x0

    .line 5202
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 5203
    .local v1, "uidIndex":I
    if-ltz v1, :cond_1

    .line 5204
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5205
    if-le v0, p2, :cond_0

    .line 5206
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v0, p2

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5208
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5211
    :cond_1
    :goto_0
    if-ge v0, p2, :cond_2

    .line 5212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to decrement existing alarm count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    :cond_2
    return-void
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 30
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 1324
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1325
    .local v10, "N":I
    const/4 v1, 0x0

    .line 1326
    .local v1, "hasWakeup":Z
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 1327
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1328
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v2, :cond_0

    .line 1329
    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_1

    .line 1328
    :cond_0
    move/from16 v21, v1

    .line 1331
    .end local v1    # "hasWakeup":Z
    .local v21, "hasWakeup":Z
    :goto_1
    const/4 v1, 0x1

    iput v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1334
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1337
    iget v1, v0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v8, v1, v2}, Lcom/android/server/OpAlarmManagerInjector;->checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I

    move-result v22

    .local v22, "flag":I
    move/from16 v15, v22

    .line 1339
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, v12, v3

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1341
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v23, v1, v3

    .line 1342
    .local v23, "delta":J
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v25, v1, v23

    .local v25, "nextElapsed":J
    move-wide/from16 v4, v25

    .line 1352
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v2, v2, v23

    iget-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v12, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1353
    move-object v14, v8

    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-wide/from16 v8, p2

    move/from16 v27, v10

    move/from16 v28, v11

    .end local v10    # "N":I
    .end local v11    # "i":I
    .local v27, "N":I
    .local v28, "i":I
    move-wide/from16 v10, v25

    invoke-static/range {v8 .. v13}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v13, v14

    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v14, v16

    const/16 v16, 0x1

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v14

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v19, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v20, v14

    .line 1352
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v29, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v29, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_2

    .line 1334
    .end local v22    # "flag":I
    .end local v23    # "delta":J
    .end local v25    # "nextElapsed":J
    .end local v27    # "N":I
    .end local v28    # "i":I
    .end local v29    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10    # "N":I
    .restart local v11    # "i":I
    :cond_1
    move-object/from16 v29, v8

    move/from16 v27, v10

    move/from16 v28, v11

    .line 1326
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10    # "N":I
    .end local v11    # "i":I
    .restart local v27    # "N":I
    .restart local v28    # "i":I
    :goto_2
    add-int/lit8 v11, v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p2

    move/from16 v1, v21

    move/from16 v10, v27

    .end local v28    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_0

    .end local v21    # "hasWakeup":Z
    .end local v27    # "N":I
    .restart local v1    # "hasWakeup":Z
    .restart local v10    # "N":I
    :cond_2
    move/from16 v27, v10

    move/from16 v28, v11

    .line 1360
    .end local v10    # "N":I
    .end local v11    # "i":I
    .restart local v27    # "N":I
    if-nez v1, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1362
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1363
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1364
    nop

    .line 1365
    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1367
    :cond_3
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1368
    iget v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_4

    .line 1360
    :cond_4
    move-object/from16 v5, p1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v2, p2

    .line 1370
    :goto_3
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v4, :cond_6

    .line 1371
    const-string v4, "AlarmManager"

    const-string v6, "Waking up to deliver pending blocked alarms"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_6
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1375
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1376
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1377
    .local v6, "thisDelayTime":J
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1378
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_7

    .line 1379
    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1381
    :cond_7
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1383
    .end local v6    # "thisDelayTime":J
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1384
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1385
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1387
    :goto_4
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 3680
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_0

    .line 3681
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3682
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v13

    .line 3683
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3684
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3680
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "label":Ljava/lang/String;
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_0
    move-object v11, p1

    .line 3687
    .end local v10    # "i":I
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowELAPSED"    # J
    .param p6, "nowRTC"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 3660
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_0

    .line 3661
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3662
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v13, p3

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3663
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3660
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_0
    move-object v11, p1

    move-object/from16 v13, p3

    .line 3666
    .end local v10    # "i":I
    return-void
.end method

.method private dumpUpcomingNAlarmsForUid(Ljava/io/PrintWriter;II)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "n"    # I

    .line 1977
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v11

    .line 1979
    .local v11, "nowElapsed":J
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v13

    .line 1981
    .local v13, "nowRtc":J
    const/4 v1, 0x0

    .line 1982
    .local v1, "count":I
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_2

    if-ge v1, v10, :cond_2

    .line 1983
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/AlarmManagerService$Batch;

    .line 1984
    .local v6, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v2, 0x0

    move v7, v2

    .local v7, "j":I
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v2

    if-ge v7, v2, :cond_1

    if-ge v1, v10, :cond_1

    .line 1985
    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v4

    .line 1986
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v5, p2

    if-ne v2, v5, :cond_0

    .line 1987
    iget v2, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v3

    .line 1988
    .local v3, "label":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .local v0, "count":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1990
    const-string v16, "  "

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v17, v3

    .end local v3    # "label":Ljava/lang/String;
    .local v17, "label":Ljava/lang/String;
    move-object/from16 v3, v16

    move-object/from16 v16, v4

    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .local v16, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-wide v4, v11

    move-object/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v7    # "j":I
    .local v18, "b":Lcom/android/server/AlarmManagerService$Batch;
    .local v19, "j":I
    move-wide v6, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    move v1, v0

    goto :goto_2

    .line 1986
    .end local v0    # "count":I
    .end local v16    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v17    # "label":Ljava/lang/String;
    .end local v18    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v19    # "j":I
    .restart local v1    # "count":I
    .restart local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v7    # "j":I
    :cond_0
    move-object/from16 v16, v4

    move-object/from16 v18, v6

    move/from16 v19, v7

    .line 1984
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v7    # "j":I
    .restart local v18    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v19    # "j":I
    :goto_2
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v18

    .end local v19    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .end local v18    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v18, v6

    move/from16 v19, v7

    .line 1982
    .end local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v7    # "j":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 1994
    .end local v15    # "i":I
    :cond_2
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1302
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1303
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1304
    .local v1, "uid":I
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1306
    .local v2, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "alarmIndex":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1307
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1309
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1310
    goto :goto_2

    .line 1313
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1306
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1317
    .end local v3    # "alarmIndex":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1318
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1302
    .end local v1    # "uid":I
    .end local v2    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1321
    .end local v0    # "uidIndex":I
    :cond_3
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .line 3125
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3126
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3127
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3128
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3129
    return-object v2

    .line 3126
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3132
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .line 3279
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EHm"

    goto :goto_0

    :cond_0
    const-string v0, "Ehma"

    .line 3280
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3281
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 3282
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3281
    :goto_1
    return-object v2
.end method

.method static fuzzForDuration(J)I
    .locals 2
    .param p0, "duration"    # J

    .line 4123
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 4126
    long-to-int v0, p0

    return v0

    .line 4127
    :cond_0
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 4129
    const v0, 0xdbba0

    return v0

    .line 4132
    :cond_1
    const v0, 0x1b7740

    return v0
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4463
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4464
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    return v0

    .line 4467
    :cond_0
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    return v0
.end method

.method static getAlarmCount(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)I"
        }
    .end annotation

    .line 1086
    .local p0, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v0, 0x0

    .line 1088
    .local v0, "ret":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1089
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1090
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1089
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1092
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 4878
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4879
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_0

    .line 4880
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 4881
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4883
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4884
    .local v1, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_1

    .line 4885
    new-instance v2, Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 4886
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4888
    :cond_1
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 4872
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 4873
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 4874
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private getWhileIdleMinIntervalLocked(I)J
    .locals 4
    .param p1, "uid"    # I

    .line 3721
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3722
    .local v0, "dozing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v3, :cond_1

    .line 3723
    invoke-virtual {v3}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3724
    .local v1, "ebs":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 3725
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3727
    :cond_2
    if-eqz v0, :cond_3

    .line 3728
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2

    .line 3730
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3733
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3735
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2
.end method

.method private incrementAlarmCount(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 5192
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 5193
    .local v0, "uidIndex":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 5194
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5196
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5198
    :goto_0
    return-void
.end method

.method private static native init()J
.end method

.method private insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1057
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1058
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v0

    :goto_0
    nop

    .line 1060
    .local v0, "whichBatch":I
    if-gez v0, :cond_1

    .line 1061
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_1

    .line 1063
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1064
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1067
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1068
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1071
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    :goto_1
    return-void
.end method

.method private isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3690
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3691
    .local v0, "exemptOnBatterySaver":Z
    :goto_0
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_1

    .line 3693
    return v2

    .line 3695
    :cond_1
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    .line 3696
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3698
    return v2

    .line 3700
    :cond_2
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3702
    const/4 v0, 0x1

    .line 3705
    :cond_3
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3706
    .local v3, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3707
    .local v4, "sourceUid":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v5, :cond_4

    .line 3708
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 3707
    :goto_1
    return v1
.end method

.method private isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4181
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isIdlingImpl()Z
    .locals 2

    .line 3146
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 3669
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 3675
    const-string v0, "--unknown--"

    return-object v0

    .line 3672
    :cond_0
    const-string v0, "ELAPSED"

    return-object v0

    .line 3673
    :cond_1
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 3670
    :cond_2
    const-string v0, "RTC"

    return-object v0

    .line 3671
    :cond_3
    const-string v0, "RTC_WAKEUP"

    return-object v0
.end method

.method public static synthetic lambda$nSJw2tKfoL3YIrKDtszoL44jcSM(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeForStoppedLocked$3(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3504
    :try_start_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 3506
    const/4 v0, 0x1

    return v0

    .line 3508
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 3509
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$removeLocked$0(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p2, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3324
    invoke-virtual {p2, p0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeLocked$1(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3380
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeUserLocked$4(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "userHandle"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3552
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logAllAlarmsForUidLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 1967
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1968
    .local v0, "logWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1970
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List of all pending alarms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v2, v2, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/AlarmManagerService;->dumpUpcomingNAlarmsForUid(Ljava/io/PrintWriter;II)V

    .line 1972
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1973
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    return-void
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 18
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 3089
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3090
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3091
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 3092
    .local v11, "nowRTC":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v13

    .line 3093
    .local v13, "nowELAPSED":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3094
    .local v15, "NZ":I
    const/4 v3, 0x0

    move v10, v3

    .local v10, "iz":I
    :goto_0
    if-ge v10, v15, :cond_0

    .line 3095
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    .line 3096
    .local v8, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v3, "Batch "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3097
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v5, "  "

    move-object v3, v2

    move-wide v6, v13

    move-object/from16 v16, v8

    .end local v8    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    .local v16, "bz":Lcom/android/server/AlarmManagerService$Batch;
    move-wide v8, v11

    move/from16 v17, v10

    .end local v10    # "iz":I
    .local v17, "iz":I
    move-object/from16 v10, p1

    invoke-static/range {v3 .. v10}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3098
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 3099
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 3094
    .end local v16    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    add-int/lit8 v10, v17, 0x1

    .end local v17    # "iz":I
    .restart local v10    # "iz":I
    goto :goto_0

    .line 3102
    .end local v10    # "iz":I
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .line 1037
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 1038
    sub-long v0, p2, p0

    goto :goto_0

    .line 1039
    :cond_0
    move-wide v0, p4

    :goto_0
    nop

    .line 1040
    .local v0, "futurity":J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1041
    const-wide/16 v0, 0x0

    .line 1043
    :cond_1
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-long v2, v4

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    return-wide v2
.end method

.method private notifyBroadcastAlarmCompleteLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1516
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1517
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1518
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1520
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1509
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1510
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1511
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1513
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .line 3248
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3249
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3251
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3252
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3253
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3254
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3255
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3253
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3257
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3258
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3260
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3261
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3262
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3263
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3264
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3266
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v6

    .line 3264
    const-string/jumbo v7, "next_alarm_formatted"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3269
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3261
    .end local v3    # "userId":I
    .end local v4    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3272
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 3258
    .end local v1    # "N":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static native set(JIJJ)I
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 28
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p14, "listenerTag"    # Ljava/lang/String;
    .param p15, "flags"    # I
    .param p16, "doValidate"    # Z
    .param p17, "workSource"    # Landroid/os/WorkSource;
    .param p18, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p19, "callingUid"    # I
    .param p20, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p19

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v18, p15

    move-object/from16 v17, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    .line 2000
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    move v1, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2004
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p20

    :try_start_1
    invoke-interface {v0, v1, v3}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    const-string v0, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting alarm from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2007
    return-void

    .line 2010
    :cond_0
    goto :goto_0

    .line 2009
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v3, p20

    .line 2015
    :goto_0
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/android/server/OpAlarmManagerInjector;->ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 2020
    :cond_1
    new-array v0, v0, [I

    const/16 v4, 0x4d

    const/4 v5, 0x0

    aput v4, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2021
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v22, v2

    invoke-static/range {v22 .. v27}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    .line 2026
    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v4, p12

    move-object/from16 v6, p13

    invoke-virtual {v1, v4, v6}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2027
    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v1, v0}, Lcom/android/server/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2028
    move/from16 v7, p16

    invoke-direct {v1, v2, v5, v7}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 2029
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 10
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .line 2129
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 2134
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2138
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2139
    .local v0, "nowElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v2

    .line 2140
    .local v2, "fuzz":I
    if-lez v2, :cond_3

    .line 2141
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v3, :cond_1

    .line 2142
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 2144
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2145
    .local v3, "delta":I
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2153
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_0

    .line 2156
    .end local v0    # "nowElapsed":J
    .end local v2    # "fuzz":I
    .end local v3    # "delta":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_3

    .line 2169
    invoke-static {p1}, Lcom/android/server/OpAlarmManagerInjector;->ifNeedPending(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2171
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    return-void

    .line 2156
    :cond_3
    :goto_0
    nop

    .line 2177
    :cond_4
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x4d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2178
    sget-object v5, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    .line 2194
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 2195
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2197
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_6

    .line 2198
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2201
    :cond_6
    const/4 v0, 0x0

    .line 2203
    .local v0, "needRebatch":Z
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x10

    const-string v2, "AlarmManager"

    if-eqz v1, :cond_8

    .line 2213
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v1, p1, :cond_7

    if-eqz v1, :cond_7

    .line 2214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImplLocked: idle until changed from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_7
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2219
    const/4 v0, 0x1

    goto :goto_1

    .line 2220
    :cond_8
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 2221
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_9

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_a

    .line 2222
    :cond_9
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2226
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_a

    .line 2227
    const/4 v0, 0x1

    .line 2232
    :cond_a
    :goto_1
    if-nez p2, :cond_d

    .line 2233
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v1, :cond_b

    .line 2234
    if-eqz p3, :cond_b

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tipping-point operation: type="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " when(hex)="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2236
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " whenElapsed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " maxWhenElapsed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " interval="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " op="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " flags=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 2240
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2235
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2242
    const/4 v0, 0x0

    .line 2246
    :cond_b
    if-eqz v0, :cond_c

    .line 2247
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2250
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2251
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2253
    :cond_d
    return-void
.end method

.method private static native setKernelTime(JJ)I
.end method

.method private static native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "when"    # J

    .line 3647
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3648
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_0

    .line 3650
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3651
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3653
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3654
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3656
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 13

    .line 3161
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_0

    .line 3162
    return-void

    .line 3164
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3166
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3167
    .local v0, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3169
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3170
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 3171
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 3172
    .local v3, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3174
    .local v4, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 3175
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3176
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_3

    .line 3177
    iget v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3178
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3180
    .local v8, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    sget-boolean v9, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v9, :cond_1

    .line 3181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found AlarmClockInfo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3182
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-static {v10, v11, v7}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3181
    const-string v10, "AlarmManager"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_1
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 3188
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 3189
    :cond_2
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3190
    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v9

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_3

    .line 3192
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3174
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "userId":I
    .end local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3170
    .end local v3    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v4    # "M":I
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3199
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3200
    .local v2, "NN":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_7

    .line 3201
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3202
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3203
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3204
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3205
    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3200
    .end local v4    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5    # "userId":I
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3210
    .end local v3    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3211
    .local v3, "NNN":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_9

    .line 3212
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3213
    .restart local v5    # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    .line 3214
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3211
    .end local v5    # "userId":I
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 3217
    .end local v4    # "i":I
    :cond_9
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3221
    const-string v0, "Next AlarmClockInfoForUser("

    const-string v1, "AlarmManager"

    if-eqz p2, :cond_1

    .line 3222
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v2, :cond_0

    .line 3223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3224
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3223
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3228
    :cond_1
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v2, :cond_2

    .line 3229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): None"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3234
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3235
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3236
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3237
    return-void
.end method

.method private validateConsistencyLocked()Z
    .locals 7

    .line 3105
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v0, :cond_1

    .line 3106
    const-wide/high16 v0, -0x8000000000000000L

    .line 3107
    .local v0, "lastTime":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3108
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3109
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3110
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v5, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v5, v5, v0

    if-ltz v5, :cond_0

    .line 3112
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 3108
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3114
    .restart local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONSISTENCY FAILURE: Batch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is out of order"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlarmManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3116
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->logBatchesLocked(Ljava/text/SimpleDateFormat;)V

    .line 3117
    const/4 v6, 0x0

    return v6

    .line 3121
    .end local v0    # "lastTime":J
    .end local v2    # "N":I
    .end local v3    # "i":I
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 4
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .line 1075
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1076
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1077
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1078
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1079
    return v1

    .line 1076
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1082
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 959
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 960
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 961
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 964
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_0

    .line 965
    const/4 v3, 0x0

    .local v3, "alarmPrio":I
    goto :goto_1

    .line 966
    .end local v3    # "alarmPrio":I
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v3, :cond_1

    .line 967
    const/4 v3, 0x1

    .restart local v3    # "alarmPrio":I
    goto :goto_1

    .line 969
    .end local v3    # "alarmPrio":I
    :cond_1
    const/4 v3, 0x2

    .line 972
    .restart local v3    # "alarmPrio":I
    :goto_1
    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 973
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 974
    .local v5, "alarmPackage":Ljava/lang/String;
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 975
    :cond_2
    if-nez v4, :cond_3

    .line 976
    new-instance v6, Lcom/android/server/AlarmManagerService$PriorityClass;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    move-object v4, v6

    .line 977
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_3
    iput-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 981
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_4

    .line 983
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 984
    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_2

    .line 989
    :cond_4
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_5

    .line 990
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 960
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    .end local v5    # "alarmPackage":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 6
    .param p1, "nowELAPSED"    # J

    .line 4137
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4138
    return v1

    .line 4140
    :cond_0
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 4141
    return v1

    .line 4143
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    .line 4147
    return v1

    .line 4149
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4150
    .local v2, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 4
    .param p1, "nowELAPSED"    # J

    .line 4109
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 4110
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4112
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 4113
    :cond_0
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 4115
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 4118
    :cond_1
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 11
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 4154
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-string v0, "AlarmManager"

    iput-wide p2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 4155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4157
    .local v2, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 4158
    .local v3, "allowWhileIdle":Z
    :goto_1
    iget-boolean v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    const-wide/32 v6, 0x20000

    if-eqz v5, :cond_1

    .line 4159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch wakeup alarm to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_2

    .line 4161
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch non-wakeup alarm to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4164
    :goto_2
    :try_start_0
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_2

    .line 4165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sending alarm "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    :cond_2
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v5, v8, v9, v10}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4171
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v5, v2, p2, p3, v3}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4174
    goto :goto_3

    .line 4172
    :catch_0
    move-exception v5

    .line 4173
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v8, "Failure sending alarm."

    invoke-static {v0, v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4175
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 4176
    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4155
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3    # "allowWhileIdle":Z
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4178
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 31
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2457
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    iget-object v11, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2458
    :try_start_0
    const-string v2, "Current Alarm Manager state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2459
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2460
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2462
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v2, :cond_0

    .line 2463
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2464
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2467
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  App Standby Parole: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2470
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    move-wide v12, v2

    .line 2471
    .local v12, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v14, v2

    .line 2472
    .local v14, "nowUPTIME":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    move-wide v7, v2

    .line 2473
    .local v7, "nowRTC":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 2475
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "  nowRTC="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2476
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    const-string v2, " nowELAPSED="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 2478
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2479
    const-string v2, "  mLastTimeChangeClockTime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2480
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2481
    const-string v2, "  mLastTimeChangeRealtime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2482
    const-string v2, "  mLastTickReceived="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    const-string v2, "  mLastTickSet="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2484
    const-string v2, "  mLastTickAdded="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2485
    const-string v2, "  mLastTickRemoved="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2488
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2489
    const-string v2, "  Recent TIME_TICK history:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2490
    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    .line 2492
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 2493
    if-gez v2, :cond_1

    const/16 v2, 0x9

    .line 2494
    :cond_1
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    aget-wide v3, v3, v2

    .line 2495
    .local v3, "time":J
    const-string v5, "    "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2496
    const-wide/16 v5, 0x0

    cmp-long v16, v3, v5

    if-lez v16, :cond_2

    .line 2497
    new-instance v5, Ljava/util/Date;

    sub-long v18, v12, v3

    move-wide/from16 v20, v3

    .end local v3    # "time":J
    .local v20, "time":J
    sub-long v3, v7, v18

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2498
    .end local v20    # "time":J
    .restart local v3    # "time":J
    :cond_2
    move-wide/from16 v20, v3

    .end local v3    # "time":J
    .restart local v20    # "time":J
    const-string v3, "-"

    .line 2496
    :goto_1
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    .end local v20    # "time":J
    iget v3, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    if-ne v2, v3, :cond_30

    .line 2502
    .end local v2    # "i":I
    const-class v2, Lcom/android/server/SystemServiceManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemServiceManager;

    move-object/from16 v18, v2

    .line 2503
    .local v18, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v18, :cond_4

    .line 2504
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2505
    const-string v2, "  RuntimeStarted="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    new-instance v2, Ljava/util/Date;

    sub-long v3, v7, v12

    .line 2507
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2506
    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2508
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2509
    const-string v2, "  (Runtime restarted)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2512
    const-string v2, "  Runtime uptime (elapsed): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2514
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2515
    const-string v2, "  Runtime uptime (uptime): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2517
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2520
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2521
    iget-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_5

    .line 2522
    const-string v2, "  Time since non-interactive: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2523
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2524
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2526
    :cond_5
    const-string v2, "  Max wakeup delay: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {v1, v12, v13}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2528
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2529
    const-string v2, "  Time since last dispatch: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2530
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2531
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2532
    const-string v2, "  Next non-wakeup delivery time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2533
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2534
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2536
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v4, v7, v12

    add-long v5, v2, v4

    .line 2537
    .local v5, "nextWakeupRTC":J
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v19, v7, v12

    add-long v3, v2, v19

    .line 2538
    .local v3, "nextNonWakeupRTC":J
    const-string v2, "  Next non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    move-wide/from16 v19, v14

    .end local v14    # "nowUPTIME":J
    .local v19, "nowUPTIME":J
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2540
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2541
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2543
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2544
    const-string v2, "  Next wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2545
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2546
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2548
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2550
    const-string v2, "  Next kernel non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2551
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2552
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2553
    const-string v2, "  Next kernel wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2554
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2555
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2557
    const-string v2, "  Last wakeup: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2558
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2559
    const-string v2, "  Last trigger: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2560
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2561
    const-string v2, "  Num time change events: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2563
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2564
    const-string v2, "  Next alarm clock information: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    move-object v14, v2

    .line 2566
    .local v14, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v2, v15, :cond_6

    .line 2567
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2566
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2569
    .end local v2    # "i":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    if-ge v2, v15, :cond_7

    .line 2570
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2569
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2572
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v14}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2573
    .local v15, "user":I
    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2574
    .local v2, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v22

    goto :goto_5

    :cond_8
    const-wide/16 v22, 0x0

    :goto_5
    move-wide/from16 v24, v22

    .line 2575
    .local v24, "time":J
    move-object/from16 v22, v2

    .end local v2    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v22, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 2576
    .local v2, "pendingSend":Z
    move-wide/from16 v26, v3

    .end local v3    # "nextNonWakeupRTC":J
    .local v26, "nextNonWakeupRTC":J
    const-string v3, "    user:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 2577
    const-string v3, " pendingSend:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2578
    const-string v3, " time:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v24

    .end local v24    # "time":J
    .local v3, "time":J
    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2579
    const-wide/16 v16, 0x0

    cmp-long v23, v3, v16

    if-lez v23, :cond_9

    .line 2580
    move/from16 v23, v2

    .end local v2    # "pendingSend":Z
    .local v23, "pendingSend":Z
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2581
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4, v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_6

    .line 2579
    .end local v23    # "pendingSend":Z
    .restart local v2    # "pendingSend":Z
    :cond_9
    move/from16 v23, v2

    .line 2583
    .end local v2    # "pendingSend":Z
    .restart local v23    # "pendingSend":Z
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2584
    .end local v3    # "time":J
    .end local v15    # "user":I
    .end local v22    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v23    # "pendingSend":Z
    move-object/from16 v2, v21

    move-wide/from16 v3, v26

    goto :goto_4

    .line 2585
    .end local v26    # "nextNonWakeupRTC":J
    .local v3, "nextNonWakeupRTC":J
    :cond_a
    move-wide/from16 v26, v3

    const-wide/16 v16, 0x0

    .end local v3    # "nextNonWakeupRTC":J
    .restart local v26    # "nextNonWakeupRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 2586
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2587
    const-string v2, "  Pending alarm batches: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2588
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2589
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    move-object v4, v2

    .line 2590
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 2591
    iget-object v3, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v21, "    "

    move-object/from16 v2, p1

    move-wide/from16 v22, v26

    .end local v26    # "nextNonWakeupRTC":J
    .local v22, "nextNonWakeupRTC":J
    move-object/from16 v24, v4

    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .local v24, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v4, v21

    move-object/from16 v21, v14

    move-object/from16 v25, v15

    move-wide/from16 v14, v16

    move-wide/from16 v16, v5

    .end local v5    # "nextWakeupRTC":J
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v16, "nextWakeupRTC":J
    .local v21, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    move-wide v5, v12

    move-wide/from16 v26, v7

    .end local v7    # "nowRTC":J
    .local v26, "nowRTC":J
    move-object/from16 v28, v9

    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .local v28, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2592
    .end local v24    # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide/from16 v5, v16

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    move-wide/from16 v16, v14

    move-object/from16 v14, v21

    move-wide/from16 v26, v22

    move-object/from16 v15, v25

    goto :goto_7

    .line 2589
    .end local v16    # "nextWakeupRTC":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "nextNonWakeupRTC":J
    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "nextWakeupRTC":J
    .restart local v7    # "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v26, "nextNonWakeupRTC":J
    :cond_b
    move-object/from16 v28, v9

    move-object/from16 v21, v14

    move-wide/from16 v14, v16

    move-wide/from16 v22, v26

    move-wide/from16 v16, v5

    move-wide/from16 v26, v7

    .end local v5    # "nextWakeupRTC":J
    .end local v7    # "nowRTC":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16    # "nextWakeupRTC":J
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v22    # "nextNonWakeupRTC":J
    .local v26, "nowRTC":J
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_8

    .line 2585
    .end local v16    # "nextWakeupRTC":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "nextNonWakeupRTC":J
    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "nextWakeupRTC":J
    .restart local v7    # "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v26, "nextNonWakeupRTC":J
    :cond_c
    move-object/from16 v28, v9

    move-object/from16 v21, v14

    move-wide/from16 v14, v16

    move-wide/from16 v22, v26

    move-wide/from16 v16, v5

    move-wide/from16 v26, v7

    .line 2594
    .end local v5    # "nextWakeupRTC":J
    .end local v7    # "nowRTC":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16    # "nextWakeupRTC":J
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v22    # "nextNonWakeupRTC":J
    .local v26, "nowRTC":J
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2595
    const-string v2, "  Pending user blocked background alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    const/4 v2, 0x0

    .line 2597
    .local v2, "blocked":Z
    const/4 v3, 0x0

    move/from16 v24, v2

    move v9, v3

    .end local v2    # "blocked":Z
    .local v9, "i":I
    .local v24, "blocked":Z
    :goto_9
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_e

    .line 2598
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v25, v2

    .line 2599
    .local v25, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v25, :cond_d

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 2600
    const/16 v24, 0x1

    .line 2601
    const-string v4, "    "

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    move-wide v5, v12

    move-wide/from16 v7, v26

    move/from16 v29, v9

    .end local v9    # "i":I
    .local v29, "i":I
    move-object/from16 v9, v28

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_a

    .line 2599
    .end local v29    # "i":I
    .restart local v9    # "i":I
    :cond_d
    move/from16 v29, v9

    .line 2597
    .end local v9    # "i":I
    .end local v25    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v29    # "i":I
    :goto_a
    add-int/lit8 v9, v29, 0x1

    .end local v29    # "i":I
    .restart local v9    # "i":I
    goto :goto_9

    :cond_e
    move/from16 v29, v9

    .line 2604
    .end local v9    # "i":I
    if-nez v24, :cond_f

    .line 2605
    const-string v2, "    none"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2608
    const-string v2, "  Pending alarms per uid: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2609
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 2610
    if-lez v2, :cond_10

    .line 2611
    const-string v3, ", "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2613
    :cond_10
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2614
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2615
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2609
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2617
    .end local v2    # "i":I
    :cond_11
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2620
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3, v12, v13}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 2622
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 2623
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2624
    const-string v2, "    Idle mode state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    const-string v2, "      Idling until: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2626
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_13

    .line 2627
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2628
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "        "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_c

    .line 2630
    :cond_13
    const-string/jumbo v2, "null"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2632
    :goto_c
    const-string v2, "      Pending alarms:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v4, "      "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2635
    :cond_14
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_15

    .line 2636
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2637
    const-string v2, "  Next wake from idle: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2638
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "    "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2641
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2642
    const-string v2, "  Past-due non-wakeup alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2643
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 2644
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2645
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_d

    .line 2647
    :cond_16
    const-string v2, "(none)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    :goto_d
    const-string v2, "    Number of delayed alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2650
    const-string v2, ", total delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2651
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2652
    const-string v2, "    Max delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2653
    const-string v2, ", max non-interactive time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2654
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2655
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2657
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2658
    const-string v2, "  Broadcast ref count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2659
    const-string v2, "  PendingIntent send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2660
    const-string v2, "  PendingIntent finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2661
    const-string v2, "  Listener send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2662
    const-string v2, "  Listener finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2663
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2665
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    .line 2666
    const-string v2, "Outstanding deliveries:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2667
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 2668
    const-string v3, "   #"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2669
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2667
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2671
    .end local v2    # "i":I
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2674
    :cond_18
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 2675
    const-string v2, "  Last allow while idle dispatch times:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2676
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_f
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 2677
    const-string v3, "    UID "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2678
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 2679
    .local v3, "uid":I
    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2680
    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2681
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 2682
    .local v4, "lastTime":J
    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2684
    invoke-direct {v1, v3}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    .line 2685
    .local v6, "minInterval":J
    const-string v8, "  Next allowed:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2686
    add-long v8, v4, v6

    invoke-static {v8, v9, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2687
    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2688
    invoke-static {v6, v7, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2689
    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2691
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2676
    .end local v3    # "uid":I
    .end local v4    # "lastTime":J
    .end local v6    # "minInterval":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2695
    .end local v2    # "i":I
    :cond_19
    const-string v2, "  mUseAllowWhileIdleShortTime: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2696
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_10
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 2697
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2698
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2699
    const-string v3, " "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2696
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2702
    .end local v2    # "i":I
    :cond_1b
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2705
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "  Recent problems"

    const-string v4, "    "

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2706
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2709
    :cond_1c
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2710
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$5;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$5;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2721
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2723
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_11
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_24

    .line 2724
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2725
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_12
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_23

    .line 2726
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2727
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v9, 0x0

    .local v9, "is":I
    :goto_13
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v9, v14, :cond_22

    .line 2728
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2729
    .local v14, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v15, 0x0

    if-lez v4, :cond_1d

    .line 2730
    invoke-static {v2, v15, v4, v14, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v15

    :cond_1d
    nop

    .line 2731
    .local v15, "pos":I
    if-gez v15, :cond_1e

    .line 2732
    move-object/from16 v25, v6

    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .local v25, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    neg-int v6, v15

    add-int/lit8 v15, v6, -0x1

    goto :goto_14

    .line 2731
    .end local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_1e
    move-object/from16 v25, v6

    .line 2734
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :goto_14
    array-length v6, v2

    if-ge v15, v6, :cond_20

    .line 2735
    array-length v6, v2

    sub-int/2addr v6, v15

    add-int/lit8 v6, v6, -0x1

    .line 2736
    .local v6, "copylen":I
    if-lez v6, :cond_1f

    .line 2737
    move-object/from16 v30, v8

    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v30, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    add-int/lit8 v8, v15, 0x1

    invoke-static {v2, v15, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_15

    .line 2736
    .end local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_1f
    move-object/from16 v30, v8

    .line 2739
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :goto_15
    aput-object v14, v2, v15

    .line 2740
    array-length v8, v2

    if-ge v4, v8, :cond_21

    .line 2741
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2734
    .end local v6    # "copylen":I
    .end local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_20
    move-object/from16 v30, v8

    .line 2727
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15    # "pos":I
    .restart local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_21
    :goto_16
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v25

    move-object/from16 v8, v30

    const-wide/16 v14, 0x0

    goto :goto_13

    .end local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_22
    move-object/from16 v25, v6

    move-object/from16 v30, v8

    .line 2725
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "is":I
    .restart local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v14, 0x0

    goto :goto_12

    .end local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_23
    move-object/from16 v25, v6

    .line 2723
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v14, 0x0

    goto :goto_11

    .line 2747
    .end local v5    # "iu":I
    :cond_24
    if-lez v4, :cond_26

    .line 2748
    const-string v5, "  Top Alarms:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2749
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v4, :cond_26

    .line 2750
    aget-object v6, v2, v5

    .line 2751
    .local v6, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v7, "    "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2752
    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v7, :cond_25

    const-string v7, "*ACTIVE* "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2753
    :cond_25
    iget-wide v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2754
    const-string v7, " running, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2755
    const-string v7, " wakeups, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2756
    const-string v7, " alarms: "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2757
    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2758
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2759
    const-string v7, "      "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2760
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2749
    .end local v6    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 2764
    .end local v5    # "i":I
    :cond_26
    const-string v5, " "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2765
    const-string v5, "  Alarm Stats:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2767
    .local v5, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_18
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2c

    .line 2768
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 2769
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_19
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_2b

    .line 2770
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2771
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2772
    iget v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v14, :cond_27

    const-string v14, "*ACTIVE* "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2773
    :cond_27
    iget v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2774
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2775
    iget-object v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2776
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2777
    const-string v14, " running, "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 2778
    const-string v14, " wakeups:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2780
    const/4 v14, 0x0

    .local v14, "is":I
    :goto_1a
    iget-object v15, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_28

    .line 2781
    iget-object v15, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    .line 2783
    .end local v14    # "is":I
    :cond_28
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2784
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_2a

    .line 2785
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2786
    .local v15, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v25, v2

    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v25, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v2, "    "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2787
    iget v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v2, :cond_29

    const-string v2, "*ACTIVE* "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2788
    :cond_29
    move-object/from16 v30, v3

    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v30, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    iget-wide v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2789
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2790
    const-string v2, " wakes "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2791
    const-string v2, " alarms, last "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2792
    iget-wide v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2793
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    const-string v2, "      "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2795
    iget-object v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2796
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2784
    .end local v15    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    goto :goto_1b

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_2a
    move-object/from16 v25, v2

    move-object/from16 v30, v3

    .line 2769
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14    # "i":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_19

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_2b
    move-object/from16 v25, v2

    move-object/from16 v30, v3

    .line 2767
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "ip":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_18

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_2c
    move-object/from16 v25, v2

    move-object/from16 v30, v3

    .line 2800
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v6    # "iu":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2801
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2829
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v2, :cond_2f

    .line 2830
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2831
    const-string v2, "  Recent Wakeup History:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    const-wide/16 v2, -0x1

    .line 2833
    .local v2, "last":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 2834
    .local v7, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    const-string v8, "    "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v9, v28

    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2835
    const/16 v8, 0x7c

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 2836
    const-wide/16 v14, 0x0

    cmp-long v28, v2, v14

    if-gez v28, :cond_2d

    .line 2837
    const/16 v14, 0x30

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1d

    .line 2839
    :cond_2d
    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    sub-long/2addr v14, v2

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2841
    :goto_1d
    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    move-wide v2, v14

    .line 2842
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    iget v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 2843
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    iget-object v8, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2844
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2845
    .end local v7    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    move-object/from16 v28, v9

    goto :goto_1c

    .line 2846
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2e
    move-object/from16 v9, v28

    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1e

    .line 2829
    .end local v2    # "last":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2f
    move-object/from16 v9, v28

    .line 2848
    .end local v4    # "len":I
    .end local v5    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v12    # "nowELAPSED":J
    .end local v16    # "nextWakeupRTC":J
    .end local v18    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v19    # "nowUPTIME":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "nextNonWakeupRTC":J
    .end local v24    # "blocked":Z
    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v26    # "nowRTC":J
    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :goto_1e
    monitor-exit v11

    .line 2849
    return-void

    .line 2499
    .local v2, "i":I
    .local v7, "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v12    # "nowELAPSED":J
    .local v14, "nowUPTIME":J
    :cond_30
    move-wide/from16 v26, v7

    move-wide/from16 v19, v14

    .end local v7    # "nowRTC":J
    .end local v14    # "nowUPTIME":J
    .restart local v19    # "nowUPTIME":J
    .restart local v26    # "nowRTC":J
    goto/16 :goto_0

    .line 2848
    .end local v2    # "i":I
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "nowELAPSED":J
    .end local v19    # "nowUPTIME":J
    .end local v26    # "nowRTC":J
    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .locals 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 2852
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 2854
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v12, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2855
    :try_start_0
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    move-wide v13, v3

    .line 2856
    .local v13, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    move-wide v9, v3

    .line 2857
    .local v9, "nowElapsed":J
    const-wide v3, 0x10300000001L

    invoke-virtual {v11, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2858
    const-wide v7, 0x10300000002L

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2859
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2861
    const-wide v3, 0x10300000004L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2864
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2866
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v0, :cond_0

    .line 2867
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2870
    :cond_0
    const-wide v3, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2871
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 2873
    const-wide v3, 0x10300000008L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2875
    const-wide v3, 0x10300000009L

    .line 2876
    invoke-virtual {v1, v9, v10}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    .line 2875
    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2877
    const-wide v3, 0x1030000000aL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2879
    const-wide v3, 0x1030000000bL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2883
    :cond_1
    const-wide v3, 0x1030000000cL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2885
    const-wide v3, 0x1030000000dL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2887
    const-wide v3, 0x1030000000eL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2889
    const-wide v3, 0x1030000000fL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2891
    const-wide v3, 0x10300000010L

    iget v0, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2893
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2894
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v7, v3

    .line 2895
    .local v7, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 2896
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2895
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2898
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 2899
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v8, v3

    .line 2900
    .local v8, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v8, :cond_3

    .line 2901
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2900
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2903
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2904
    .local v4, "user":I
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2905
    .local v15, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v21

    goto :goto_3

    :cond_4
    const-wide/16 v21, 0x0

    :goto_3
    move-wide/from16 v23, v21

    .line 2906
    .local v23, "time":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 2907
    .local v5, "pendingSend":Z
    move-object v6, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2908
    .local v2, "aToken":J
    move-object/from16 v25, v6

    move/from16 v16, v7

    const-wide v6, 0x10500000001L

    .end local v7    # "nextAlarmClockForUserSize":I
    .local v16, "nextAlarmClockForUserSize":I
    invoke-virtual {v11, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2909
    const-wide v6, 0x10800000002L

    invoke-virtual {v11, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2910
    move-wide/from16 v17, v13

    move-wide/from16 v6, v23

    const-wide v13, 0x10300000003L

    .end local v13    # "nowRTC":J
    .end local v23    # "time":J
    .local v6, "time":J
    .local v17, "nowRTC":J
    invoke-virtual {v11, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2911
    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2912
    .end local v2    # "aToken":J
    .end local v4    # "user":I
    .end local v5    # "pendingSend":Z
    .end local v6    # "time":J
    .end local v15    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    move-object/from16 v2, p1

    move-wide v5, v13

    move/from16 v7, v16

    move-wide/from16 v13, v17

    move-object/from16 v3, v25

    goto :goto_2

    .line 2913
    .end local v16    # "nextAlarmClockForUserSize":I
    .end local v17    # "nowRTC":J
    .restart local v7    # "nextAlarmClockForUserSize":I
    .restart local v13    # "nowRTC":J
    :cond_5
    move/from16 v16, v7

    move-wide/from16 v17, v13

    const-wide v6, 0x10500000001L

    const-wide v13, 0x10300000003L

    .end local v7    # "nextAlarmClockForUserSize":I
    .end local v13    # "nowRTC":J
    .restart local v16    # "nextAlarmClockForUserSize":I
    .restart local v17    # "nowRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 2914
    .local v3, "b":Lcom/android/server/AlarmManagerService$Batch;
    const-wide v21, 0x20b00000013L

    move-object v4, v11

    move-wide v13, v6

    move-wide/from16 v5, v21

    move/from16 v15, v16

    move/from16 v16, v8

    .end local v8    # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v15, "nextAlarmClockForUserSize":I
    .local v16, "pendingSendNextAlarmClockChangedForUserSize":I
    move-wide v7, v9

    move-wide/from16 v19, v9

    .end local v9    # "nowElapsed":J
    .local v19, "nowElapsed":J
    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Batch;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2916
    .end local v3    # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide v6, v13

    move/from16 v8, v16

    move-wide/from16 v9, v19

    const-wide v13, 0x10300000003L

    move/from16 v16, v15

    goto :goto_4

    .line 2917
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v19    # "nowElapsed":J
    .restart local v8    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v9    # "nowElapsed":J
    .local v16, "nextAlarmClockForUserSize":I
    :cond_6
    move-wide v13, v6

    move-wide/from16 v19, v9

    move/from16 v15, v16

    move/from16 v16, v8

    .end local v8    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v9    # "nowElapsed":J
    .restart local v15    # "nextAlarmClockForUserSize":I
    .local v16, "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowElapsed":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 2918
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v21, v3

    .line 2919
    .local v21, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v21, :cond_7

    .line 2920
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2921
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000014L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2924
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_6

    .line 2917
    .end local v21    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2927
    .end local v2    # "i":I
    :cond_8
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_9

    .line 2928
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000015L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2931
    :cond_9
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2932
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000016L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2934
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_7

    .line 2935
    :cond_a
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_b

    .line 2936
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000017L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2940
    :cond_b
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2941
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000018L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2943
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_8

    .line 2945
    :cond_c
    const-wide v2, 0x10500000019L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2946
    const-wide v2, 0x1030000001aL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2947
    const-wide v2, 0x1030000001bL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2948
    const-wide v2, 0x1030000001cL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2951
    const-wide v2, 0x1050000001dL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2952
    const-wide v2, 0x1050000001eL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2953
    const-wide v2, 0x1050000001fL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2954
    const-wide v2, 0x10500000020L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2955
    const-wide v2, 0x10500000021L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2957
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2958
    .local v3, "f":Lcom/android/server/AlarmManagerService$InFlight;
    const-wide v4, 0x20b00000022L

    invoke-virtual {v3, v11, v4, v5}, Lcom/android/server/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2959
    .end local v3    # "f":Lcom/android/server/AlarmManagerService$InFlight;
    goto :goto_9

    .line 2961
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 2962
    const-wide v3, 0x20b00000024L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2964
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    .line 2965
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    .line 2967
    .local v6, "lastTime":J
    invoke-virtual {v11, v13, v14, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2968
    const-wide v8, 0x10300000002L

    invoke-virtual {v11, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2969
    nop

    .line 2970
    invoke-direct {v1, v5}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v21

    add-long v8, v6, v21

    .line 2969
    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2971
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2961
    .end local v3    # "token":J
    .end local v5    # "uid":I
    .end local v6    # "lastTime":J
    add-int/lit8 v2, v2, 0x1

    const-wide v13, 0x10500000001L

    goto :goto_a

    :cond_e
    const-wide v13, 0x10300000003L

    .line 2974
    .end local v2    # "i":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 2975
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2976
    const-wide v3, 0x20500000023L

    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 2977
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2976
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2974
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2981
    .end local v2    # "i":I
    :cond_10
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2983
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2984
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$6;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$6;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2995
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2997
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_c
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    .line 2998
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2999
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_d
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 3000
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3001
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v9, 0x0

    .local v9, "is":I
    :goto_e
    iget-object v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_16

    .line 3002
    iget-object v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3003
    .local v10, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v13, 0x0

    if-lez v4, :cond_11

    .line 3004
    invoke-static {v2, v13, v4, v10, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v13

    :cond_11
    nop

    .line 3005
    .local v13, "pos":I
    if-gez v13, :cond_12

    .line 3006
    neg-int v14, v13

    add-int/lit8 v13, v14, -0x1

    .line 3008
    :cond_12
    array-length v14, v2

    if-ge v13, v14, :cond_14

    .line 3009
    array-length v14, v2

    sub-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    .line 3010
    .local v14, "copylen":I
    if-lez v14, :cond_13

    .line 3011
    move-object/from16 v23, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v23, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v0, v13, 0x1

    invoke-static {v2, v13, v2, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    .line 3010
    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_13
    move-object/from16 v23, v0

    .line 3013
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :goto_f
    aput-object v10, v2, v13

    .line 3014
    array-length v0, v2

    if-ge v4, v0, :cond_15

    .line 3015
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 3008
    .end local v14    # "copylen":I
    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v23, v0

    .line 3001
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v10    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13    # "pos":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_15
    :goto_10
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    const-wide v13, 0x10300000003L

    goto :goto_e

    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_16
    move-object/from16 v23, v0

    .line 2999
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "is":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v13, 0x10300000003L

    goto :goto_d

    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_17
    move-object/from16 v23, v0

    .line 2997
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v5, v5, 0x1

    const-wide v13, 0x10300000003L

    goto :goto_c

    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_18
    move-object/from16 v23, v0

    .line 3021
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v5    # "iu":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    const-wide v5, 0x10900000002L

    if-ge v0, v4, :cond_19

    .line 3022
    const-wide v7, 0x20b00000026L

    invoke-virtual {v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 3023
    .local v7, "token":J
    aget-object v9, v2, v0

    .line 3025
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v11, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3026
    iget-object v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3028
    const-wide v5, 0x10b00000003L

    invoke-virtual {v9, v11, v5, v6}, Lcom/android/server/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3030
    invoke-virtual {v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3021
    .end local v7    # "token":J
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 3033
    .end local v0    # "i":I
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3034
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v7, 0x0

    .local v7, "iu":I
    :goto_12
    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 3035
    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 3036
    .local v8, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_13
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_1c

    .line 3037
    const-wide v13, 0x20b00000027L

    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 3039
    .local v13, "token":J
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3040
    .local v10, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-wide v5, 0x10b00000001L

    invoke-virtual {v10, v11, v5, v6}, Lcom/android/server/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3043
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3044
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_14
    iget-object v6, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1a

    .line 3045
    iget-object v6, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3044
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 3047
    .end local v5    # "is":I
    :cond_1a
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3048
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3049
    .local v6, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v26, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v27, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const-wide v2, 0x20b00000002L

    invoke-virtual {v6, v11, v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3050
    .end local v6    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v2, v26

    move-object/from16 v3, v27

    goto :goto_15

    .line 3052
    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_1b
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3036
    .end local v10    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "token":J
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    const-wide v5, 0x10900000002L

    goto :goto_13

    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_1c
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .line 3034
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v8    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v9    # "ip":I
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v5, 0x10900000002L

    goto/16 :goto_12

    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_1d
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .line 3074
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7    # "iu":I
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v2, :cond_1e

    .line 3075
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 3076
    .local v3, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    const-wide v5, 0x20b00000029L

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3077
    .local v5, "token":J
    iget v7, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    const-wide v8, 0x10500000001L

    invoke-virtual {v11, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3078
    iget-object v7, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    const-wide v13, 0x10900000002L

    invoke-virtual {v11, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3079
    iget-wide v8, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3080
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3081
    .end local v3    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v5    # "token":J
    goto :goto_16

    .line 3083
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v4    # "len":I
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v16    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v17    # "nowRTC":J
    .end local v19    # "nowElapsed":J
    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_1e
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3085
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3086
    return-void

    .line 3083
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1784
    nop

    .line 1785
    return-void

    .line 1783
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1784
    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 3152
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 3154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .line 3136
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3139
    :try_start_0
    invoke-static {}, Lcom/android/server/OpAlarmManagerInjector;->dumpNextWakeFromIdleInfo()V

    .line 3141
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 3142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getQuotaForBucketLocked(I)I
    .locals 2
    .param p1, "bucket"    # I

    .line 2038
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 2039
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_0

    .line 2040
    .end local v0    # "index":I
    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 2041
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 2042
    .end local v0    # "index":I
    :cond_1
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_2

    .line 2043
    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_0

    .line 2044
    .end local v0    # "index":I
    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    .line 2045
    const/4 v0, 0x3

    .restart local v0    # "index":I
    goto :goto_0

    .line 2047
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x4

    .line 2049
    .restart local v0    # "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v1, v1, v0

    return v1
.end method

.method haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)Z"
        }
    .end annotation

    .line 1096
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1097
    return v1

    .line 1099
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1100
    .local v0, "batchSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1101
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_1

    .line 1102
    const/4 v1, 0x1

    return v1

    .line 1100
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1105
    .end local v2    # "j":I
    :cond_2
    return v1
.end method

.method haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)Z"
        }
    .end annotation

    .line 1109
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1110
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    const/4 v2, 0x1

    return v2

    .line 1110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1115
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 6
    .param p1, "interactive"    # Z

    .line 3596
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_5

    .line 3597
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 3598
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3599
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_4

    .line 3600
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3601
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 3602
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 3603
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 3604
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 3606
    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 3607
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3609
    .end local v2    # "thisDelayTime":J
    :cond_1
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 3610
    sub-long v2, v0, v2

    .line 3611
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 3612
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 3617
    .end local v2    # "dur":J
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x4d

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3618
    invoke-static {v0, v1}, Lcom/android/server/OpAlarmAlignmentInjector;->updateInteractiveStartTime(J)V

    .line 3622
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/-$$Lambda$AlarmManagerService$gKXZ864LsHRTGbnNeLAgHKL2YPk;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$gKXZ864LsHRTGbnNeLAgHKL2YPk;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3625
    :cond_4
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 3628
    .end local v0    # "nowELAPSED":J
    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic lambda$interactiveStateChangedLocked$5$AlarmManagerService()V
    .locals 3

    .line 3623
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$removeLocked$2$AlarmManagerService(Ljava/lang/String;Landroid/util/MutableBoolean;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "removedNextWakeFromIdle"    # Landroid/util/MutableBoolean;
    .param p3, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3440
    invoke-virtual {p3, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 3441
    .local v0, "didMatch":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne p3, v1, :cond_0

    .line 3442
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/util/MutableBoolean;->value:Z

    .line 3444
    :cond_0
    return v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 3632
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 3633
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3634
    return v2

    .line 3631
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3637
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3638
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3639
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3640
    return v2

    .line 3637
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3643
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 1751
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1754
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1755
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 1756
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1757
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1758
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1759
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 1760
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 1761
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v2, Lcom/android/server/AlarmManagerService$AppStandbyTracker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1763
    const-class v2, Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppStateTracker;

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1764
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v2, v3}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 1766
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1767
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1768
    .end local v1    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1772
    :cond_0
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1773
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/android/server/OpAlarmAlignmentInjector;->initAlarmAlignment(II)V

    .line 1776
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 7

    .line 1619
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->init()V

    .line 1621
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1633
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1634
    :try_start_0
    new-instance v1, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 1635
    new-instance v1, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 1636
    new-instance v1, Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v2, 0x6ddd00

    invoke-direct {v1, v2, v3}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    .line 1638
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1642
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1659
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getSystemUiUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 1660
    if-gtz v1, :cond_0

    .line 1661
    const-string v1, "AlarmManager"

    const-string v2, "SysUI package not found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1665
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1670
    new-instance v1, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1701
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1702
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000000

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1707
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2, p0}, Lcom/android/server/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 1708
    new-instance v2, Lcom/android/server/AlarmManagerService$ChargingReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1709
    new-instance v2, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1710
    new-instance v2, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1712
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1713
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1714
    .local v2, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1715
    .end local v2    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    goto :goto_0

    .line 1716
    :cond_1
    const-string v2, "AlarmManager"

    const-string v3, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x4d

    aput v3, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/OpAlarmAlignmentInjector;->updateInteractiveStartTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/AlarmManagerService$UidObserver;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$UidObserver;-><init>(Lcom/android/server/AlarmManagerService;)V

    const/16 v5, 0xe

    const/4 v6, -0x1

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1732
    goto :goto_1

    .line 1730
    :catch_0
    move-exception v3

    .line 1733
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1734
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1735
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    const-string v1, "alarm"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1739
    new-instance v0, Lcom/android/server/AlarmManagerService$AmsInner;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AmsInner;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1740
    .local v0, "mAmsInner":Lcom/android/server/AlarmManagerService$AmsInner;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OpAlarmAlignmentInjector;->initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V

    .line 1745
    invoke-static {v0}, Lcom/android/server/OpAlarmManagerInjector;->onStart(Lcom/android/server/AlarmManagerService$AmsInner;)V

    .line 1747
    return-void

    .line 1733
    .end local v0    # "mAmsInner":Lcom/android/server/AlarmManagerService$AmsInner;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 10
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .line 1214
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x4d

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    sget-object v3, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_READDALARMLOCKED:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    goto :goto_0

    .line 1217
    :cond_0
    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1220
    :goto_0
    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v1

    .line 1222
    .local v1, "whenElapsed":J
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1224
    move-wide v3, v1

    .local v3, "maxElapsed":J
    goto :goto_2

    .line 1229
    .end local v3    # "maxElapsed":J
    :cond_1
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1230
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v3

    goto :goto_1

    .line 1231
    :cond_2
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v4, p2

    move-wide v6, v1

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v3

    :goto_1
    nop

    .line 1233
    .restart local v3    # "maxElapsed":J
    :goto_2
    iput-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 1234
    iput-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 1235
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1236
    return-void
.end method

.method rebatchAllAlarms()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1122
    monitor-exit v0

    .line 1123
    return-void

    .line 1122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 17
    .param p1, "doValidate"    # Z

    .line 1126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    .line 1127
    .local v1, "start":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1128
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1129
    .local v3, "oldCount":I
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1130
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 1132
    .local v4, "oldHasTick":Z
    :goto_1
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1133
    .local v7, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1134
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1135
    .local v8, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v9

    .line 1136
    .local v9, "nowElapsed":J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1137
    .local v11, "oldBatches":I
    const/4 v12, 0x0

    .local v12, "batchNum":I
    :goto_2
    if-ge v12, v11, :cond_3

    .line 1138
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 1139
    .local v13, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v14

    .line 1140
    .local v14, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v14, :cond_2

    .line 1141
    invoke-virtual {v13, v15}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v6

    move/from16 v5, p1

    invoke-virtual {v0, v6, v9, v10, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1140
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    move/from16 v5, p1

    .line 1137
    .end local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14    # "N":I
    .end local v15    # "i":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move/from16 v5, p1

    .line 1144
    .end local v12    # "batchNum":I
    const-string v6, " to "

    const-string v12, "AlarmManager"

    if-eqz v8, :cond_4

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v8, v13, :cond_4

    .line 1145
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rebatching: idle until changed from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v13, :cond_4

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 1152
    :cond_4
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1153
    invoke-static {v13}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v14

    add-int/2addr v13, v14

    .line 1154
    .local v13, "newCount":I
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1155
    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v16, 0x1

    :goto_5
    move/from16 v14, v16

    .line 1157
    .local v14, "newHasTick":Z
    if-eq v3, v13, :cond_7

    .line 1158
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebatching: total count changed from "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_7
    if-eq v4, v14, :cond_8

    .line 1161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rebatching: hasTick changed from "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1165
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1166
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1167
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 8
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .line 4093
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4094
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "nextBatch":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4095
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 4096
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v3, v3, p2

    if-lez v3, :cond_0

    .line 4097
    goto :goto_2

    .line 4100
    :cond_0
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4101
    .local v3, "numAlarms":I
    const/4 v4, 0x0

    .local v4, "nextAlarm":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 4102
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4103
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4101
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4094
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "numAlarms":I
    .end local v4    # "nextAlarm":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4106
    .end local v1    # "nextBatch":I
    :cond_2
    :goto_2
    return-void
.end method

.method removeForStoppedLocked(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 3497
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 3499
    return-void

    .line 3501
    :cond_0
    const/4 v0, 0x0

    .line 3502
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;-><init>(I)V

    .line 3511
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3512
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3513
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3514
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3515
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3511
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3518
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 3519
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3520
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_3

    .line 3522
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3523
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3518
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3526
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 3527
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 3528
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3529
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_5

    .line 3530
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3532
    :cond_5
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3526
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3535
    .end local v2    # "i":I
    :cond_7
    if-eqz v0, :cond_9

    .line 3536
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_8

    .line 3537
    const-string v2, "AlarmManager"

    const-string/jumbo v4, "remove(package) changed bounds; rebatching"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3540
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3541
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3543
    :cond_9
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 1853
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1854
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1855
    monitor-exit v0

    .line 1856
    return-void

    .line 1855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLocked(I)V
    .locals 7
    .param p1, "uid"    # I

    .line 3375
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 3377
    return-void

    .line 3379
    :cond_0
    const/4 v0, 0x0

    .line 3380
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;-><init>(I)V

    .line 3381
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3382
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3383
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3384
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3385
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3381
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3388
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 3389
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3390
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_3

    .line 3392
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3393
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3388
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3396
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_8

    .line 3397
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3398
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_6

    .line 3399
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v6, p1, :cond_5

    .line 3400
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3401
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3398
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 3404
    .end local v5    # "j":I
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 3405
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3396
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3410
    .end local v2    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_9

    .line 3411
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3413
    :cond_9
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v5, "AlarmManager"

    if-eqz v2, :cond_a

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_a

    .line 3415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed app uid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " set idle-until alarm!"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3418
    :cond_a
    if-eqz v0, :cond_c

    .line 3419
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_b

    .line 3420
    const-string/jumbo v2, "remove(uid) changed bounds; rebatching"

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    :cond_b
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3423
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3424
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3426
    :cond_c
    return-void
.end method

.method removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 9
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    .line 3315
    const-string v0, "AlarmManager"

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 3316
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_0

    .line 3317
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "requested remove() of null operation"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3320
    :cond_0
    return-void

    .line 3323
    :cond_1
    const/4 v1, 0x0

    .line 3324
    .local v1, "didRemove":Z
    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;

    .local v2, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v2, p1, p2}, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3325
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 3326
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3327
    .local v5, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3328
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 3329
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3325
    .end local v5    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3332
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 3333
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3334
    .local v5, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3336
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3337
    iget v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3332
    .end local v5    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3340
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 3341
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3342
    .local v5, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_7

    .line 3343
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3344
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v7, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3346
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3347
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v8, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3342
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 3350
    .end local v6    # "j":I
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_8

    .line 3351
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3340
    .end local v5    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 3354
    .end local v3    # "i":I
    :cond_9
    if-eqz v1, :cond_e

    .line 3355
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_a

    .line 3356
    const-string/jumbo v3, "remove(operation) changed bounds; rebatching"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    :cond_a
    const/4 v0, 0x0

    .line 3359
    .local v0, "restorePending":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3360
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3361
    const/4 v0, 0x1

    .line 3363
    :cond_b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_c

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3364
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3366
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3367
    if-eqz v0, :cond_d

    .line 3368
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3370
    :cond_d
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3372
    .end local v0    # "restorePending":Z
    :cond_e
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3429
    const-string v0, "AlarmManager"

    if-nez p1, :cond_1

    .line 3430
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_0

    .line 3431
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "requested remove() of null packageName"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3434
    :cond_0
    return-void

    .line 3437
    :cond_1
    const/4 v1, 0x0

    .line 3438
    .local v1, "didRemove":Z
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 3439
    .local v2, "removedNextWakeFromIdle":Landroid/util/MutableBoolean;
    new-instance v4, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;

    .local v4, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;Landroid/util/MutableBoolean;)V

    .line 3446
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v5

    .line 3447
    .local v5, "oldHasTick":Z
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 3448
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    .line 3449
    .local v8, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v8, v4, v3}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v9

    or-int/2addr v1, v9

    .line 3450
    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 3451
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3447
    .end local v8    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 3454
    .end local v6    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v3

    .line 3455
    .local v3, "newHasTick":Z
    if-eq v5, v3, :cond_4

    .line 3456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeLocked: hasTick changed from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    :cond_4
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    .restart local v6    # "i":I
    :goto_1
    if-ltz v6, :cond_6

    .line 3460
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3461
    .local v8, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v8, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3463
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3464
    iget v9, v8, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v9, v7}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3459
    .end local v8    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3467
    .end local v6    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v7

    .restart local v6    # "i":I
    :goto_2
    if-ltz v6, :cond_a

    .line 3468
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3469
    .local v8, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "j":I
    :goto_3
    if-ltz v9, :cond_8

    .line 3470
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3471
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v10, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3472
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3473
    iget v11, v10, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v11, v7}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3469
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 3476
    .end local v9    # "j":I
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 3477
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3467
    .end local v8    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3482
    .end local v6    # "i":I
    :cond_a
    iget-boolean v6, v2, Landroid/util/MutableBoolean;->value:Z

    if-eqz v6, :cond_b

    .line 3483
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3485
    :cond_b
    if-eqz v1, :cond_d

    .line 3486
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v6, :cond_c

    .line 3487
    const-string/jumbo v6, "remove(package) changed bounds; rebatching"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3490
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3491
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3493
    :cond_d
    return-void
.end method

.method removeUserLocked(I)V
    .locals 7
    .param p1, "userHandle"    # I

    .line 3546
    if-nez p1, :cond_0

    .line 3548
    return-void

    .line 3550
    :cond_0
    const/4 v0, 0x0

    .line 3551
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;-><init>(I)V

    .line 3553
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3554
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3555
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3556
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3557
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3553
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3560
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 3561
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 3564
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3565
    .local v4, "removed":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3560
    .end local v4    # "removed":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3568
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 3569
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 3570
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3571
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_5

    .line 3572
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3573
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3572
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3576
    .end local v5    # "j":I
    :cond_5
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3568
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3579
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_4
    if-ltz v2, :cond_9

    .line 3580
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_8

    .line 3581
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 3579
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 3585
    .end local v2    # "i":I
    :cond_9
    if-eqz v0, :cond_b

    .line 3586
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_a

    .line 3587
    const-string v2, "AlarmManager"

    const-string/jumbo v4, "remove(user) changed bounds; rebatching"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3590
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3591
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3593
    :cond_b
    return-void
.end method

.method reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1177
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 1178
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v2, "rescheduledAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "batchIndex":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1181
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 1182
    .local v5, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "alarmIndex":I
    :goto_1
    if-ltz v6, :cond_2

    .line 1183
    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 1184
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 1185
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1186
    .local v8, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1187
    goto :goto_2

    .line 1189
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1190
    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1191
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1194
    .end local v6    # "alarmIndex":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 1195
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1180
    .end local v5    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1198
    .end local v3    # "batchIndex":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1199
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1200
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1198
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1203
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    return v4
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 9

    .line 3288
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3289
    .local v0, "nowElapsed":J
    const-wide/16 v2, 0x0

    .line 3290
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3291
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v4

    .line 3292
    .local v4, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3293
    .local v5, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v4, :cond_0

    .line 3294
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 3295
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3296
    const/4 v6, 0x2

    iget-wide v7, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3298
    :cond_0
    if-eq v5, v4, :cond_1

    .line 3299
    iget-wide v2, v5, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 3302
    .end local v4    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v5    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_3

    .line 3303
    cmp-long v4, v2, v5

    if-eqz v4, :cond_2

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v7, v2

    if-gez v4, :cond_3

    .line 3304
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3307
    :cond_3
    cmp-long v4, v2, v5

    if-eqz v4, :cond_4

    .line 3308
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 3309
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3310
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3312
    :cond_4
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 6

    .line 1412
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/OpAlarmManagerInjector;->alleviateFirePendingLocked(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1416
    .local v0, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1417
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    .line 1418
    .local v1, "nowElapsed":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1419
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1420
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1418
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1427
    .end local v0    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v1    # "nowElapsed":J
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1428
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1430
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .locals 3

    .line 1287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1292
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1295
    :cond_0
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1250
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1251
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1255
    :cond_0
    const-string v1, "Sending blocked alarms for uid "

    const-string v2, "AlarmManager"

    if-eqz p2, :cond_4

    .line 1256
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v3, :cond_1

    .line 1257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1261
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1262
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1263
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1266
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 1267
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 1270
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_4
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v3, :cond_5

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_5
    move-object v1, v0

    .line 1274
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1276
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1277
    return-void

    .line 1252
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_7
    :goto_2
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 43
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;

    .line 1863
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v13, p8

    move/from16 v11, p14

    if-nez v13, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    if-eqz v13, :cond_2

    if-eqz p9, :cond_2

    .line 1865
    :cond_1
    const-string v0, "AlarmManager"

    const-string v7, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return-void

    .line 1871
    :cond_2
    const/4 v0, 0x0

    if-eqz p9, :cond_3

    .line 1873
    :try_start_0
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v15, Lcom/android/server/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v7, v8, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    move-object/from16 v12, p10

    goto :goto_0

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping unreachable alarm listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p10

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    return-void

    .line 1871
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v12, p10

    .line 1882
    :goto_0
    const-wide/32 v7, 0x2932e00

    cmp-long v7, v3, v7

    if-lez v7, :cond_4

    .line 1883
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-wide/32 v3, 0x36ee80

    move-wide/from16 v16, v3

    .end local p4    # "windowLength":J
    .local v3, "windowLength":J
    goto :goto_1

    .line 1882
    .end local v3    # "windowLength":J
    .restart local p4    # "windowLength":J
    :cond_4
    move-wide/from16 v16, v3

    .line 1891
    .end local p4    # "windowLength":J
    .local v16, "windowLength":J
    :goto_1
    iget-object v3, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v9, v3, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 1892
    .local v9, "minInterval":J
    const-wide/16 v18, 0x0

    cmp-long v3, v5, v18

    if-lez v3, :cond_5

    cmp-long v3, v5, v9

    if-gez v3, :cond_5

    .line 1893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suspiciously short interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millis; expanding to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long v7, v9, v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    move-wide v3, v9

    move-wide v7, v3

    .end local p6    # "interval":J
    .local v3, "interval":J
    goto :goto_2

    .line 1897
    .end local v3    # "interval":J
    .restart local p6    # "interval":J
    :cond_5
    iget-object v3, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_6

    .line 1898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suspiciously long interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millis; clamping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v3, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide v7, v3

    .end local p6    # "interval":J
    .restart local v3    # "interval":J
    goto :goto_2

    .line 1897
    .end local v3    # "interval":J
    .restart local p6    # "interval":J
    :cond_6
    move-wide v7, v5

    .line 1903
    .end local p6    # "interval":J
    .local v7, "interval":J
    :goto_2
    if-ltz v14, :cond_e

    const/4 v3, 0x3

    if-gt v14, v3, :cond_e

    .line 1907
    cmp-long v3, v1, v18

    if-gez v3, :cond_7

    .line 1908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    int-to-long v3, v3

    .line 1909
    .local v3, "what":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid alarm trigger time! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " from uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlarmManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const-wide/16 v1, 0x0

    move-wide v5, v1

    .end local p2    # "triggerAtTime":J
    .local v1, "triggerAtTime":J
    goto :goto_3

    .line 1907
    .end local v1    # "triggerAtTime":J
    .end local v3    # "what":J
    .restart local p2    # "triggerAtTime":J
    :cond_7
    move-wide v5, v1

    .line 1914
    .end local p2    # "triggerAtTime":J
    .local v5, "triggerAtTime":J
    :goto_3
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v22

    .line 1915
    .local v22, "nowElapsed":J
    invoke-direct {v15, v5, v6, v14}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v24

    .line 1925
    .local v24, "nominalTrigger":J
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    move-wide/from16 v1, v22

    move-wide/from16 v20, v3

    move-wide/from16 v3, v24

    move-wide/from16 v26, v5

    .end local v5    # "triggerAtTime":J
    .local v26, "triggerAtTime":J
    move-wide/from16 v28, v7

    .end local v7    # "interval":J
    .local v28, "interval":J
    move/from16 v7, p1

    move-object/from16 v8, p8

    move-wide/from16 v30, v9

    .end local v9    # "minInterval":J
    .local v30, "minInterval":J
    move/from16 v9, p14

    move-object/from16 v10, p15

    move-wide/from16 v11, v20

    invoke-static/range {v1 .. v12}, Lcom/android/server/OpAlarmManagerInjector;->modifyMinTrigger(JJJILandroid/app/PendingIntent;ILjava/lang/String;J)[J

    move-result-object v32

    .line 1926
    .local v32, "pairs":[J
    aget-wide v33, v32, v0

    .line 1927
    .local v33, "minTrigger":J
    const/4 v1, 0x1

    aget-wide v11, v32, v1

    .line 1930
    .end local v26    # "triggerAtTime":J
    .local v11, "triggerAtTime":J
    cmp-long v1, v24, v33

    if-lez v1, :cond_8

    move-wide/from16 v1, v24

    goto :goto_4

    :cond_8
    move-wide/from16 v1, v33

    :goto_4
    move-wide v9, v1

    .line 1933
    .local v9, "triggerElapsed":J
    cmp-long v1, v16, v18

    if-nez v1, :cond_9

    .line 1934
    move-wide v1, v9

    move-wide v7, v1

    move-wide/from16 v5, v16

    .local v1, "maxElapsed":J
    goto :goto_5

    .line 1935
    .end local v1    # "maxElapsed":J
    :cond_9
    cmp-long v1, v16, v18

    if-gez v1, :cond_a

    .line 1936
    move-wide/from16 p2, v22

    move-wide/from16 p4, v9

    move-wide/from16 p6, v28

    invoke-static/range {p2 .. p7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v1

    .line 1938
    .restart local v1    # "maxElapsed":J
    sub-long v16, v1, v9

    move-wide v7, v1

    move-wide/from16 v5, v16

    goto :goto_5

    .line 1940
    .end local v1    # "maxElapsed":J
    :cond_a
    add-long v1, v9, v16

    move-wide v7, v1

    move-wide/from16 v5, v16

    .line 1942
    .end local v16    # "windowLength":J
    .local v5, "windowLength":J
    .local v7, "maxElapsed":J
    :goto_5
    iget-object v3, v15, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1943
    :try_start_1
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v1, :cond_b

    .line 1944
    :try_start_2
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") : type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " triggerAtTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " win="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " tElapsed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " maxElapsed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " interval="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v13, v28

    .end local v28    # "interval":J
    .local v13, "interval":J
    :try_start_3
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1944
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 1963
    .end local v13    # "interval":J
    .restart local v28    # "interval":J
    :catchall_0
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v28

    move-wide/from16 v27, v5

    .end local v28    # "interval":J
    .restart local v13    # "interval":J
    goto/16 :goto_8

    .line 1943
    .end local v13    # "interval":J
    .restart local v28    # "interval":J
    :cond_b
    move-wide/from16 v13, v28

    .line 1949
    .end local v28    # "interval":J
    .restart local v13    # "interval":J
    :goto_6
    :try_start_4
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    move/from16 v4, p14

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-lt v0, v1, :cond_d

    .line 1950
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum limit of concurrent alarms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reached for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v2, p15

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1956
    invoke-direct {v15, v4}, Lcom/android/server/AlarmManagerService;->logAllAlarmsForUidLocked(I)V

    .line 1958
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "windowLength":J
    .end local v7    # "maxElapsed":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v13    # "interval":J
    .end local v22    # "nowElapsed":J
    .end local v24    # "nominalTrigger":J
    .end local v30    # "minInterval":J
    .end local v32    # "pairs":[J
    .end local v33    # "minTrigger":J
    .end local p0    # "this":Lcom/android/server/AlarmManagerService;
    .end local p1    # "type":I
    .end local p8    # "operation":Landroid/app/PendingIntent;
    .end local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .end local p10    # "listenerTag":Ljava/lang/String;
    .end local p11    # "flags":I
    .end local p12    # "workSource":Landroid/os/WorkSource;
    .end local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local p14    # "callingUid":I
    .end local p15    # "callingPackage":Ljava/lang/String;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1963
    .end local v0    # "errorMsg":Ljava/lang/String;
    .restart local v5    # "windowLength":J
    .restart local v7    # "maxElapsed":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v13    # "interval":J
    .restart local v22    # "nowElapsed":J
    .restart local v24    # "nominalTrigger":J
    .restart local v30    # "minInterval":J
    .restart local v32    # "pairs":[J
    .restart local v33    # "minTrigger":J
    .restart local p0    # "this":Lcom/android/server/AlarmManagerService;
    .restart local p1    # "type":I
    .restart local p8    # "operation":Landroid/app/PendingIntent;
    .restart local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .restart local p10    # "listenerTag":Ljava/lang/String;
    .restart local p11    # "flags":I
    .restart local p12    # "workSource":Landroid/os/WorkSource;
    .restart local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local p14    # "callingUid":I
    .restart local p15    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v2, p15

    :goto_7
    move-object/from16 v26, v3

    move-wide/from16 v27, v5

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v13

    goto :goto_8

    .line 1960
    :cond_d
    move-object/from16 v2, p15

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v26, v3

    move-wide v3, v11

    move-wide/from16 v27, v5

    .end local v5    # "windowLength":J
    .local v27, "windowLength":J
    move-wide v5, v9

    move-wide/from16 v35, v7

    .end local v7    # "maxElapsed":J
    .local v35, "maxElapsed":J
    move-wide/from16 v7, v27

    move-wide/from16 v37, v9

    .end local v9    # "triggerElapsed":J
    .local v37, "triggerElapsed":J
    move-wide/from16 v9, v35

    move-wide/from16 v39, v11

    .end local v11    # "triggerAtTime":J
    .local v39, "triggerAtTime":J
    move-wide v11, v13

    move-wide/from16 v41, v13

    .end local v13    # "interval":J
    .local v41, "interval":J
    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p15

    :try_start_7
    invoke-direct/range {v1 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1963
    monitor-exit v26

    .line 1964
    return-void

    .line 1963
    .end local v27    # "windowLength":J
    .end local v35    # "maxElapsed":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
    .restart local v5    # "windowLength":J
    .restart local v7    # "maxElapsed":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v13    # "interval":J
    :catchall_3
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v27, v5

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v13

    .end local v5    # "windowLength":J
    .end local v7    # "maxElapsed":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v13    # "interval":J
    .restart local v27    # "windowLength":J
    .restart local v35    # "maxElapsed":J
    .restart local v37    # "triggerElapsed":J
    .restart local v39    # "triggerAtTime":J
    .restart local v41    # "interval":J
    goto :goto_8

    .end local v27    # "windowLength":J
    .end local v35    # "maxElapsed":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
    .restart local v5    # "windowLength":J
    .restart local v7    # "maxElapsed":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v28    # "interval":J
    :catchall_4
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v28

    move-wide/from16 v27, v5

    .end local v5    # "windowLength":J
    .end local v7    # "maxElapsed":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v28    # "interval":J
    .restart local v27    # "windowLength":J
    .restart local v35    # "maxElapsed":J
    .restart local v37    # "triggerElapsed":J
    .restart local v39    # "triggerAtTime":J
    .restart local v41    # "interval":J
    :goto_8
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_8

    .line 1903
    .end local v22    # "nowElapsed":J
    .end local v24    # "nominalTrigger":J
    .end local v27    # "windowLength":J
    .end local v30    # "minInterval":J
    .end local v32    # "pairs":[J
    .end local v33    # "minTrigger":J
    .end local v35    # "maxElapsed":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
    .local v7, "interval":J
    .local v9, "minInterval":J
    .restart local v16    # "windowLength":J
    .restart local p2    # "triggerAtTime":J
    :cond_e
    move-wide/from16 v41, v7

    move-wide/from16 v30, v9

    .line 1904
    .end local v7    # "interval":J
    .end local v9    # "minInterval":J
    .restart local v30    # "minInterval":J
    .restart local v41    # "interval":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid alarm type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTimeImpl(J)Z
    .locals 8
    .param p1, "millis"    # J

    .line 1788
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    const-string v0, "AlarmManager"

    const-string v1, "Not setting time since no alarm driver is available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const/4 v0, 0x0

    return v0

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1795
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1796
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1797
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 1798
    .local v4, "currentTzOffset":I
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 1799
    .local v5, "newTzOffset":I
    if-eq v4, v5, :cond_1

    .line 1800
    const-string v6, "AlarmManager"

    const-string v7, "Timezone offset has changed, updating kernel timezone"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v7, 0xea60

    div-int v7, v5, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1806
    :cond_1
    const/4 v6, 0x1

    monitor-exit v0

    return v6

    .line 1807
    .end local v1    # "currentTimeMillis":J
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "currentTzOffset":I
    .end local v5    # "newTzOffset":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 6
    .param p1, "tz"    # Ljava/lang/String;

    .line 1811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    return-void

    .line 1815
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1818
    .local v0, "zone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 1819
    .local v1, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1820
    :try_start_0
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1821
    .local v2, "current":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1822
    :cond_1
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_2

    .line 1823
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timezone changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_2
    const/4 v1, 0x1

    .line 1826
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1832
    .local v3, "gmtOffset":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v5, 0xea60

    div-int v5, v3, v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1833
    .end local v2    # "current":Ljava/lang/String;
    .end local v3    # "gmtOffset":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1837
    if-eqz v1, :cond_4

    .line 1839
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1842
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x25200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1847
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "time-zone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1850
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 1833
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "knownUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "first"    # Z

    .line 4444
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 4446
    if-eqz p1, :cond_1

    .line 4447
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4448
    return-void

    .line 4451
    :cond_1
    if-ltz p2, :cond_2

    .line 4452
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4453
    return-void

    .line 4456
    :cond_2
    goto :goto_1

    .line 4455
    :catch_0
    move-exception v1

    .line 4459
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4460
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;J)Z
    .locals 33
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)Z"
        }
    .end annotation

    .line 3739
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    const/4 v1, 0x0

    .line 3743
    .local v1, "hasWakeup":Z
    :goto_0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v12, "AlarmManager"

    const/4 v13, 0x1

    if-lez v2, :cond_10

    .line 3744
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/AlarmManagerService$Batch;

    .line 3745
    .local v11, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v2, v11, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    .line 3747
    move-object v2, v0

    move-object/from16 v31, v12

    move v3, v13

    goto/16 :goto_6

    .line 3752
    :cond_0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3754
    invoke-virtual {v11}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v8

    .line 3755
    .local v8, "N":I
    const/4 v2, 0x0

    move/from16 v21, v1

    move v9, v2

    .end local v1    # "hasWakeup":Z
    .local v9, "i":I
    .local v21, "hasWakeup":Z
    :goto_1
    if-ge v9, v8, :cond_f

    .line 3756
    invoke-virtual {v11, v9}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 3758
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-wide/16 v15, 0x0

    if-eqz v1, :cond_2

    .line 3761
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 3762
    .local v1, "lastTime":J
    iget v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 3769
    .local v3, "minTime":J
    iget-object v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/OpAlarmManagerInjector;->needDeferred(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    cmp-long v5, v1, v15

    if-ltz v5, :cond_2

    cmp-long v5, p2, v3

    if-gez v5, :cond_2

    .line 3775
    iput-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 3776
    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 3777
    iput-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3779
    :cond_1
    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 3790
    invoke-direct {v0, v7, v13, v10}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 3791
    goto :goto_2

    .line 3794
    .end local v1    # "lastTime":J
    .end local v3    # "minTime":J
    :cond_2
    invoke-direct {v0, v7}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3796
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v1, :cond_3

    .line 3797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferring alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to user forced app standby"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    :cond_3
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3800
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez v1, :cond_4

    .line 3801
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3802
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3804
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3805
    goto :goto_2

    .line 3809
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_5
    new-array v1, v13, [I

    const/16 v2, 0x4d

    aput v2, v1, v10

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3810
    sget-object v2, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_TRIGGERALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-wide/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3812
    goto :goto_2

    .line 3820
    :cond_6
    invoke-static {v7, v10}, Lcom/android/server/OpAlarmManagerInjector;->ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3755
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2
    move-object v2, v0

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v30, v10

    move-object/from16 v29, v11

    move-object/from16 v31, v12

    move v3, v13

    goto/16 :goto_5

    .line 3824
    .restart local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    iput v13, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3825
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3826
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 3827
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_3

    :cond_8
    move v1, v10

    :goto_3
    iget-object v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 3830
    :cond_9
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v2, 0x0

    if-ne v1, v7, :cond_a

    .line 3831
    iput-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3832
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3835
    :cond_a
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne v1, v7, :cond_b

    .line 3836
    iput-object v2, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3837
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3842
    :cond_b
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v1, v1, v15

    if-lez v1, :cond_c

    .line 3845
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, p2, v3

    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3847
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v22, v1, v3

    .line 3848
    .local v22, "delta":J
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v24, v1, v22

    .local v24, "nextElapsed":J
    move-wide/from16 v4, v24

    .line 3858
    iget v1, v0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v7, v1, v2}, Lcom/android/server/OpAlarmManagerInjector;->checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I

    move-result v26

    .local v26, "flag":I
    move/from16 v15, v26

    .line 3859
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v2, v2, v22

    move-object/from16 v17, v11

    .end local v11    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .local v17, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object v14, v7

    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-wide v6, v10

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 3860
    move/from16 v27, v8

    move/from16 v28, v9

    .end local v8    # "N":I
    .end local v9    # "i":I
    .local v27, "N":I
    .local v28, "i":I
    move-wide/from16 v8, p2

    move-object/from16 v29, v17

    const/16 v30, 0x0

    move-wide/from16 v16, v10

    .end local v17    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .local v29, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-wide/from16 v10, v24

    move-object/from16 v31, v12

    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v13, v14

    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v14, v16

    const/16 v16, 0x1

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v14

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v19, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v20, v14

    .line 3859
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v32, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v32, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_4

    .line 3842
    .end local v22    # "delta":J
    .end local v24    # "nextElapsed":J
    .end local v26    # "flag":I
    .end local v27    # "N":I
    .end local v28    # "i":I
    .end local v29    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v32    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "N":I
    .restart local v9    # "i":I
    .restart local v11    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_c
    move-object/from16 v32, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v30, v10

    move-object/from16 v29, v11

    move-object/from16 v31, v12

    .line 3867
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "N":I
    .end local v9    # "i":I
    .end local v11    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v27    # "N":I
    .restart local v28    # "i":I
    .restart local v29    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v32    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_4
    move-object/from16 v0, v32

    .end local v32    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v1, :cond_d

    .line 3868
    const/16 v21, 0x1

    .line 3872
    :cond_d
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_e

    .line 3873
    const/4 v3, 0x1

    move-object/from16 v2, p0

    iput-boolean v3, v2, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_5

    .line 3872
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v2, p0

    .line 3755
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_5
    add-int/lit8 v9, v28, 0x1

    move-object/from16 v14, p1

    move-object v0, v2

    move v13, v3

    move/from16 v8, v27

    move-object/from16 v11, v29

    move/from16 v10, v30

    move-object/from16 v12, v31

    .end local v28    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_1

    .end local v27    # "N":I
    .end local v29    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v8    # "N":I
    .restart local v11    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_f
    move-object v2, v0

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v11

    .line 3876
    .end local v8    # "N":I
    .end local v9    # "i":I
    .end local v11    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v14, p1

    move/from16 v1, v21

    goto/16 :goto_0

    .line 3743
    .end local v21    # "hasWakeup":Z
    .local v1, "hasWakeup":Z
    :cond_10
    move-object v2, v0

    move-object/from16 v31, v12

    move v3, v13

    .line 3880
    :goto_6
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 3881
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3882
    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3895
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_13

    .line 3896
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3897
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 3898
    .local v5, "operation":Landroid/app/PendingIntent;
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    .line 3899
    .local v6, "listenTag":Ljava/lang/String;
    const-string v7, " flags =0x"

    const-string v8, " package ="

    const-string v9, " when ="

    const-string v10, ": "

    const-string v11, "Triggering alarm #"

    if-eqz v5, :cond_11

    .line 3900
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " operation ="

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 3902
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3900
    move-object/from16 v12, v31

    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3903
    :cond_11
    move-object/from16 v12, v31

    if-eqz v6, :cond_12

    .line 3904
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " operation = null listenTag ="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 3905
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3904
    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    .end local v5    # "operation":Landroid/app/PendingIntent;
    .end local v6    # "listenTag":Ljava/lang/String;
    :cond_12
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v31, v12

    goto/16 :goto_7

    .line 3911
    .end local v0    # "i":I
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_13
    return v1
.end method
