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

.field private static final SYSTEM_UI_SELF_PERMISSION:Ljava/lang/String; = "android.permission.systemui.IDENTITY"

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mListenerFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

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

.field mOperationCancelListener:Landroid/app/PendingIntent$CancelListener;

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSendFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

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

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 155
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 156
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 157
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 158
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    .line 160
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_WAKELOCK:Z

    .line 161
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    .line 162
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_STANDBY:Z

    .line 180
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 188
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 1009
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1030
    new-instance v0, Lcom/android/server/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V

    .line 1031
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/AlarmManagerService$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1020
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 196
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 218
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 224
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 232
    new-instance v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 267
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 273
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 290
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "REORDER_ALARMS_FOR_STANDBY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 300
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 302
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 304
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 309
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 756
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 757
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 771
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 772
    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 947
    new-instance v1, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 1010
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1014
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1015
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1016
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1618
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1621
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1622
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1623
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2257
    new-instance v1, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 4796
    new-instance v1, Lcom/android/server/AlarmManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$6;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 4856
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    .line 4858
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    .line 4860
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    .line 4862
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    .line 1021
    iput-object p2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 1025
    invoke-static {p0, p1}, Lcom/android/server/OpAlarmManagerInjector;->initInstance(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V

    .line 1027
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 132
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isIdlingImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700()J
    .locals 2

    .line 132
    invoke-static {}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 132
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

    .line 132
    invoke-static/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;JI)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(JI)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 132
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100(JI)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 132
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(JJ)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 132
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static synthetic access$3208(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    return v0
.end method

.method static synthetic access$3308(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 132
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3508(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3708(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 132
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return p1
.end method

.method static synthetic access$3908(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/AlarmManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/AlarmManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 4
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

    .line 1059
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1060
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 1061
    rsub-int/lit8 v3, v0, 0x0

    add-int/lit8 v0, v3, -0x1

    .line 1063
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1064
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 21
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2036
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2037
    return v3

    .line 2039
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 2040
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    .line 2042
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2043
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2044
    return v4

    .line 2046
    :cond_1
    return v3

    .line 2048
    :cond_2
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2049
    .local v5, "oldWhenElapsed":J
    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2051
    .local v7, "oldMaxWhenElapsed":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 2052
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2053
    .local v9, "sourceUserId":I
    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 2054
    invoke-virtual {v11}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v11

    .line 2053
    invoke-virtual {v10, v2, v9, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v10

    .line 2056
    .local v10, "standbyBucket":I
    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-boolean v11, v11, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS_ENABLED:Z

    if-eqz v11, :cond_7

    .line 2058
    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v11, v2, v9}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v11

    .line 2060
    .local v11, "wakeupsInWindow":I
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v12

    .line 2061
    .local v12, "quotaForBucket":I
    const/4 v13, 0x0

    .line 2062
    .local v13, "deferred":Z
    if-lt v11, v12, :cond_4

    .line 2064
    if-gtz v12, :cond_3

    .line 2066
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    move-wide/from16 v19, v5

    .local v14, "minElapsed":J
    goto :goto_0

    .line 2070
    .end local v14    # "minElapsed":J
    :cond_3
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v14, v2, v9, v12}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v14

    .line 2072
    .local v14, "t":J
    const-wide/16 v16, 0x1

    add-long v16, v14, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-wide/from16 v19, v5

    .end local v5    # "oldWhenElapsed":J
    .local v19, "oldWhenElapsed":J
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long v14, v16, v4

    .line 2074
    .local v14, "minElapsed":J
    :goto_0
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v3, v3, v14

    if-gez v3, :cond_5

    .line 2075
    iput-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v14, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2076
    const/4 v13, 0x1

    goto :goto_1

    .line 2062
    .end local v14    # "minElapsed":J
    .end local v19    # "oldWhenElapsed":J
    .restart local v5    # "oldWhenElapsed":J
    :cond_4
    move-wide/from16 v19, v5

    .line 2079
    .end local v5    # "oldWhenElapsed":J
    .restart local v19    # "oldWhenElapsed":J
    :cond_5
    :goto_1
    if-nez v13, :cond_6

    .line 2081
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2082
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2084
    .end local v11    # "wakeupsInWindow":I
    .end local v12    # "quotaForBucket":I
    .end local v13    # "deferred":Z
    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 2086
    .end local v19    # "oldWhenElapsed":J
    .restart local v5    # "oldWhenElapsed":J
    :cond_7
    move-wide/from16 v19, v5

    .end local v5    # "oldWhenElapsed":J
    .restart local v19    # "oldWhenElapsed":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v9, v4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v5

    .line 2088
    .local v5, "lastElapsed":J
    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-lez v3, :cond_9

    .line 2089
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->getMinDelayForBucketLocked(I)J

    move-result-wide v11

    add-long/2addr v11, v5

    .line 2090
    .local v11, "minElapsed":J
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v3, v13, v11

    if-gez v3, :cond_8

    .line 2091
    iput-wide v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v11, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_2

    .line 2095
    :cond_8
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2096
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2100
    .end local v5    # "lastElapsed":J
    .end local v11    # "minElapsed":J
    :cond_9
    :goto_2
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v19, v5

    if-nez v3, :cond_b

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    const/16 v18, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    move/from16 v18, v4

    :goto_4
    return v18
.end method

.method static clampPositive(J)J
    .locals 2
    .param p0, "val"    # J

    .line 1250
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

    .line 1034
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1035
    .local v0, "isRtc":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1036
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p1, v1

    .line 1038
    :cond_2
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "decrement"    # I

    .line 5166
    const/4 v0, 0x0

    .line 5167
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 5168
    .local v1, "uidIndex":I
    if-ltz v1, :cond_1

    .line 5169
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5170
    if-le v0, p2, :cond_0

    .line 5171
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v0, p2

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5173
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5176
    :cond_1
    :goto_0
    if-ge v0, p2, :cond_2

    .line 5177
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

    .line 5180
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

    .line 1335
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1336
    .local v10, "N":I
    const/4 v1, 0x0

    .line 1337
    .local v1, "hasWakeup":Z
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 1338
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1339
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v2, :cond_0

    .line 1340
    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_1

    .line 1339
    :cond_0
    move/from16 v21, v1

    .line 1342
    .end local v1    # "hasWakeup":Z
    .local v21, "hasWakeup":Z
    :goto_1
    const/4 v1, 0x1

    iput v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1345
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1346
    iget v1, v0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v8, v1, v2}, Lcom/android/server/OpAlarmManagerInjector;->checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I

    move-result v22

    .local v22, "flag":I
    move/from16 v15, v22

    .line 1347
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, v12, v3

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1349
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v23, v1, v3

    .line 1350
    .local v23, "delta":J
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v25, v1, v23

    .local v25, "nextElapsed":J
    move-wide/from16 v4, v25

    .line 1360
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v2, v2, v23

    iget-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v12, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1361
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

    .line 1360
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v29, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v29, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_2

    .line 1345
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

    .line 1337
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

    .line 1368
    .end local v10    # "N":I
    .end local v11    # "i":I
    .restart local v27    # "N":I
    if-nez v1, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1370
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1371
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1372
    nop

    .line 1373
    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1375
    :cond_3
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1376
    iget v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_4

    .line 1368
    :cond_4
    move-object/from16 v5, p1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v2, p2

    .line 1378
    :goto_3
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v4, :cond_6

    .line 1379
    const-string v4, "AlarmManager"

    const-string v6, "Waking up to deliver pending blocked alarms"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_6
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1383
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1384
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1385
    .local v6, "thisDelayTime":J
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1386
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_7

    .line 1387
    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1389
    :cond_7
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1391
    .end local v6    # "thisDelayTime":J
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1392
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1393
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1395
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

    .line 3649
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

    .line 3650
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3651
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v13

    .line 3652
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3653
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3654
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

    .line 3649
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "label":Ljava/lang/String;
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_0
    move-object v11, p1

    .line 3656
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

    .line 3629
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

    .line 3630
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3631
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v13, p3

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3632
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3633
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

    .line 3629
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_0
    move-object v11, p1

    move-object/from16 v13, p3

    .line 3635
    .end local v10    # "i":I
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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

    .line 1313
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1314
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1315
    .local v1, "uid":I
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1317
    .local v2, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "alarmIndex":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1318
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1320
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1321
    goto :goto_2

    .line 1324
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1317
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1328
    .end local v3    # "alarmIndex":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1329
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1313
    .end local v1    # "uid":I
    .end local v2    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1332
    .end local v0    # "uidIndex":I
    :cond_3
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .line 3094
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3095
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3096
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3097
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3098
    return-object v2

    .line 3095
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3101
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

    .line 3248
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EHm"

    goto :goto_0

    :cond_0
    const-string v0, "Ehma"

    .line 3249
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3250
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 3251
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3250
    :goto_1
    return-object v2
.end method

.method static fuzzForDuration(J)I
    .locals 2
    .param p0, "duration"    # J

    .line 4092
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 4095
    long-to-int v0, p0

    return v0

    .line 4096
    :cond_0
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 4098
    const v0, 0xdbba0

    return v0

    .line 4101
    :cond_1
    const v0, 0x1b7740

    return v0
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 1
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4444
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4445
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    return v0

    .line 4448
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

    .line 1097
    .local p0, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v0, 0x0

    .line 1099
    .local v0, "ret":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1100
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1101
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1103
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

    .line 4838
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4839
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_0

    .line 4840
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 4841
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4843
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4844
    .local v1, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_1

    .line 4845
    new-instance v2, Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 4846
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4848
    :cond_1
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 4832
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 4833
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 4834
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private getWhileIdleMinIntervalLocked(I)J
    .locals 4
    .param p1, "uid"    # I

    .line 3690
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3691
    .local v0, "dozing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v3, :cond_1

    .line 3692
    invoke-virtual {v3}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3693
    .local v1, "ebs":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 3694
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3696
    :cond_2
    if-eqz v0, :cond_3

    .line 3697
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2

    .line 3699
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3702
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3704
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2
.end method

.method private incrementAlarmCount(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 5157
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 5158
    .local v0, "uidIndex":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 5159
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5161
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5163
    :goto_0
    return-void
.end method

.method private static native init()J
.end method

.method private insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1068
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1069
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v0

    :goto_0
    nop

    .line 1071
    .local v0, "whichBatch":I
    if-gez v0, :cond_1

    .line 1072
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_1

    .line 1074
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1075
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1078
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1079
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1082
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    :goto_1
    return-void
.end method

.method private isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3659
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3660
    .local v0, "exemptOnBatterySaver":Z
    :goto_0
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_1

    .line 3662
    return v2

    .line 3664
    :cond_1
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    .line 3665
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3667
    return v2

    .line 3669
    :cond_2
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3671
    const/4 v0, 0x1

    .line 3674
    :cond_3
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3675
    .local v3, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3676
    .local v4, "sourceUid":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v5, :cond_4

    .line 3677
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 3676
    :goto_1
    return v1
.end method

.method private isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4150
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

    .line 3115
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3116
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

    .line 3117
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

    .line 3638
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 3644
    const-string v0, "--unknown--"

    return-object v0

    .line 3641
    :cond_0
    const-string v0, "ELAPSED"

    return-object v0

    .line 3642
    :cond_1
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 3639
    :cond_2
    const-string v0, "RTC"

    return-object v0

    .line 3640
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

.method static synthetic lambda$removeForStoppedLocked$4(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3473
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

    .line 3475
    const/4 v0, 0x1

    return v0

    .line 3477
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 3478
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$removeLocked$1(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p2, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3293
    invoke-virtual {p2, p0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeLocked$2(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3349
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeUserLocked$5(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 1
    .param p0, "userHandle"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3521
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

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 18
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 3058
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3059
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3060
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 3061
    .local v11, "nowRTC":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v13

    .line 3062
    .local v13, "nowELAPSED":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3063
    .local v15, "NZ":I
    const/4 v3, 0x0

    move v10, v3

    .local v10, "iz":I
    :goto_0
    if-ge v10, v15, :cond_0

    .line 3064
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    .line 3065
    .local v8, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v3, "Batch "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3066
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

    .line 3067
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 3068
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 3063
    .end local v16    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    add-int/lit8 v10, v17, 0x1

    .end local v17    # "iz":I
    .restart local v10    # "iz":I
    goto :goto_0

    .line 3071
    .end local v10    # "iz":I
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .line 1048
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 1049
    sub-long v0, p2, p0

    goto :goto_0

    .line 1050
    :cond_0
    move-wide v0, p4

    :goto_0
    nop

    .line 1051
    .local v0, "futurity":J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1052
    const-wide/16 v0, 0x0

    .line 1054
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

    .line 1524
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1525
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1526
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1528
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1517
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1518
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1519
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1521
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .line 3217
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3218
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3220
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3221
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3222
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3223
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3224
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3222
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3226
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3227
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3229
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3230
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3231
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3232
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3233
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3235
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v6

    .line 3233
    const-string/jumbo v7, "next_alarm_formatted"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3230
    .end local v3    # "userId":I
    .end local v4    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3241
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 3227
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

    move-object/from16 v2, p12

    move/from16 v15, p19

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move v1, v15

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v18, p15

    move-object/from16 v17, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    .line 1955
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1959
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v3, p20

    :try_start_1
    invoke-interface {v0, v1, v3}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
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
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1962
    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v4, 0x8

    move-object/from16 v5, p12

    :try_start_3
    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1963
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1964
    return-void

    .line 1966
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    .line 1967
    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v5, p12

    goto :goto_1

    .line 1966
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    :goto_0
    move-object/from16 v5, p12

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v5, p12

    move-object/from16 v3, p20

    .line 1972
    :goto_1
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/android/server/OpAlarmManagerInjector;->ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 1977
    :cond_1
    new-array v0, v0, [I

    const/16 v4, 0x61

    const/4 v6, 0x0

    aput v4, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    sget-object v23, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v22, v2

    invoke-static/range {v22 .. v27}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    .line 1983
    :cond_2
    move-object/from16 v4, p13

    invoke-virtual {v1, v5, v4}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1984
    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v1, v0}, Lcom/android/server/AlarmManagerService;->incrementAlarmCount(I)V

    .line 1985
    move/from16 v7, p16

    invoke-direct {v1, v2, v6, v7}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1986
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 10
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .line 2104
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 2109
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2114
    .local v0, "nowElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v2

    .line 2115
    .local v2, "fuzz":I
    if-lez v2, :cond_3

    .line 2116
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v3, :cond_1

    .line 2117
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 2119
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2120
    .local v3, "delta":I
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2128
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_0

    .line 2131
    .end local v0    # "nowElapsed":J
    .end local v2    # "fuzz":I
    .end local v3    # "delta":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_3

    .line 2144
    invoke-static {p1}, Lcom/android/server/OpAlarmManagerInjector;->ifNeedPending(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2146
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2147
    return-void

    .line 2131
    :cond_3
    :goto_0
    nop

    .line 2152
    :cond_4
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2153
    sget-object v5, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_SETALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    .line 2169
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 2170
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2172
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_6

    .line 2173
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2176
    :cond_6
    const/4 v0, 0x0

    .line 2178
    .local v0, "needRebatch":Z
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x10

    const-string v2, "AlarmManager"

    if-eqz v1, :cond_8

    .line 2188
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v1, p1, :cond_7

    if-eqz v1, :cond_7

    .line 2189
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

    .line 2193
    :cond_7
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2194
    const/4 v0, 0x1

    goto :goto_1

    .line 2195
    :cond_8
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 2196
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_9

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_a

    .line 2197
    :cond_9
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2201
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_a

    .line 2202
    const/4 v0, 0x1

    .line 2207
    :cond_a
    :goto_1
    if-nez p2, :cond_d

    .line 2208
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v1, :cond_b

    .line 2209
    if-eqz p3, :cond_b

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2210
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

    .line 2211
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

    .line 2215
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2210
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2217
    const/4 v0, 0x0

    .line 2221
    :cond_b
    if-eqz v0, :cond_c

    .line 2222
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2225
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2226
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2228
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

    .line 3616
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3617
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_0

    .line 3619
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3620
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3622
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3623
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3625
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 13

    .line 3130
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_0

    .line 3131
    return-void

    .line 3133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3135
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3136
    .local v0, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3138
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3139
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 3140
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 3141
    .local v3, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3143
    .local v4, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 3144
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3145
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_3

    .line 3146
    iget v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3147
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3149
    .local v8, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    sget-boolean v9, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v9, :cond_1

    .line 3150
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found AlarmClockInfo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3151
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

    .line 3150
    const-string v10, "AlarmManager"

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    :cond_1
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 3157
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 3158
    :cond_2
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3159
    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v9

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_3

    .line 3161
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3143
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "userId":I
    .end local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3139
    .end local v3    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v4    # "M":I
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3168
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3169
    .local v2, "NN":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_7

    .line 3170
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3171
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3172
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3173
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3174
    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3169
    .end local v4    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5    # "userId":I
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3179
    .end local v3    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3180
    .local v3, "NNN":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_9

    .line 3181
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3182
    .restart local v5    # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    .line 3183
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3180
    .end local v5    # "userId":I
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 3186
    .end local v4    # "i":I
    :cond_9
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3190
    const-string v0, "Next AlarmClockInfoForUser("

    const-string v1, "AlarmManager"

    if-eqz p2, :cond_1

    .line 3191
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v2, :cond_0

    .line 3192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3193
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3192
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3197
    :cond_1
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v2, :cond_2

    .line 3198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): None"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3203
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3204
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3205
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3206
    return-void
.end method

.method private validateConsistencyLocked()Z
    .locals 7

    .line 3074
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v0, :cond_1

    .line 3075
    const-wide/high16 v0, -0x8000000000000000L

    .line 3076
    .local v0, "lastTime":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3077
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3078
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3079
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v5, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v5, v5, v0

    if-ltz v5, :cond_0

    .line 3081
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 3077
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3083
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

    .line 3084
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3085
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->logBatchesLocked(Ljava/text/SimpleDateFormat;)V

    .line 3086
    const/4 v6, 0x0

    return v6

    .line 3090
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

    .line 1086
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1087
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1088
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1089
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1090
    return v1

    .line 1087
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
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

    .line 970
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 971
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 972
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 975
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_0

    .line 976
    const/4 v3, 0x0

    .local v3, "alarmPrio":I
    goto :goto_1

    .line 977
    .end local v3    # "alarmPrio":I
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v3, :cond_1

    .line 978
    const/4 v3, 0x1

    .restart local v3    # "alarmPrio":I
    goto :goto_1

    .line 980
    .end local v3    # "alarmPrio":I
    :cond_1
    const/4 v3, 0x2

    .line 983
    .restart local v3    # "alarmPrio":I
    :goto_1
    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 984
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 985
    .local v5, "alarmPackage":Ljava/lang/String;
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 986
    :cond_2
    if-nez v4, :cond_3

    .line 987
    new-instance v6, Lcom/android/server/AlarmManagerService$PriorityClass;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    move-object v4, v6

    .line 988
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_3
    iput-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 992
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_4

    .line 994
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 995
    iput v7, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_2

    .line 1000
    :cond_4
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_5

    .line 1001
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 971
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    .end local v5    # "alarmPackage":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 6
    .param p1, "nowELAPSED"    # J

    .line 4106
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4107
    return v1

    .line 4109
    :cond_0
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 4110
    return v1

    .line 4112
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    .line 4116
    return v1

    .line 4118
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4119
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

    .line 4078
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 4079
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4081
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 4082
    :cond_0
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 4084
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 4087
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

    .line 4123
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-string v0, "AlarmManager"

    iput-wide p2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 4124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 4125
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4126
    .local v2, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 4127
    .local v3, "allowWhileIdle":Z
    :goto_1
    iget-boolean v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    const-wide/32 v6, 0x20000

    if-eqz v5, :cond_1

    .line 4128
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

    .line 4130
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

    .line 4133
    :goto_2
    :try_start_0
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_2

    .line 4134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sending alarm "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    :cond_2
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v5, v8, v9, v10}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4140
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v5, v2, p2, p3, v3}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4143
    goto :goto_3

    .line 4141
    :catch_0
    move-exception v5

    .line 4142
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v8, "Failure sending alarm."

    invoke-static {v0, v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4144
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 4145
    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4124
    .end local v2    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3    # "allowWhileIdle":Z
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4147
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 32
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2425
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    iget-object v11, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2426
    :try_start_0
    const-string v2, "Current Alarm Manager state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2428
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2430
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v2, :cond_0

    .line 2431
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2432
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2435
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

    .line 2436
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2438
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    move-wide v12, v2

    .line 2439
    .local v12, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v14, v2

    .line 2440
    .local v14, "nowUPTIME":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    move-wide v7, v2

    .line 2441
    .local v7, "nowRTC":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 2443
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "  nowRTC="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2444
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    const-string v2, " nowELAPSED="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 2446
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2447
    const-string v2, "  mLastTimeChangeClockTime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2448
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    const-string v2, "  mLastTimeChangeRealtime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2450
    const-string v2, "  mLastTickReceived="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2451
    const-string v2, "  mLastTickSet="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2452
    const-string v2, "  mLastTickAdded="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2453
    const-string v2, "  mLastTickRemoved="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2456
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2457
    const-string v2, "  Recent TIME_TICK history:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2458
    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    .line 2460
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 2461
    if-gez v2, :cond_1

    const/16 v2, 0x9

    .line 2462
    :cond_1
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    aget-wide v3, v3, v2

    .line 2463
    .local v3, "time":J
    const-string v5, "    "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2464
    const-wide/16 v5, 0x0

    cmp-long v16, v3, v5

    if-lez v16, :cond_2

    .line 2465
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

    .line 2466
    .end local v20    # "time":J
    .restart local v3    # "time":J
    :cond_2
    move-wide/from16 v20, v3

    .end local v3    # "time":J
    .restart local v20    # "time":J
    const-string v3, "-"

    .line 2464
    :goto_1
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2467
    .end local v20    # "time":J
    iget v3, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    if-ne v2, v3, :cond_30

    .line 2470
    .end local v2    # "i":I
    const-class v2, Lcom/android/server/SystemServiceManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemServiceManager;

    move-object/from16 v18, v2

    .line 2471
    .local v18, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v18, :cond_4

    .line 2472
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2473
    const-string v2, "  RuntimeStarted="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2474
    new-instance v2, Ljava/util/Date;

    sub-long v3, v7, v12

    .line 2475
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2474
    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2477
    const-string v2, "  (Runtime restarted)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2480
    const-string v2, "  Runtime uptime (elapsed): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2481
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2482
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2483
    const-string v2, "  Runtime uptime (uptime): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2484
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2485
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2488
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2489
    iget-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_5

    .line 2490
    const-string v2, "  Time since non-interactive: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2491
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2492
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2494
    :cond_5
    const-string v2, "  Max wakeup delay: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {v1, v12, v13}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2496
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2497
    const-string v2, "  Time since last dispatch: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2499
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2500
    const-string v2, "  Next non-wakeup delivery time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2501
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2502
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2504
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v4, v7, v12

    add-long v5, v2, v4

    .line 2505
    .local v5, "nextWakeupRTC":J
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v19, v7, v12

    add-long v3, v2, v19

    .line 2506
    .local v3, "nextNonWakeupRTC":J
    const-string v2, "  Next non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    move-wide/from16 v19, v14

    .end local v14    # "nowUPTIME":J
    .local v19, "nowUPTIME":J
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2508
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2509
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2511
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2512
    const-string v2, "  Next wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2513
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2514
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2516
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2518
    const-string v2, "  Next kernel non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2520
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2521
    const-string v2, "  Next kernel wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2522
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2523
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2525
    const-string v2, "  Last wakeup: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2526
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2527
    const-string v2, "  Last trigger: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2528
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2529
    const-string v2, "  Num time change events: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2531
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2532
    const-string v2, "  Next alarm clock information: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    move-object v14, v2

    .line 2534
    .local v14, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    move v2, v15

    .restart local v2    # "i":I
    :goto_2
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v2, v15, :cond_6

    .line 2535
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2534
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x0

    goto :goto_2

    .line 2537
    .end local v2    # "i":I
    :cond_6
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_3
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_7

    .line 2538
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2537
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2540
    .end local v15    # "i":I
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

    .line 2541
    .local v15, "user":I
    move-object/from16 v22, v2

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2542
    .local v2, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v23

    goto :goto_5

    :cond_8
    const-wide/16 v23, 0x0

    :goto_5
    move-wide/from16 v25, v23

    .line 2543
    .local v25, "time":J
    move-object/from16 v23, v2

    .end local v2    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v23, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 2544
    .local v2, "pendingSend":Z
    move-wide/from16 v27, v3

    .end local v3    # "nextNonWakeupRTC":J
    .local v27, "nextNonWakeupRTC":J
    const-string v3, "    user:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 2545
    const-string v3, " pendingSend:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2546
    const-string v3, " time:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v25

    .end local v25    # "time":J
    .local v3, "time":J
    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2547
    const-wide/16 v16, 0x0

    cmp-long v24, v3, v16

    if-lez v24, :cond_9

    .line 2548
    move/from16 v24, v2

    .end local v2    # "pendingSend":Z
    .local v24, "pendingSend":Z
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2549
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4, v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_6

    .line 2547
    .end local v24    # "pendingSend":Z
    .restart local v2    # "pendingSend":Z
    :cond_9
    move/from16 v24, v2

    .line 2551
    .end local v2    # "pendingSend":Z
    .restart local v24    # "pendingSend":Z
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2552
    .end local v3    # "time":J
    .end local v15    # "user":I
    .end local v23    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v24    # "pendingSend":Z
    move-object/from16 v2, v22

    move-wide/from16 v3, v27

    goto :goto_4

    .line 2553
    .end local v27    # "nextNonWakeupRTC":J
    .local v3, "nextNonWakeupRTC":J
    :cond_a
    move-wide/from16 v27, v3

    const-wide/16 v16, 0x0

    .end local v3    # "nextNonWakeupRTC":J
    .restart local v27    # "nextNonWakeupRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 2554
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2555
    const-string v2, "  Pending alarm batches: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2556
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2557
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

    .line 2558
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 2559
    iget-object v3, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v22, "    "

    move-object/from16 v2, p1

    move-wide/from16 v23, v27

    .end local v27    # "nextNonWakeupRTC":J
    .local v23, "nextNonWakeupRTC":J
    move-object/from16 v25, v4

    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .local v25, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v4, v22

    move-object/from16 v22, v14

    move-object/from16 v26, v15

    move-wide/from16 v14, v16

    move-wide/from16 v16, v5

    .end local v5    # "nextWakeupRTC":J
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v16, "nextWakeupRTC":J
    .local v22, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    move-wide v5, v12

    move-wide/from16 v27, v7

    .end local v7    # "nowRTC":J
    .local v27, "nowRTC":J
    move-object/from16 v29, v9

    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .local v29, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2560
    .end local v25    # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide/from16 v5, v16

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    move-wide/from16 v16, v14

    move-object/from16 v14, v22

    move-wide/from16 v27, v23

    move-object/from16 v15, v26

    goto :goto_7

    .line 2557
    .end local v16    # "nextWakeupRTC":J
    .end local v22    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v23    # "nextNonWakeupRTC":J
    .end local v29    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "nextWakeupRTC":J
    .restart local v7    # "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v27, "nextNonWakeupRTC":J
    :cond_b
    move-object/from16 v29, v9

    move-object/from16 v22, v14

    move-wide/from16 v14, v16

    move-wide/from16 v23, v27

    move-wide/from16 v16, v5

    move-wide/from16 v27, v7

    .end local v5    # "nextWakeupRTC":J
    .end local v7    # "nowRTC":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16    # "nextWakeupRTC":J
    .restart local v22    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v23    # "nextNonWakeupRTC":J
    .local v27, "nowRTC":J
    .restart local v29    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_8

    .line 2553
    .end local v16    # "nextWakeupRTC":J
    .end local v22    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v23    # "nextNonWakeupRTC":J
    .end local v29    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "nextWakeupRTC":J
    .restart local v7    # "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v27, "nextNonWakeupRTC":J
    :cond_c
    move-object/from16 v29, v9

    move-object/from16 v22, v14

    move-wide/from16 v14, v16

    move-wide/from16 v23, v27

    move-wide/from16 v16, v5

    move-wide/from16 v27, v7

    .line 2562
    .end local v5    # "nextWakeupRTC":J
    .end local v7    # "nowRTC":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16    # "nextWakeupRTC":J
    .restart local v22    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v23    # "nextNonWakeupRTC":J
    .local v27, "nowRTC":J
    .restart local v29    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2563
    const-string v2, "  Pending user blocked background alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2564
    const/4 v2, 0x0

    .line 2565
    .local v2, "blocked":Z
    const/4 v3, 0x0

    move v4, v3

    move/from16 v25, v2

    move v9, v4

    .end local v2    # "blocked":Z
    .local v9, "i":I
    .local v25, "blocked":Z
    :goto_9
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_e

    .line 2566
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v26, v2

    .line 2567
    .local v26, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v26, :cond_d

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 2568
    const/16 v25, 0x1

    .line 2569
    const-string v4, "    "

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    move-wide v5, v12

    move-wide/from16 v7, v27

    move/from16 v30, v9

    .end local v9    # "i":I
    .local v30, "i":I
    move-object/from16 v9, v29

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_a

    .line 2567
    .end local v30    # "i":I
    .restart local v9    # "i":I
    :cond_d
    move/from16 v30, v9

    .line 2565
    .end local v9    # "i":I
    .end local v26    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v30    # "i":I
    :goto_a
    add-int/lit8 v9, v30, 0x1

    .end local v30    # "i":I
    .restart local v9    # "i":I
    goto :goto_9

    :cond_e
    move/from16 v30, v9

    .line 2572
    .end local v9    # "i":I
    if-nez v25, :cond_f

    .line 2573
    const-string v2, "    none"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2576
    const-string v2, "  Pending alarms per uid: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2577
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_b
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_11

    .line 2578
    if-lez v3, :cond_10

    .line 2579
    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2581
    :cond_10
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v10, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2582
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2583
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2577
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2585
    .end local v3    # "i":I
    :cond_11
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2588
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3, v12, v13}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 2590
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 2591
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2592
    const-string v2, "    Idle mode state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2593
    const-string v2, "      Idling until: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2594
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_13

    .line 2595
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2596
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "        "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_c

    .line 2598
    :cond_13
    const-string/jumbo v2, "null"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    :goto_c
    const-string v2, "      Pending alarms:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v4, "      "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2603
    :cond_14
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_15

    .line 2604
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2605
    const-string v2, "  Next wake from idle: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2606
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "    "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2609
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2610
    const-string v2, "  Past-due non-wakeup alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2611
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 2612
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2613
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v27

    move-object/from16 v9, v29

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_d

    .line 2615
    :cond_16
    const-string v2, "(none)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    :goto_d
    const-string v2, "    Number of delayed alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2618
    const-string v2, ", total delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2619
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2620
    const-string v2, "    Max delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2621
    const-string v2, ", max non-interactive time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2622
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2623
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2625
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2626
    const-string v2, "  Broadcast ref count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2627
    const-string v2, "  PendingIntent send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2628
    const-string v2, "  PendingIntent finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2629
    const-string v2, "  Listener send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2630
    const-string v2, "  Listener finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2631
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2633
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    .line 2634
    const-string v2, "Outstanding deliveries:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    const/4 v2, 0x0

    move v3, v2

    .restart local v3    # "i":I
    :goto_e
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_17

    .line 2636
    const-string v2, "   #"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2637
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2635
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2639
    .end local v3    # "i":I
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2642
    :cond_18
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 2643
    const-string v2, "  Last allow while idle dispatch times:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    const/4 v2, 0x0

    move v3, v2

    .restart local v3    # "i":I
    :goto_f
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    .line 2645
    const-string v2, "    UID "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2646
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 2647
    .local v2, "uid":I
    invoke-static {v10, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2648
    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2649
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 2650
    .local v4, "lastTime":J
    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2652
    invoke-direct {v1, v2}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    .line 2653
    .local v6, "minInterval":J
    const-string v8, "  Next allowed:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2654
    add-long v8, v4, v6

    invoke-static {v8, v9, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2655
    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2656
    invoke-static {v6, v7, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2657
    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2659
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2644
    .end local v2    # "uid":I
    .end local v4    # "lastTime":J
    .end local v6    # "minInterval":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2663
    .end local v3    # "i":I
    :cond_19
    const-string v2, "  mUseAllowWhileIdleShortTime: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2664
    const/4 v2, 0x0

    move v3, v2

    .restart local v3    # "i":I
    :goto_10
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_1b

    .line 2665
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2666
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v10, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2667
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2664
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2670
    .end local v3    # "i":I
    :cond_1b
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2671
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2673
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "  Recent problems"

    const-string v4, "    "

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2674
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2677
    :cond_1c
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2678
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2689
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2691
    .local v4, "len":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "iu":I
    :goto_11
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v6, v5, :cond_24

    .line 2692
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 2693
    .local v5, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    move v8, v7

    .local v8, "ip":I
    :goto_12
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v8, v7, :cond_23

    .line 2694
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2695
    .local v7, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v9, 0x0

    move/from16 v26, v9

    move v9, v4

    move/from16 v4, v26

    .local v4, "is":I
    .local v9, "len":I
    :goto_13
    iget-object v14, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v4, v14, :cond_22

    .line 2696
    iget-object v14, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2697
    .local v14, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v9, :cond_1d

    .line 2698
    const/4 v15, 0x0

    invoke-static {v2, v15, v9, v14, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v26

    goto :goto_14

    :cond_1d
    const/16 v26, 0x0

    :goto_14
    move/from16 v15, v26

    .line 2699
    .local v15, "pos":I
    if-gez v15, :cond_1e

    .line 2700
    move-object/from16 v26, v5

    .end local v5    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .local v26, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    neg-int v5, v15

    add-int/lit8 v15, v5, -0x1

    goto :goto_15

    .line 2699
    .end local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v5    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_1e
    move-object/from16 v26, v5

    .line 2702
    .end local v5    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :goto_15
    array-length v5, v2

    if-ge v15, v5, :cond_20

    .line 2703
    array-length v5, v2

    sub-int/2addr v5, v15

    add-int/lit8 v5, v5, -0x1

    .line 2704
    .local v5, "copylen":I
    if-lez v5, :cond_1f

    .line 2705
    move-object/from16 v31, v7

    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v31, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    add-int/lit8 v7, v15, 0x1

    invoke-static {v2, v15, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_16

    .line 2704
    .end local v31    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_1f
    move-object/from16 v31, v7

    .line 2707
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v31    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :goto_16
    aput-object v14, v2, v15

    .line 2708
    array-length v7, v2

    if-ge v9, v7, :cond_21

    .line 2709
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 2702
    .end local v5    # "copylen":I
    .end local v31    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_20
    move-object/from16 v31, v7

    .line 2695
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15    # "pos":I
    .restart local v31    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_21
    :goto_17
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v26

    move-object/from16 v7, v31

    const-wide/16 v14, 0x0

    goto :goto_13

    .end local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v31    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v5, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_22
    move-object/from16 v26, v5

    move-object/from16 v31, v7

    .line 2693
    .end local v4    # "is":I
    .end local v5    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    const-wide/16 v14, 0x0

    goto :goto_12

    .end local v9    # "len":I
    .end local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .local v4, "len":I
    .restart local v5    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_23
    move-object/from16 v26, v5

    .line 2691
    .end local v5    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "ip":I
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v14, 0x0

    goto/16 :goto_11

    .line 2715
    .end local v6    # "iu":I
    :cond_24
    if-lez v4, :cond_26

    .line 2716
    const-string v5, "  Top Alarms:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2717
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v4, :cond_26

    .line 2718
    aget-object v6, v2, v5

    .line 2719
    .local v6, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v7, "    "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2720
    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v7, :cond_25

    const-string v7, "*ACTIVE* "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    :cond_25
    iget-wide v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2722
    const-string v7, " running, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2723
    const-string v7, " wakeups, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2724
    const-string v7, " alarms: "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2725
    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2726
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2727
    const-string v7, "      "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2728
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2717
    .end local v6    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 2732
    .end local v5    # "i":I
    :cond_26
    const-string v5, " "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2733
    const-string v5, "  Alarm Stats:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2734
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2735
    .local v5, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v6, 0x0

    move v7, v6

    .local v7, "iu":I
    :goto_19
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v7, v6, :cond_2c

    .line 2736
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2737
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v8, 0x0

    move v9, v8

    .local v9, "ip":I
    :goto_1a
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v9, v8, :cond_2b

    .line 2738
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2739
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2740
    iget v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v14, :cond_27

    const-string v14, "*ACTIVE* "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2741
    :cond_27
    iget v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2742
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2743
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2744
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2745
    const-string v14, " running, "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 2746
    const-string v14, " wakeups:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2748
    const/4 v14, 0x0

    move v15, v14

    .local v15, "is":I
    :goto_1b
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v15, v14, :cond_28

    .line 2749
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2748
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    .line 2751
    .end local v15    # "is":I
    :cond_28
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2752
    const/4 v14, 0x0

    move v15, v14

    .local v15, "i":I
    :goto_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v15, v14, :cond_2a

    .line 2753
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2754
    .restart local v14    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v26, v2

    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v26, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v2, "    "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2755
    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v2, :cond_29

    const-string v2, "*ACTIVE* "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2756
    :cond_29
    move-object/from16 v31, v3

    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v31, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    iget-wide v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2757
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2758
    const-string v2, " wakes "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2759
    const-string v2, " alarms, last "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2760
    iget-wide v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2761
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    const-string v2, "      "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2763
    iget-object v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2764
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2752
    .end local v14    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v26

    move-object/from16 v3, v31

    const/4 v14, 0x0

    goto :goto_1c

    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v31    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_2a
    move-object/from16 v26, v2

    move-object/from16 v31, v3

    .line 2737
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v15    # "i":I
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v31    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1a

    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v31    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_2b
    move-object/from16 v26, v2

    move-object/from16 v31, v3

    .line 2735
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v9    # "ip":I
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v31    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19

    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v31    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_2c
    move-object/from16 v26, v2

    move-object/from16 v31, v3

    .line 2768
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7    # "iu":I
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v31    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2769
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2797
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v2, :cond_2f

    .line 2798
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2799
    const-string v2, "  Recent Wakeup History:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    const-wide/16 v2, -0x1

    .line 2801
    .local v2, "last":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 2802
    .local v7, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    const-string v8, "    "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v9, v29

    .end local v29    # "sdf":Ljava/text/SimpleDateFormat;
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2803
    const/16 v8, 0x7c

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 2804
    const-wide/16 v14, 0x0

    cmp-long v21, v2, v14

    if-gez v21, :cond_2d

    .line 2805
    const/16 v14, 0x30

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1e

    .line 2807
    :cond_2d
    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    sub-long/2addr v14, v2

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2809
    :goto_1e
    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    move-wide v2, v14

    .line 2810
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    iget v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 2811
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    iget-object v8, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2812
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2813
    .end local v7    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    move-object/from16 v29, v9

    goto :goto_1d

    .line 2814
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v29    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2e
    move-object/from16 v9, v29

    .end local v29    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1f

    .line 2797
    .end local v2    # "last":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v29    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2f
    move-object/from16 v9, v29

    .line 2816
    .end local v4    # "len":I
    .end local v5    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v12    # "nowELAPSED":J
    .end local v16    # "nextWakeupRTC":J
    .end local v18    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v19    # "nowUPTIME":J
    .end local v22    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v23    # "nextNonWakeupRTC":J
    .end local v25    # "blocked":Z
    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "nowRTC":J
    .end local v29    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v31    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :goto_1f
    monitor-exit v11

    .line 2817
    return-void

    .line 2467
    .local v2, "i":I
    .local v7, "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v12    # "nowELAPSED":J
    .local v14, "nowUPTIME":J
    :cond_30
    move-wide/from16 v27, v7

    move-wide/from16 v19, v14

    .end local v7    # "nowRTC":J
    .end local v14    # "nowUPTIME":J
    .restart local v19    # "nowUPTIME":J
    .restart local v27    # "nowRTC":J
    goto/16 :goto_0

    .line 2816
    .end local v2    # "i":I
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "nowELAPSED":J
    .end local v19    # "nowUPTIME":J
    .end local v27    # "nowRTC":J
    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .locals 27
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 2820
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 2822
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v12, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2823
    :try_start_0
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    move-wide v13, v3

    .line 2824
    .local v13, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    move-wide v9, v3

    .line 2825
    .local v9, "nowElapsed":J
    const-wide v3, 0x10300000001L

    invoke-virtual {v11, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2826
    const-wide v7, 0x10300000002L

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2827
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2829
    const-wide v3, 0x10300000004L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2832
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2834
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2839
    :cond_0
    const-wide v3, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2840
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_1

    .line 2842
    const-wide v3, 0x10300000008L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2844
    const-wide v3, 0x10300000009L

    .line 2845
    invoke-virtual {v1, v9, v10}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    .line 2844
    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2846
    const-wide v3, 0x1030000000aL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2848
    const-wide v3, 0x1030000000bL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2852
    :cond_1
    const-wide v3, 0x1030000000cL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2854
    const-wide v3, 0x1030000000dL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2856
    const-wide v3, 0x1030000000eL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2858
    const-wide v3, 0x1030000000fL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2860
    const-wide v3, 0x10300000010L

    iget v0, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2862
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2863
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v7, v3

    .line 2864
    .local v7, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 2865
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2864
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2867
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 2868
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v8, v3

    .line 2869
    .local v8, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v8, :cond_3

    .line 2870
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2869
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2872
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

    .line 2873
    .local v4, "user":I
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2874
    .local v15, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v21

    goto :goto_3

    :cond_4
    const-wide/16 v21, 0x0

    :goto_3
    move-wide/from16 v23, v21

    .line 2875
    .local v23, "time":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 2876
    .local v5, "pendingSend":Z
    move-object v6, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2877
    .local v2, "aToken":J
    move-object/from16 v25, v6

    move/from16 v16, v7

    const-wide v6, 0x10500000001L

    .end local v7    # "nextAlarmClockForUserSize":I
    .local v16, "nextAlarmClockForUserSize":I
    invoke-virtual {v11, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2878
    const-wide v6, 0x10800000002L

    invoke-virtual {v11, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2879
    move-wide/from16 v17, v13

    move-wide/from16 v6, v23

    const-wide v13, 0x10300000003L

    .end local v13    # "nowRTC":J
    .end local v23    # "time":J
    .local v6, "time":J
    .local v17, "nowRTC":J
    invoke-virtual {v11, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2880
    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2881
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

    .line 2882
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

    .line 2883
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

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Batch;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2885
    .end local v3    # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide v6, v13

    move/from16 v8, v16

    move-wide/from16 v9, v19

    const-wide v13, 0x10300000003L

    move/from16 v16, v15

    goto :goto_4

    .line 2886
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

    move v3, v2

    move v9, v3

    .local v9, "i":I
    :goto_5
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_9

    .line 2887
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v21, v3

    .line 2888
    .local v21, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v21, :cond_8

    .line 2889
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2890
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000014L

    move-object v4, v11

    move-wide/from16 v7, v19

    move/from16 v23, v9

    .end local v9    # "i":I
    .local v23, "i":I
    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2893
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    move/from16 v9, v23

    goto :goto_6

    .line 2889
    .end local v23    # "i":I
    .restart local v9    # "i":I
    :cond_7
    move/from16 v23, v9

    .end local v9    # "i":I
    .restart local v23    # "i":I
    goto :goto_7

    .line 2888
    .end local v23    # "i":I
    .restart local v9    # "i":I
    :cond_8
    move/from16 v23, v9

    .line 2886
    .end local v9    # "i":I
    .end local v21    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v23    # "i":I
    :goto_7
    add-int/lit8 v9, v23, 0x1

    .end local v23    # "i":I
    .restart local v9    # "i":I
    goto :goto_5

    :cond_9
    move/from16 v23, v9

    .line 2896
    .end local v9    # "i":I
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_a

    .line 2897
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000015L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2900
    :cond_a
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2901
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000016L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2903
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_8

    .line 2904
    :cond_b
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_c

    .line 2905
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000017L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2909
    :cond_c
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2910
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000018L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2912
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_9

    .line 2914
    :cond_d
    const-wide v3, 0x10500000019L

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2915
    const-wide v3, 0x1030000001aL

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2916
    const-wide v3, 0x1030000001bL

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2917
    const-wide v3, 0x1030000001cL

    iget-wide v5, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2920
    const-wide v3, 0x1050000001dL

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2921
    const-wide v3, 0x1050000001eL

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2922
    const-wide v3, 0x1050000001fL

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2923
    const-wide v3, 0x10500000020L

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2924
    const-wide v3, 0x10500000021L

    iget v5, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2926
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2927
    .local v4, "f":Lcom/android/server/AlarmManagerService$InFlight;
    const-wide v5, 0x20b00000022L

    invoke-virtual {v4, v11, v5, v6}, Lcom/android/server/AlarmManagerService$InFlight;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2928
    .end local v4    # "f":Lcom/android/server/AlarmManagerService$InFlight;
    goto :goto_a

    .line 2930
    :cond_e
    move v3, v2

    .local v3, "i":I
    :goto_b
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 2931
    const-wide v4, 0x20b00000024L

    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2933
    .local v4, "token":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    .line 2934
    .local v6, "uid":I
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    .line 2936
    .local v7, "lastTime":J
    invoke-virtual {v11, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2937
    const-wide v9, 0x10300000002L

    invoke-virtual {v11, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2938
    nop

    .line 2939
    invoke-direct {v1, v6}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v21

    add-long v9, v7, v21

    .line 2938
    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2940
    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2930
    .end local v4    # "token":J
    .end local v6    # "uid":I
    .end local v7    # "lastTime":J
    add-int/lit8 v3, v3, 0x1

    const-wide v13, 0x10500000001L

    goto :goto_b

    :cond_f
    const-wide v13, 0x10300000003L

    .line 2943
    .end local v3    # "i":I
    move v3, v2

    .restart local v3    # "i":I
    :goto_c
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 2944
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2945
    const-wide v4, 0x20500000023L

    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 2946
    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 2945
    invoke-virtual {v11, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2943
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2950
    .end local v3    # "i":I
    :cond_11
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v4, 0x10b00000025L

    invoke-virtual {v3, v11, v4, v5}, Lcom/android/internal/util/LocalLog;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2952
    const/16 v3, 0xa

    new-array v3, v3, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2953
    .local v3, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v4, Lcom/android/server/AlarmManagerService$5;

    invoke-direct {v4, v1}, Lcom/android/server/AlarmManagerService$5;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2964
    .local v4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v5, 0x0

    .line 2966
    .local v5, "len":I
    move v6, v2

    .local v6, "iu":I
    :goto_d
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_19

    .line 2967
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 2968
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    move v8, v2

    .local v8, "ip":I
    :goto_e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_18

    .line 2969
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2970
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move v10, v2

    .local v10, "is":I
    :goto_f
    iget-object v13, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v10, v13, :cond_17

    .line 2971
    iget-object v13, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2972
    .local v13, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v5, :cond_12

    .line 2973
    invoke-static {v3, v2, v5, v13, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v14

    goto :goto_10

    :cond_12
    move v14, v2

    .line 2974
    .local v14, "pos":I
    :goto_10
    if-gez v14, :cond_13

    .line 2975
    neg-int v2, v14

    add-int/lit8 v14, v2, -0x1

    .line 2977
    :cond_13
    array-length v2, v3

    if-ge v14, v2, :cond_15

    .line 2978
    array-length v2, v3

    sub-int/2addr v2, v14

    add-int/lit8 v2, v2, -0x1

    .line 2979
    .local v2, "copylen":I
    if-lez v2, :cond_14

    .line 2980
    move-object/from16 v24, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v24, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v0, v14, 0x1

    invoke-static {v3, v14, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    .line 2979
    .end local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v24, v0

    .line 2982
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :goto_11
    aput-object v13, v3, v14

    .line 2983
    array-length v0, v3

    if-ge v5, v0, :cond_16

    .line 2984
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2977
    .end local v2    # "copylen":I
    .end local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_15
    move-object/from16 v24, v0

    .line 2970
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14    # "pos":I
    .restart local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_16
    :goto_12
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v24

    const/4 v2, 0x0

    const-wide v13, 0x10300000003L

    goto :goto_f

    .end local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_17
    move-object/from16 v24, v0

    .line 2968
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v10    # "is":I
    .restart local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const-wide v13, 0x10300000003L

    goto :goto_e

    .end local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_18
    move-object/from16 v24, v0

    .line 2966
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "ip":I
    .restart local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    const-wide v13, 0x10300000003L

    goto :goto_d

    .end local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_19
    move-object/from16 v24, v0

    .line 2990
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "iu":I
    .restart local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    const-wide v6, 0x10900000002L

    if-ge v0, v5, :cond_1a

    .line 2991
    const-wide v8, 0x20b00000026L

    invoke-virtual {v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2992
    .local v8, "token":J
    aget-object v2, v3, v0

    .line 2994
    .local v2, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v10, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v11, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2995
    iget-object v10, v2, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2997
    const-wide v6, 0x10b00000003L

    invoke-virtual {v2, v11, v6, v7}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2999
    invoke-virtual {v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2990
    .end local v2    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v8    # "token":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 3002
    .end local v0    # "i":I
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3003
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v2, 0x0

    move v8, v2

    .local v8, "iu":I
    :goto_14
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v8, v2, :cond_1e

    .line 3004
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 3005
    .local v2, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v9, 0x0

    move v10, v9

    .local v10, "ip":I
    :goto_15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v10, v9, :cond_1d

    .line 3006
    const-wide v13, 0x20b00000027L

    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 3008
    .local v13, "token":J
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3009
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-wide v6, 0x10b00000001L

    invoke-virtual {v9, v11, v6, v7}, Lcom/android/server/AlarmManagerService$BroadcastStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3012
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3013
    const/4 v6, 0x0

    move v7, v6

    .local v7, "is":I
    :goto_16
    iget-object v6, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v7, v6, :cond_1b

    .line 3014
    iget-object v6, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3013
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_16

    .line 3016
    .end local v7    # "is":I
    :cond_1b
    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3017
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3018
    .local v7, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .end local v2    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v3    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v25, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v26, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const-wide v2, 0x20b00000002L

    invoke-virtual {v7, v11, v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3019
    .end local v7    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v3, v25

    move-object/from16 v2, v26

    goto :goto_17

    .line 3021
    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v2    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v3    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1c
    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .end local v2    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v3    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3005
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "token":J
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v25

    move-object/from16 v2, v26

    const-wide v6, 0x10900000002L

    goto :goto_15

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v26    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v2    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v3    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1d
    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 3003
    .end local v2    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v3    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10    # "ip":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v8, v8, 0x1

    const-wide v6, 0x10900000002L

    goto/16 :goto_14

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1e
    move-object/from16 v25, v3

    .line 3043
    .end local v3    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v8    # "iu":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v2, :cond_1f

    .line 3044
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 3045
    .local v3, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    const-wide v6, 0x20b00000029L

    invoke-virtual {v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 3046
    .local v6, "token":J
    iget v8, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    const-wide v9, 0x10500000001L

    invoke-virtual {v11, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3047
    iget-object v8, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    const-wide v13, 0x10900000002L

    invoke-virtual {v11, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3048
    iget-wide v9, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3049
    invoke-virtual {v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3050
    .end local v3    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v6    # "token":J
    goto :goto_18

    .line 3052
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v4    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v5    # "len":I
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v16    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v17    # "nowRTC":J
    .end local v19    # "nowElapsed":J
    .end local v24    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1f
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3054
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3055
    return-void

    .line 3052
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

    .line 1775
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1778
    nop

    .line 1779
    return-void

    .line 1777
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getMinDelayForBucketLocked(I)J
    .locals 3
    .param p1, "bucket"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2021
    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    .local v0, "index":I
    goto :goto_0

    .line 2022
    .end local v0    # "index":I
    :cond_0
    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    const/4 v0, 0x3

    .restart local v0    # "index":I
    goto :goto_0

    .line 2023
    .end local v0    # "index":I
    :cond_1
    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_0

    .line 2024
    .end local v0    # "index":I
    :cond_2
    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 2025
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x0

    .line 2027
    .restart local v0    # "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 3121
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 3123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .line 3105
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3108
    :try_start_0
    invoke-static {}, Lcom/android/server/OpAlarmManagerInjector;->dumpNextWakeFromIdleInfo()V

    .line 3110
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

    .line 3111
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1995
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 1996
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_0

    .line 1997
    .end local v0    # "index":I
    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 1998
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 1999
    .end local v0    # "index":I
    :cond_1
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_2

    .line 2000
    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_0

    .line 2001
    .end local v0    # "index":I
    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    .line 2002
    const/4 v0, 0x3

    .restart local v0    # "index":I
    goto :goto_0

    .line 2004
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x4

    .line 2006
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

    .line 1107
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1108
    return v1

    .line 1110
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1111
    .local v0, "batchSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1112
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_1

    .line 1113
    const/4 v1, 0x1

    return v1

    .line 1111
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1116
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

    .line 1120
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1121
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1122
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1123
    const/4 v2, 0x1

    return v2

    .line 1121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1126
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 6
    .param p1, "interactive"    # Z

    .line 3565
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_5

    .line 3566
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 3567
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3568
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_4

    .line 3569
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3570
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 3571
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 3572
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 3573
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 3575
    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 3576
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3578
    .end local v2    # "thisDelayTime":J
    :cond_1
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 3579
    sub-long v2, v0, v2

    .line 3580
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 3581
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 3586
    .end local v2    # "dur":J
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x61

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3587
    invoke-static {v0, v1}, Lcom/android/server/OpAlarmAlignmentInjector;->updateInteractiveStartTime(J)V

    .line 3591
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/-$$Lambda$AlarmManagerService$ekOL-W-d04N5tL87W3U8JwL7IzE;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$ekOL-W-d04N5tL87W3U8JwL7IzE;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3594
    :cond_4
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 3597
    .end local v0    # "nowELAPSED":J
    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic lambda$interactiveStateChangedLocked$6$AlarmManagerService()V
    .locals 3

    .line 3592
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$onStart$0$AlarmManagerService(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 1631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    return-void
.end method

.method public synthetic lambda$removeLocked$3$AlarmManagerService(Ljava/lang/String;Landroid/util/MutableBoolean;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "removedNextWakeFromIdle"    # Landroid/util/MutableBoolean;
    .param p3, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3409
    invoke-virtual {p3, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 3410
    .local v0, "didMatch":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne p3, v1, :cond_0

    .line 3411
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/util/MutableBoolean;->value:Z

    .line 3413
    :cond_0
    return v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 3601
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 3602
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3603
    return v2

    .line 3600
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3606
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3607
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3608
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3609
    return v2

    .line 3606
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3612
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 1747
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1749
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1751
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1752
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 1753
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1754
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1755
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/android/server/AlarmManagerService$AppStandbyTracker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1757
    const-class v1, Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1758
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 1760
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1761
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1762
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1766
    :cond_0
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x61

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/android/server/OpAlarmAlignmentInjector;->initAlarmAlignment(II)V

    .line 1770
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 7

    .line 1627
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->init()V

    .line 1629
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1630
    :try_start_0
    new-instance v1, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 1631
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$6biANsIZPXvOci6ybplaG3NF_Yk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$6biANsIZPXvOci6ybplaG3NF_Yk;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mOperationCancelListener:Landroid/app/PendingIntent$CancelListener;

    .line 1632
    new-instance v1, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 1633
    new-instance v1, Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v2, 0x6ddd00

    invoke-direct {v1, v2, v3}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    .line 1635
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1639
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1656
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getSystemUiUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 1657
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    if-gtz v1, :cond_0

    .line 1658
    const-string v1, "AlarmManager"

    const-string v2, "SysUI package not found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1662
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1667
    new-instance v1, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1698
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x4000000

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1704
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2, p0}, Lcom/android/server/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 1705
    new-instance v2, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1706
    new-instance v2, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1708
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1709
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1710
    .local v2, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1711
    .end local v2    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    goto :goto_0

    .line 1712
    :cond_1
    const-string v2, "AlarmManager"

    const-string v3, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x61

    aput v3, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1718
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/OpAlarmAlignmentInjector;->updateInteractiveStartTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
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

    .line 1728
    goto :goto_1

    .line 1726
    :catch_0
    move-exception v3

    .line 1729
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1730
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1731
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    const-string v1, "alarm"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1735
    new-instance v0, Lcom/android/server/AlarmManagerService$AmsInner;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AmsInner;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1736
    .local v0, "mAmsInner":Lcom/android/server/AlarmManagerService$AmsInner;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OpAlarmAlignmentInjector;->initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V

    .line 1741
    invoke-static {v0}, Lcom/android/server/OpAlarmManagerInjector;->onStart(Lcom/android/server/AlarmManagerService$AmsInner;)V

    .line 1743
    return-void

    .line 1729
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

    .line 1225
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x61

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    sget-object v3, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->DOZE_READDALARMLOCKED:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    goto :goto_0

    .line 1228
    :cond_0
    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1231
    :goto_0
    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v1

    .line 1233
    .local v1, "whenElapsed":J
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1235
    move-wide v3, v1

    .local v3, "maxElapsed":J
    goto :goto_2

    .line 1240
    .end local v3    # "maxElapsed":J
    :cond_1
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1241
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v3

    goto :goto_1

    .line 1242
    :cond_2
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v4, p2

    move-wide v6, v1

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v3

    :goto_1
    nop

    .line 1244
    .restart local v3    # "maxElapsed":J
    :goto_2
    iput-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 1245
    iput-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 1246
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1247
    return-void
.end method

.method rebatchAllAlarms()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1132
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1133
    monitor-exit v0

    .line 1134
    return-void

    .line 1133
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

    .line 1137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    .line 1138
    .local v1, "start":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1139
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1140
    .local v3, "oldCount":I
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1141
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

    .line 1143
    .local v4, "oldHasTick":Z
    :goto_1
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1144
    .local v7, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1145
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1146
    .local v8, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v9

    .line 1147
    .local v9, "nowElapsed":J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1148
    .local v11, "oldBatches":I
    const/4 v12, 0x0

    .local v12, "batchNum":I
    :goto_2
    if-ge v12, v11, :cond_3

    .line 1149
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 1150
    .local v13, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v14

    .line 1151
    .local v14, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v14, :cond_2

    .line 1152
    invoke-virtual {v13, v15}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v6

    move/from16 v5, p1

    invoke-virtual {v0, v6, v9, v10, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1151
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    move/from16 v5, p1

    .line 1148
    .end local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14    # "N":I
    .end local v15    # "i":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move/from16 v5, p1

    .line 1155
    .end local v12    # "batchNum":I
    const-string v6, " to "

    const-string v12, "AlarmManager"

    if-eqz v8, :cond_4

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v8, v13, :cond_4

    .line 1156
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

    .line 1158
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v13, :cond_4

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 1163
    :cond_4
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1164
    invoke-static {v13}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v14

    add-int/2addr v13, v14

    .line 1165
    .local v13, "newCount":I
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1166
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

    .line 1168
    .local v14, "newHasTick":Z
    if-eq v3, v13, :cond_7

    .line 1169
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

    .line 1171
    :cond_7
    if-eq v4, v14, :cond_8

    .line 1172
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

    .line 1175
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1176
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1177
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1178
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

    .line 4062
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4063
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "nextBatch":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4064
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 4065
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v3, v3, p2

    if-lez v3, :cond_0

    .line 4066
    goto :goto_2

    .line 4069
    :cond_0
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4070
    .local v3, "numAlarms":I
    const/4 v4, 0x0

    .local v4, "nextAlarm":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 4071
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4072
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4070
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4063
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "numAlarms":I
    .end local v4    # "nextAlarm":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4075
    .end local v1    # "nextBatch":I
    :cond_2
    :goto_2
    return-void
.end method

.method removeForStoppedLocked(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 3466
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 3468
    return-void

    .line 3470
    :cond_0
    const/4 v0, 0x0

    .line 3471
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$d1Nr3qXE-1WItEvvEEG1KMB46xw;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$d1Nr3qXE-1WItEvvEEG1KMB46xw;-><init>(I)V

    .line 3480
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3481
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3482
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3483
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3484
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3480
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3487
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 3488
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3489
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_3

    .line 3491
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3492
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3487
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3495
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 3496
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 3497
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3498
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_5

    .line 3499
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3501
    :cond_5
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3495
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3504
    .end local v2    # "i":I
    :cond_7
    if-eqz v0, :cond_9

    .line 3505
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_8

    .line 3506
    const-string v2, "AlarmManager"

    const-string/jumbo v4, "remove(package) changed bounds; rebatching"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3509
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3510
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3512
    :cond_9
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 1846
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1847
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1848
    monitor-exit v0

    .line 1849
    return-void

    .line 1848
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

    .line 3344
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 3346
    return-void

    .line 3348
    :cond_0
    const/4 v0, 0x0

    .line 3349
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$B3QlP-iufJjUxYk_gYP8zaqzjvc;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$B3QlP-iufJjUxYk_gYP8zaqzjvc;-><init>(I)V

    .line 3350
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3351
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3352
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3353
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3354
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3350
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3357
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 3358
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3359
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_3

    .line 3361
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3362
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3357
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3365
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_8

    .line 3366
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3367
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_6

    .line 3368
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v6, p1, :cond_5

    .line 3369
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3370
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3367
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 3373
    .end local v5    # "j":I
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 3374
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3365
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3379
    .end local v2    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_9

    .line 3380
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3382
    :cond_9
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v5, "AlarmManager"

    if-eqz v2, :cond_a

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_a

    .line 3384
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

    .line 3385
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3387
    :cond_a
    if-eqz v0, :cond_c

    .line 3388
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_b

    .line 3389
    const-string/jumbo v2, "remove(uid) changed bounds; rebatching"

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_b
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3392
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3393
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3395
    :cond_c
    return-void
.end method

.method removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 9
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    .line 3284
    const-string v0, "AlarmManager"

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 3285
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_0

    .line 3286
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "requested remove() of null operation"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3289
    :cond_0
    return-void

    .line 3292
    :cond_1
    const/4 v1, 0x0

    .line 3293
    .local v1, "didRemove":Z
    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$PL9HLH-MH3N2JfJ2qjsXOF25AR4;

    .local v2, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v2, p1, p2}, Lcom/android/server/-$$Lambda$AlarmManagerService$PL9HLH-MH3N2JfJ2qjsXOF25AR4;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3294
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 3295
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3296
    .local v5, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3297
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 3298
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3294
    .end local v5    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3301
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 3302
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3303
    .local v5, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3305
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3306
    iget v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3301
    .end local v5    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3309
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 3310
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3311
    .local v5, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "j":I
    :goto_3
    if-ltz v6, :cond_7

    .line 3312
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3313
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v7, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3315
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3316
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v8, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3311
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 3319
    .end local v6    # "j":I
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_8

    .line 3320
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3309
    .end local v5    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 3323
    .end local v3    # "i":I
    :cond_9
    if-eqz v1, :cond_e

    .line 3324
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_a

    .line 3325
    const-string/jumbo v3, "remove(operation) changed bounds; rebatching"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_a
    const/4 v0, 0x0

    .line 3328
    .local v0, "restorePending":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3329
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3330
    const/4 v0, 0x1

    .line 3332
    :cond_b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_c

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3333
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3335
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3336
    if-eqz v0, :cond_d

    .line 3337
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3339
    :cond_d
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3341
    .end local v0    # "restorePending":Z
    :cond_e
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3398
    const-string v0, "AlarmManager"

    if-nez p1, :cond_1

    .line 3399
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_0

    .line 3400
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "requested remove() of null packageName"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3403
    :cond_0
    return-void

    .line 3406
    :cond_1
    const/4 v1, 0x0

    .line 3407
    .local v1, "didRemove":Z
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 3408
    .local v2, "removedNextWakeFromIdle":Landroid/util/MutableBoolean;
    new-instance v4, Lcom/android/server/-$$Lambda$AlarmManagerService$iI87lOgeHXMagii4XiFcLdtBJ6Y;

    .local v4, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/-$$Lambda$AlarmManagerService$iI87lOgeHXMagii4XiFcLdtBJ6Y;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;Landroid/util/MutableBoolean;)V

    .line 3415
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v5

    .line 3416
    .local v5, "oldHasTick":Z
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 3417
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    .line 3418
    .local v8, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v8, v4, v3}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v9

    or-int/2addr v1, v9

    .line 3419
    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 3420
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3416
    .end local v8    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 3423
    .end local v6    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v3

    .line 3424
    .local v3, "newHasTick":Z
    if-eq v5, v3, :cond_4

    .line 3425
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

    .line 3428
    :cond_4
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    .restart local v6    # "i":I
    :goto_1
    if-ltz v6, :cond_6

    .line 3429
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3430
    .local v8, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v8, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3432
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3433
    iget v9, v8, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v9, v7}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3428
    .end local v8    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3436
    .end local v6    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v7

    .restart local v6    # "i":I
    :goto_2
    if-ltz v6, :cond_a

    .line 3437
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 3438
    .local v8, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "j":I
    :goto_3
    if-ltz v9, :cond_8

    .line 3439
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3440
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v10, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3441
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3442
    iget v11, v10, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v11, v7}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3438
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 3445
    .end local v9    # "j":I
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 3446
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3436
    .end local v8    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3451
    .end local v6    # "i":I
    :cond_a
    iget-boolean v6, v2, Landroid/util/MutableBoolean;->value:Z

    if-eqz v6, :cond_b

    .line 3452
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3454
    :cond_b
    if-eqz v1, :cond_d

    .line 3455
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v6, :cond_c

    .line 3456
    const-string/jumbo v6, "remove(package) changed bounds; rebatching"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3459
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3460
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3462
    :cond_d
    return-void
.end method

.method removeUserLocked(I)V
    .locals 7
    .param p1, "userHandle"    # I

    .line 3515
    if-nez p1, :cond_0

    .line 3517
    return-void

    .line 3519
    :cond_0
    const/4 v0, 0x0

    .line 3520
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$AyzIPVIMvB7gtaOddkJLWSr87BU;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$AyzIPVIMvB7gtaOddkJLWSr87BU;-><init>(I)V

    .line 3522
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3523
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3524
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3525
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 3526
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3522
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3529
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 3530
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 3533
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3534
    .local v4, "removed":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3529
    .end local v4    # "removed":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3537
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 3538
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 3539
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3540
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_5

    .line 3541
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3542
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3541
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3545
    .end local v5    # "j":I
    :cond_5
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3537
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3548
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_4
    if-ltz v2, :cond_9

    .line 3549
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_8

    .line 3550
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 3548
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 3554
    .end local v2    # "i":I
    :cond_9
    if-eqz v0, :cond_b

    .line 3555
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_a

    .line 3556
    const-string v2, "AlarmManager"

    const-string/jumbo v4, "remove(user) changed bounds; rebatching"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3559
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3560
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3562
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

    .line 1188
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 1189
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v2, "rescheduledAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "batchIndex":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1192
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 1193
    .local v5, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "alarmIndex":I
    :goto_1
    if-ltz v6, :cond_2

    .line 1194
    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 1195
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 1196
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1197
    .local v8, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1198
    goto :goto_2

    .line 1200
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1201
    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1202
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1205
    .end local v6    # "alarmIndex":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 1206
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1191
    .end local v5    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1209
    .end local v3    # "batchIndex":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1210
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1211
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1209
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1214
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1215
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

    .line 3257
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3258
    .local v0, "nowElapsed":J
    const-wide/16 v2, 0x0

    .line 3259
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3260
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v4

    .line 3261
    .local v4, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3262
    .local v5, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v4, :cond_0

    .line 3263
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 3264
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3265
    const/4 v6, 0x2

    iget-wide v7, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3267
    :cond_0
    if-eq v5, v4, :cond_1

    .line 3268
    iget-wide v2, v5, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 3271
    .end local v4    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v5    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_3

    .line 3272
    cmp-long v4, v2, v5

    if-eqz v4, :cond_2

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v7, v2

    if-gez v4, :cond_3

    .line 3273
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3276
    :cond_3
    cmp-long v4, v2, v5

    if-eqz v4, :cond_4

    .line 3277
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 3278
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3279
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3281
    :cond_4
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 6

    .line 1420
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/OpAlarmManagerInjector;->alleviateFirePendingLocked(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1424
    .local v0, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1425
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    .line 1426
    .local v1, "nowElapsed":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1427
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1428
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1426
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1435
    .end local v0    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v1    # "nowElapsed":J
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1436
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1438
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .locals 3

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1306
    :cond_0
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1261
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1262
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1266
    :cond_0
    const-string v1, "Sending blocked alarms for uid "

    const-string v2, "AlarmManager"

    if-eqz p2, :cond_4

    .line 1267
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v3, :cond_1

    .line 1268
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

    .line 1270
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1272
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1273
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1274
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1277
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 1278
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 1281
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_4
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v3, :cond_5

    .line 1282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_5
    move-object v1, v0

    .line 1285
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1287
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1288
    return-void

    .line 1263
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

    .line 1856
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v13, p8

    move/from16 v11, p14

    if-nez v13, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    if-eqz v13, :cond_2

    if-eqz p9, :cond_2

    .line 1858
    :cond_1
    const-string v6, "AlarmManager"

    const-string v7, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return-void

    .line 1866
    :cond_2
    const-wide/32 v6, 0x2932e00

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 1867
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AlarmManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const-wide/32 v2, 0x36ee80

    move-wide/from16 v16, v2

    .end local p4    # "windowLength":J
    .local v2, "windowLength":J
    goto :goto_0

    .line 1866
    .end local v2    # "windowLength":J
    .restart local p4    # "windowLength":J
    :cond_3
    move-wide/from16 v16, v2

    .line 1875
    .end local p4    # "windowLength":J
    .local v16, "windowLength":J
    :goto_0
    iget-object v2, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v9, v2, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 1876
    .local v9, "minInterval":J
    const-wide/16 v18, 0x0

    cmp-long v2, v4, v18

    if-lez v2, :cond_4

    cmp-long v2, v4, v9

    if-gez v2, :cond_4

    .line 1877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspiciously short interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " millis; expanding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v9, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    move-wide v2, v9

    move-wide v7, v2

    .end local p6    # "interval":J
    .local v2, "interval":J
    goto :goto_1

    .line 1881
    .end local v2    # "interval":J
    .restart local p6    # "interval":J
    :cond_4
    iget-object v2, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_5

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspiciously long interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " millis; clamping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v2, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide v7, v2

    .end local p6    # "interval":J
    .restart local v2    # "interval":J
    goto :goto_1

    .line 1881
    .end local v2    # "interval":J
    .restart local p6    # "interval":J
    :cond_5
    move-wide v7, v4

    .line 1887
    .end local p6    # "interval":J
    .local v7, "interval":J
    :goto_1
    if-ltz v14, :cond_d

    const/4 v2, 0x3

    if-gt v14, v2, :cond_d

    .line 1891
    cmp-long v2, v0, v18

    if-gez v2, :cond_6

    .line 1892
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    int-to-long v2, v2

    .line 1893
    .local v2, "what":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid alarm trigger time! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " from uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AlarmManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const-wide/16 v0, 0x0

    move-wide v5, v0

    .end local p2    # "triggerAtTime":J
    .local v0, "triggerAtTime":J
    goto :goto_2

    .line 1891
    .end local v0    # "triggerAtTime":J
    .end local v2    # "what":J
    .restart local p2    # "triggerAtTime":J
    :cond_6
    move-wide v5, v0

    .line 1898
    .end local p2    # "triggerAtTime":J
    .local v5, "triggerAtTime":J
    :goto_2
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v22

    .line 1899
    .local v22, "nowElapsed":J
    invoke-direct {v15, v5, v6, v14}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v24

    .line 1908
    .local v24, "nominalTrigger":J
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

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

    .line 1909
    .local v32, "pairs":[J
    const/4 v0, 0x0

    aget-wide v33, v32, v0

    .line 1910
    .local v33, "minTrigger":J
    const/4 v1, 0x1

    aget-wide v11, v32, v1

    .line 1913
    .end local v26    # "triggerAtTime":J
    .local v11, "triggerAtTime":J
    cmp-long v1, v24, v33

    if-lez v1, :cond_7

    move-wide/from16 v1, v24

    goto :goto_3

    :cond_7
    move-wide/from16 v1, v33

    :goto_3
    move-wide v9, v1

    .line 1916
    .local v9, "triggerElapsed":J
    cmp-long v1, v16, v18

    if-nez v1, :cond_8

    .line 1917
    move-wide v1, v9

    move-wide v5, v1

    move-wide/from16 v7, v16

    .local v1, "maxElapsed":J
    goto :goto_4

    .line 1918
    .end local v1    # "maxElapsed":J
    :cond_8
    cmp-long v1, v16, v18

    if-gez v1, :cond_9

    .line 1919
    move-wide/from16 p2, v22

    move-wide/from16 p4, v9

    move-wide/from16 p6, v28

    invoke-static/range {p2 .. p7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v1

    .line 1921
    .restart local v1    # "maxElapsed":J
    sub-long v3, v1, v9

    move-wide v5, v1

    move-wide v7, v3

    .end local v16    # "windowLength":J
    .local v3, "windowLength":J
    goto :goto_4

    .line 1923
    .end local v1    # "maxElapsed":J
    .end local v3    # "windowLength":J
    .restart local v16    # "windowLength":J
    :cond_9
    add-long v1, v9, v16

    move-wide v5, v1

    move-wide/from16 v7, v16

    .line 1925
    .end local v16    # "windowLength":J
    .local v5, "maxElapsed":J
    .local v7, "windowLength":J
    :goto_4
    if-eqz v13, :cond_a

    .line 1926
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mOperationCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v13, v1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 1928
    :cond_a
    iget-object v3, v15, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1929
    :try_start_0
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v1, :cond_b

    .line 1930
    :try_start_1
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

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " tElapsed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " maxElapsed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " interval="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v13, v28

    .end local v28    # "interval":J
    .local v13, "interval":J
    :try_start_2
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1930
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1948
    :catchall_0
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v27, v5

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v13

    move-object v2, v15

    move-object/from16 v5, p8

    move-object/from16 v3, p15

    goto/16 :goto_6

    .end local v13    # "interval":J
    .restart local v28    # "interval":J
    :catchall_1
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-object v2, v15

    move-wide/from16 v41, v28

    move-object/from16 v3, p15

    move-wide/from16 v27, v5

    move-object/from16 v5, p8

    .end local v28    # "interval":J
    .restart local v13    # "interval":J
    goto/16 :goto_6

    .line 1929
    .end local v13    # "interval":J
    .restart local v28    # "interval":J
    :cond_b
    move-wide/from16 v13, v28

    .line 1935
    .end local v28    # "interval":J
    .restart local v13    # "interval":J
    :goto_5
    :try_start_3
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    move/from16 v4, p14

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-ge v0, v1, :cond_c

    .line 1945
    const/16 v17, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v26, v3

    move-wide v3, v11

    move-wide/from16 v27, v5

    .end local v5    # "maxElapsed":J
    .local v27, "maxElapsed":J
    move-wide v5, v9

    move-wide/from16 v35, v7

    .end local v7    # "windowLength":J
    .local v35, "windowLength":J
    move-wide/from16 v37, v9

    .end local v9    # "triggerElapsed":J
    .local v37, "triggerElapsed":J
    move-wide/from16 v9, v27

    move-wide/from16 v39, v11

    .end local v11    # "triggerAtTime":J
    .local v39, "triggerAtTime":J
    move-wide v11, v13

    move-wide/from16 v41, v13

    move-object/from16 v14, p8

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

    :try_start_4
    invoke-direct/range {v1 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1948
    monitor-exit v26

    .line 1949
    return-void

    .line 1948
    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v5, p8

    move-object/from16 v3, p15

    goto/16 :goto_6

    .line 1936
    .end local v27    # "maxElapsed":J
    .end local v35    # "windowLength":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
    .restart local v5    # "maxElapsed":J
    .restart local v7    # "windowLength":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v13    # "interval":J
    :cond_c
    move-object/from16 v26, v3

    move-wide/from16 v27, v5

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v13

    .end local v5    # "maxElapsed":J
    .end local v7    # "windowLength":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v13    # "interval":J
    .restart local v27    # "maxElapsed":J
    .restart local v35    # "windowLength":J
    .restart local v37    # "triggerElapsed":J
    .restart local v39    # "triggerAtTime":J
    .restart local v41    # "interval":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum limit of concurrent alarms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v2, p0

    :try_start_5
    iget-object v1, v2, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reached for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v3, p15

    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1940
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, v2, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v4, 0x8

    move-object/from16 v5, p8

    :try_start_7
    invoke-virtual {v1, v4, v5}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1941
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1942
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v22    # "nowElapsed":J
    .end local v24    # "nominalTrigger":J
    .end local v27    # "maxElapsed":J
    .end local v30    # "minInterval":J
    .end local v32    # "pairs":[J
    .end local v33    # "minTrigger":J
    .end local v35    # "windowLength":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
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

    .line 1948
    .end local v0    # "errorMsg":Ljava/lang/String;
    .restart local v22    # "nowElapsed":J
    .restart local v24    # "nominalTrigger":J
    .restart local v27    # "maxElapsed":J
    .restart local v30    # "minInterval":J
    .restart local v32    # "pairs":[J
    .restart local v33    # "minTrigger":J
    .restart local v35    # "windowLength":J
    .restart local v37    # "triggerElapsed":J
    .restart local v39    # "triggerAtTime":J
    .restart local v41    # "interval":J
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
    :catchall_3
    move-exception v0

    move-object/from16 v5, p8

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v5, p8

    move-object/from16 v3, p15

    goto :goto_6

    .end local v27    # "maxElapsed":J
    .end local v35    # "windowLength":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
    .restart local v5    # "maxElapsed":J
    .restart local v7    # "windowLength":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v13    # "interval":J
    :catchall_5
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v27, v5

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v13

    move-object v2, v15

    move-object/from16 v5, p8

    move-object/from16 v3, p15

    .end local v5    # "maxElapsed":J
    .end local v7    # "windowLength":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v13    # "interval":J
    .restart local v27    # "maxElapsed":J
    .restart local v35    # "windowLength":J
    .restart local v37    # "triggerElapsed":J
    .restart local v39    # "triggerAtTime":J
    .restart local v41    # "interval":J
    goto :goto_6

    .end local v27    # "maxElapsed":J
    .end local v35    # "windowLength":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
    .restart local v5    # "maxElapsed":J
    .restart local v7    # "windowLength":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v28    # "interval":J
    :catchall_6
    move-exception v0

    move-object/from16 v26, v3

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-object v2, v15

    move-wide/from16 v41, v28

    move-object/from16 v3, p15

    move-wide/from16 v27, v5

    move-object v5, v13

    .end local v5    # "maxElapsed":J
    .end local v7    # "windowLength":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v28    # "interval":J
    .restart local v27    # "maxElapsed":J
    .restart local v35    # "windowLength":J
    .restart local v37    # "triggerElapsed":J
    .restart local v39    # "triggerAtTime":J
    .restart local v41    # "interval":J
    :goto_6
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_6

    .line 1887
    .end local v22    # "nowElapsed":J
    .end local v24    # "nominalTrigger":J
    .end local v27    # "maxElapsed":J
    .end local v30    # "minInterval":J
    .end local v32    # "pairs":[J
    .end local v33    # "minTrigger":J
    .end local v35    # "windowLength":J
    .end local v37    # "triggerElapsed":J
    .end local v39    # "triggerAtTime":J
    .end local v41    # "interval":J
    .local v7, "interval":J
    .local v9, "minInterval":J
    .restart local v16    # "windowLength":J
    .restart local p2    # "triggerAtTime":J
    :cond_d
    move-object/from16 v3, p15

    move-wide/from16 v41, v7

    move-wide/from16 v30, v9

    move-object v5, v13

    move-object v2, v15

    .line 1888
    .end local v7    # "interval":J
    .end local v9    # "minInterval":J
    .restart local v30    # "minInterval":J
    .restart local v41    # "interval":J
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid alarm type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method setTimeImpl(J)Z
    .locals 8
    .param p1, "millis"    # J

    .line 1782
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1783
    const-string v0, "AlarmManager"

    const-string v1, "Not setting time since no alarm driver is available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    const/4 v0, 0x0

    return v0

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1788
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1789
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1790
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1791
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 1792
    .local v4, "currentTzOffset":I
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 1793
    .local v5, "newTzOffset":I
    if-eq v4, v5, :cond_1

    .line 1794
    const-string v6, "AlarmManager"

    const-string v7, "Timezone offset has changed, updating kernel timezone"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v7, 0xea60

    div-int v7, v5, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1800
    :cond_1
    const/4 v6, 0x1

    monitor-exit v0

    return v6

    .line 1801
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

    .line 1805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    return-void

    .line 1809
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1812
    .local v0, "zone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 1813
    .local v1, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1814
    :try_start_0
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1815
    .local v2, "current":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1816
    :cond_1
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_2

    .line 1817
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

    .line 1819
    :cond_2
    const/4 v1, 0x1

    .line 1820
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1826
    .local v3, "gmtOffset":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v5, 0xea60

    div-int v5, v3, v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1827
    .end local v2    # "current":Ljava/lang/String;
    .end local v3    # "gmtOffset":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1831
    if-eqz v1, :cond_4

    .line 1833
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1836
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1837
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x21200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1840
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "time-zone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1841
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1843
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 1827
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

    .line 4425
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

    .line 4427
    if-eqz p1, :cond_1

    .line 4428
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4429
    return-void

    .line 4432
    :cond_1
    if-ltz p2, :cond_2

    .line 4433
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4434
    return-void

    .line 4437
    :cond_2
    goto :goto_1

    .line 4436
    :catch_0
    move-exception v1

    .line 4440
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4441
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

    .line 3708
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    const/4 v1, 0x0

    .line 3712
    .local v1, "hasWakeup":Z
    :goto_0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v12, "AlarmManager"

    const/4 v13, 0x1

    if-lez v2, :cond_10

    .line 3713
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/AlarmManagerService$Batch;

    .line 3714
    .local v11, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v2, v11, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    .line 3716
    move-object v2, v0

    move-object/from16 v31, v12

    move v3, v13

    goto/16 :goto_6

    .line 3721
    :cond_0
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3723
    invoke-virtual {v11}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v8

    .line 3724
    .local v8, "N":I
    const/4 v2, 0x0

    move/from16 v21, v1

    move v9, v2

    .end local v1    # "hasWakeup":Z
    .local v9, "i":I
    .local v21, "hasWakeup":Z
    :goto_1
    if-ge v9, v8, :cond_f

    .line 3725
    invoke-virtual {v11, v9}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 3727
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-wide/16 v15, 0x0

    if-eqz v1, :cond_2

    .line 3730
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 3731
    .local v1, "lastTime":J
    iget v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-direct {v0, v3}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 3738
    .local v3, "minTime":J
    iget-object v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/OpAlarmManagerInjector;->needDeferred(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    cmp-long v5, v1, v15

    if-ltz v5, :cond_2

    cmp-long v5, p2, v3

    if-gez v5, :cond_2

    .line 3744
    iput-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 3745
    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 3746
    iput-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3748
    :cond_1
    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 3759
    invoke-direct {v0, v7, v13, v10}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 3760
    goto :goto_2

    .line 3763
    .end local v1    # "lastTime":J
    .end local v3    # "minTime":J
    :cond_2
    invoke-direct {v0, v7}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3765
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v1, :cond_3

    .line 3766
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

    .line 3768
    :cond_3
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3769
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez v1, :cond_4

    .line 3770
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3771
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3773
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3774
    goto :goto_2

    .line 3778
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_5
    new-array v1, v13, [I

    const/16 v2, 0x61

    aput v2, v1, v10

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3779
    sget-object v2, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->FROZEN_TRIGGERALARM:Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-wide/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/OpAlarmAlignmentInjector;->setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3781
    goto :goto_2

    .line 3789
    :cond_6
    invoke-static {v7, v10}, Lcom/android/server/OpAlarmManagerInjector;->ifDropPkgAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3724
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

    .line 3793
    .restart local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    iput v13, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3794
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3795
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 3796
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_3

    :cond_8
    move v1, v10

    :goto_3
    iget-object v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 3799
    :cond_9
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v2, 0x0

    if-ne v1, v7, :cond_a

    .line 3800
    iput-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3801
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3804
    :cond_a
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne v1, v7, :cond_b

    .line 3805
    iput-object v2, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3806
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3811
    :cond_b
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v1, v1, v15

    if-lez v1, :cond_c

    .line 3814
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, p2, v3

    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3816
    iget v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v22, v1, v3

    .line 3817
    .local v22, "delta":J
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v24, v1, v22

    .local v24, "nextElapsed":J
    move-wide/from16 v4, v24

    .line 3827
    iget v1, v0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v7, v1, v2}, Lcom/android/server/OpAlarmManagerInjector;->checkRepeatAlarmInWhiteList(Lcom/android/server/AlarmManagerService$Alarm;ILcom/android/server/AppStateTracker;)I

    move-result v26

    .local v26, "flag":I
    move/from16 v15, v26

    .line 3828
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

    .line 3829
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

    .line 3828
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v32, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v32, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_4

    .line 3811
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

    .line 3836
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

    .line 3837
    const/16 v21, 0x1

    .line 3841
    :cond_d
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_e

    .line 3842
    const/4 v3, 0x1

    move-object/from16 v2, p0

    iput-boolean v3, v2, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_5

    .line 3841
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v2, p0

    .line 3724
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

    .line 3845
    .end local v8    # "N":I
    .end local v9    # "i":I
    .end local v11    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v14, p1

    move/from16 v1, v21

    goto/16 :goto_0

    .line 3712
    .end local v21    # "hasWakeup":Z
    .local v1, "hasWakeup":Z
    :cond_10
    move-object v2, v0

    move-object/from16 v31, v12

    move v3, v13

    .line 3849
    :goto_6
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 3850
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3851
    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3864
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_13

    .line 3865
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3866
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 3867
    .local v5, "operation":Landroid/app/PendingIntent;
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    .line 3868
    .local v6, "listenTag":Ljava/lang/String;
    const-string v7, " flags =0x"

    const-string v8, " package ="

    const-string v9, " when ="

    const-string v10, ": "

    const-string v11, "Triggering alarm #"

    if-eqz v5, :cond_11

    .line 3869
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

    .line 3871
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3869
    move-object/from16 v12, v31

    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3872
    :cond_11
    move-object/from16 v12, v31

    if-eqz v6, :cond_12

    .line 3873
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

    .line 3874
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3873
    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    .end local v5    # "operation":Landroid/app/PendingIntent;
    .end local v6    # "listenTag":Ljava/lang/String;
    :cond_12
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v31, v12

    goto/16 :goto_7

    .line 3880
    .end local v0    # "i":I
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_13
    return v1
.end method
