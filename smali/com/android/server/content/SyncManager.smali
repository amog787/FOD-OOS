.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;,
        Lcom/android/server/content/SyncManager$OnReadyCallback;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;,
        Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;
    }
.end annotation


# static fields
.field private static final DEBUG_ACCOUNT_ACCESS:Z = false

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final ENABLE_SUSPICIOUS_CHECK:Z

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field private static final LOCAL_SYNC_DELAY:J

.field private static final MAX_SYNC_JOB_ID:I = 0x1adb0

.field private static final MIN_SYNC_JOB_ID:I = 0x186a0

.field private static final SYNC_ADAPTER_CONNECTION_FLAGS:I = 0x15

.field private static final SYNC_DELAY_ON_CONFLICT:J = 0x2710L

.field private static final SYNC_DELAY_ON_LOW_STORAGE:J = 0x36ee80L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

.field private static final SYNC_MONITOR_PROGRESS_THRESHOLD_BYTES:I = 0xa

.field private static final SYNC_MONITOR_WINDOW_LENGTH_MILLIS:J = 0xea60L

.field private static final SYNC_OP_STATE_INVALID_NOT_SYNCABLE:I = 0x4

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT:I = 0x3

.field private static final SYNC_OP_STATE_INVALID_NO_ACCOUNT_ACCESS:I = 0x2

.field private static final SYNC_OP_STATE_INVALID_SYNC_DISABLED:I = 0x5

.field private static final SYNC_OP_STATE_VALID:I = 0x0

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*/"

.field static final TAG:Ljava/lang/String; = "SyncManager"

.field private static sInstance:Lcom/android/server/content/SyncManager;

.field private static final sOpDumpComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpRuntimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field private final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mDeviceIsIdle:Z

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mProvisioned:Z

.field private final mRand:Ljava/util/Random;

.field private volatile mReportedSyncActive:Z

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 162
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    .line 168
    nop

    .line 169
    const-string/jumbo v0, "sync.local_sync_delay"

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    .line 231
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 1996
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$bVs0A6OYdmGkOiq_lbp5MiBwelw;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    .line 2026
    sget-object v0, Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$68MEyNkTh36YmYoFlURJoRa_-cY;

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 238
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    .line 240
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    .line 249
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 300
    new-instance v1, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    new-instance v1, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v1, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    new-instance v1, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 429
    new-instance v1, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    .line 440
    new-instance v1, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 461
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 573
    const-class v1, Lcom/android/server/content/SyncManager;

    monitor-enter v1

    .line 574
    :try_start_0
    sget-object v2, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v2, :cond_0

    .line 575
    sput-object p0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_0

    .line 577
    :cond_0
    const-string v2, "SyncManager"

    const-string v3, "SyncManager instantiated multiple times"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 583
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 585
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 587
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;Landroid/os/Looper;)V

    .line 588
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 589
    new-instance v2, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 598
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 607
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v2, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 614
    new-instance v1, Landroid/content/SyncAdaptersCache;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 616
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    const-string v3, "SyncManager"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    .line 617
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 618
    new-instance v1, Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 620
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v2, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v2, p0}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v2, v3}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 633
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    .line 634
    new-instance v1, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 636
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 637
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 639
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 640
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 643
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 644
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 645
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 647
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 648
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 654
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 655
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 657
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 658
    nop

    .line 659
    const-string/jumbo v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_1

    .line 661
    :cond_1
    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 663
    :goto_1
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 664
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 665
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 666
    const-class v3, Landroid/accounts/AccountManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 667
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 669
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    new-instance v4, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;

    invoke-direct {v4, p0}, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 680
    const-string v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 688
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "SyncLoopWakeLock"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 690
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 692
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 693
    iget-boolean v3, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v3, :cond_3

    .line 694
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 695
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Lcom/android/server/content/SyncManager$12;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    move-object v2, v5

    .line 705
    .local v2, "provisionedObserver":Landroid/database/ContentObserver;
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    monitor-enter v5

    .line 706
    :try_start_1
    const-string v6, "device_provisioned"

    .line 707
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 706
    invoke-virtual {v3, v6, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 713
    iget-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 714
    iget-boolean v6, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v6, :cond_2

    .line 715
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 717
    :cond_2
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 720
    .end local v2    # "provisionedObserver":Landroid/database/ContentObserver;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    :goto_2
    if-nez p2, :cond_4

    .line 722
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 734
    :cond_4
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->whiteListExistingSyncAdaptersIfNeeded()V

    .line 736
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync manager initialized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 737
    return-void

    .line 579
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return v0
.end method

.method static synthetic access$1576(Lcom/android/server/content/SyncManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 156
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "x2"    # Landroid/content/SyncResult;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # J

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/content/SyncManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # [Landroid/accounts/AccountAndUser;

    .line 156
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->removeStaleAccounts()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # [Landroid/accounts/AccountAndUser;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # I

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/content/SyncManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/content/SyncManager;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Landroid/content/SyncResult;
    .param p2, "x2"    # Lcom/android/server/content/SyncOperation;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncOperation;
    .param p2, "x2"    # J

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "x2"    # J

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/content/SyncManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 156
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/content/SyncManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method private canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1159
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1160
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1159
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1161
    return v1

    .line 1167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x100000

    .line 1168
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1167
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    return v1

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "why"    # Ljava/lang/String;

    .line 4055
    if-nez p1, :cond_0

    .line 4056
    const-string v0, "SyncManager"

    const-string v1, "Null sync operation detected."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    return-void

    .line 4059
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_1

    .line 4060
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Removing periodic sync "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, " for "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4062
    :cond_1
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 4063
    return-void
.end method

.method private cleanupJobs()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method private clearAllBackoffs(Ljava/lang/String;)V
    .locals 1
    .param p1, "why"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 402
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1352
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    .line 1353
    .local v0, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1354
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1355
    return-void

    .line 1357
    :cond_0
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing backoffs for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1364
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1365
    return-void
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3
    .param p1, "accounts"    # [Landroid/accounts/AccountAndUser;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userId"    # I

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 350
    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 351
    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 353
    goto :goto_1

    .line 349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private static countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 2034
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .line 2035
    .local v0, "ret":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2036
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2037
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 2038
    :cond_1
    return v0
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "ds"    # Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2385
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2386
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const-string v1, " avg="

    const-string v2, " for "

    if-lez v0, :cond_0

    .line 2387
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2388
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2390
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2391
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 2392
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2393
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2395
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2396
    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2637
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v0

    .line 2638
    .local v0, "dses":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_8

    .line 2639
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2640
    const-string v2, "Sync Statistics"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    const-string v2, "  Today:  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2642
    aget-object v1, v0, v1

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    .line 2647
    .local v1, "today":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x6

    if-gt v2, v3, :cond_2

    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 2648
    aget-object v4, v0, v2

    .line 2649
    .local v4, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v4, :cond_0

    goto :goto_1

    .line 2650
    :cond_0
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v5, v1, v5

    .line 2651
    .local v5, "delta":I
    if-le v5, v3, :cond_1

    goto :goto_1

    .line 2653
    :cond_1
    const-string v3, "  Day-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2654
    invoke-direct {p0, p1, v4}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2647
    .end local v5    # "delta":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2658
    .end local v4    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_2
    :goto_1
    move v4, v1

    .line 2659
    .local v4, "weekDay":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_8

    .line 2660
    const/4 v5, 0x0

    .line 2661
    .local v5, "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v4, v4, -0x7

    .line 2662
    :goto_3
    array-length v6, v0

    if-ge v2, v6, :cond_6

    .line 2663
    aget-object v6, v0, v2

    .line 2664
    .local v6, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v6, :cond_3

    .line 2665
    array-length v2, v0

    .line 2666
    goto :goto_4

    .line 2668
    :cond_3
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v4, v7

    .line 2669
    .local v7, "delta":I
    if-le v7, v3, :cond_4

    goto :goto_4

    .line 2670
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 2672
    if-nez v5, :cond_5

    .line 2673
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v8, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    move-object v5, v8

    .line 2675
    :cond_5
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2676
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2677
    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v8, v9

    iput v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2678
    iget-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v10, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2679
    .end local v7    # "delta":I
    goto :goto_3

    .line 2680
    .end local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 2681
    const-string v6, "  Week-"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x7

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2682
    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2684
    .end local v5    # "aggr":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_7
    goto :goto_2

    .line 2686
    .end local v1    # "today":I
    .end local v2    # "i":I
    .end local v4    # "weekDay":I
    :cond_8
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 50
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2405
    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v2

    .line 2406
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 2407
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 2408
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const-wide/16 v4, 0x0

    .line 2409
    .local v4, "totalElapsedTime":J
    const-wide/16 v6, 0x0

    .line 2410
    .local v6, "totalTimes":J
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2412
    .local v8, "N":I
    const/4 v9, 0x0

    .line 2413
    .local v9, "maxAuthority":I
    const/4 v10, 0x0

    .line 2414
    .local v10, "maxAccount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, " u"

    const-string v14, "/"

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2415
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v17, v11

    iget v11, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2416
    invoke-virtual {v15, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v11

    .line 2419
    .local v11, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v11, :cond_0

    .line 2420
    iget-object v15, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2421
    .local v15, "authorityName":Ljava/lang/String;
    move-object/from16 v18, v15

    .end local v15    # "authorityName":Ljava/lang/String;
    .local v18, "authorityName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v19, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    iget-object v2, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, v18

    .local v2, "accountKey":Ljava/lang/String;
    goto :goto_1

    .line 2425
    .end local v18    # "authorityName":Ljava/lang/String;
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_0
    move-object/from16 v19, v2

    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const-string v15, "Unknown"

    .line 2426
    .restart local v15    # "authorityName":Ljava/lang/String;
    const-string v2, "Unknown"

    .line 2429
    .local v2, "accountKey":Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 2430
    .local v13, "length":I
    if-le v13, v9, :cond_1

    .line 2431
    move v9, v13

    .line 2433
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    .line 2434
    if-le v13, v10, :cond_2

    .line 2435
    move v10, v13

    .line 2438
    :cond_2
    move v14, v9

    move/from16 v18, v10

    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .local v14, "maxAuthority":I
    .local v18, "maxAccount":I
    iget-wide v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2439
    .local v9, "elapsedTime":J
    add-long/2addr v4, v9

    .line 2440
    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    .line 2441
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2442
    .local v20, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-wide/from16 v21, v4

    .end local v4    # "totalElapsedTime":J
    .local v21, "totalElapsedTime":J
    const/4 v4, 0x0

    if-nez v20, :cond_3

    .line 2443
    new-instance v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-direct {v5, v15, v4}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    .line 2444
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v5, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    invoke-interface {v3, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2442
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_3
    move-object/from16 v5, v20

    .line 2446
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_2
    move-wide/from16 v23, v6

    .end local v6    # "totalTimes":J
    .local v23, "totalTimes":J
    iget-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    add-long/2addr v6, v9

    iput-wide v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2447
    iget v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2448
    iget-object v6, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2449
    .local v6, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2450
    .local v7, "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    if-nez v7, :cond_4

    .line 2451
    move-object/from16 v20, v5

    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    new-instance v5, Lcom/android/server/content/SyncManager$AccountSyncStats;

    invoke-direct {v5, v2, v4}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    move-object v7, v5

    .line 2452
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2450
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :cond_4
    move-object/from16 v20, v5

    .line 2454
    .end local v5    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    :goto_3
    iget-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long/2addr v4, v9

    iput-wide v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2455
    iget v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2457
    .end local v2    # "accountKey":Ljava/lang/String;
    .end local v6    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v7    # "accountSyncStats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    .end local v9    # "elapsedTime":J
    .end local v11    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v13    # "length":I
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v20    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move v9, v14

    move-object/from16 v11, v17

    move/from16 v10, v18

    move-object/from16 v2, v19

    move-wide/from16 v4, v21

    move-wide/from16 v6, v23

    goto/16 :goto_0

    .line 2459
    .end local v14    # "maxAuthority":I
    .end local v18    # "maxAccount":I
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v21    # "totalElapsedTime":J
    .end local v23    # "totalTimes":J
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v4    # "totalElapsedTime":J
    .local v6, "totalTimes":J
    .local v9, "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_5
    move-object/from16 v19, v2

    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const-wide/16 v11, 0x0

    cmp-long v2, v4, v11

    const-wide/16 v17, 0x3e8

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-lez v2, :cond_8

    .line 2460
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2461
    new-array v2, v11, [Ljava/lang/Object;

    .line 2463
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v2, v12

    div-long v22, v4, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v16, 0x1

    aput-object v22, v2, v16

    .line 2461
    const-string v15, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    invoke-virtual {v1, v15, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2465
    new-instance v2, Ljava/util/ArrayList;

    .line 2466
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2467
    .local v2, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    new-instance v15, Lcom/android/server/content/SyncManager$14;

    invoke-direct {v15, v0}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v2, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2479
    add-int/lit8 v15, v10, 0x3

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2480
    .local v15, "maxLength":I
    add-int/lit8 v23, v15, 0x4

    add-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0xa

    add-int/lit8 v11, v23, 0xb

    .line 2481
    .local v11, "padLength":I
    new-array v12, v11, [C

    .line 2482
    .local v12, "chars":[C
    move-object/from16 v25, v3

    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v25, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    const/16 v3, 0x2d

    invoke-static {v12, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 2483
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([C)V

    .line 2485
    .local v3, "separator":Ljava/lang/String;
    move/from16 v26, v11

    move-object/from16 v27, v12

    const/4 v11, 0x1

    .end local v11    # "padLength":I
    .end local v12    # "chars":[C
    .local v26, "padLength":I
    .local v27, "chars":[C
    new-array v12, v11, [Ljava/lang/Object;

    add-int/lit8 v16, v15, 0x2

    .line 2486
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v23, 0x0

    aput-object v16, v12, v23

    const-string v11, "  %%-%ds: %%-9s  %%-11s\n"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2487
    .local v11, "authorityFormat":Ljava/lang/String;
    move-object/from16 v28, v13

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    .line 2488
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v23

    const-string v12, "    %%-%ds:   %%-9s  %%-11s\n"

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2490
    .local v12, "accountFormat":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2491
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v2

    .end local v2    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v30, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    move-object/from16 v2, v29

    check-cast v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2492
    .local v2, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    move-object/from16 v29, v13

    iget-object v13, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    .line 2498
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v31, v14

    move/from16 v32, v15

    .end local v15    # "maxLength":I
    .local v32, "maxLength":I
    iget-wide v14, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2499
    .local v14, "elapsedTime":J
    move/from16 v33, v8

    .end local v8    # "N":I
    .local v33, "N":I
    iget v8, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2500
    .local v8, "times":I
    move/from16 v34, v9

    move/from16 v35, v10

    const/4 v9, 0x2

    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .local v34, "maxAuthority":I
    .local v35, "maxAccount":I
    new-array v10, v9, [Ljava/lang/Object;

    div-long v36, v14, v17

    .line 2501
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v23, 0x0

    aput-object v9, v10, v23

    const-wide/16 v36, 0x64

    mul-long v38, v14, v36

    div-long v38, v38, v4

    .line 2502
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v10, v16

    .line 2500
    const-string v9, "%ds/%d%%"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2503
    .local v10, "timeStr":Ljava/lang/String;
    move-wide/from16 v38, v14

    const/4 v14, 0x2

    .end local v14    # "elapsedTime":J
    .local v38, "elapsedTime":J
    new-array v15, v14, [Ljava/lang/Object;

    .line 2504
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v23, 0x0

    aput-object v14, v15, v23

    mul-int/lit8 v14, v8, 0x64

    move/from16 v40, v8

    move-object/from16 v41, v9

    .end local v8    # "times":I
    .local v40, "times":I
    int-to-long v8, v14

    div-long/2addr v8, v6

    .line 2505
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v15, v9

    .line 2503
    const-string v8, "%d/%d%%"

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2506
    .local v14, "timesStr":Ljava/lang/String;
    move-object/from16 v42, v3

    const/4 v15, 0x3

    .end local v3    # "separator":Ljava/lang/String;
    .local v42, "separator":Ljava/lang/String;
    new-array v3, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v13, v3, v15

    aput-object v14, v3, v9

    const/4 v9, 0x2

    aput-object v10, v3, v9

    invoke-virtual {v1, v11, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2508
    new-instance v3, Ljava/util/ArrayList;

    iget-object v9, v2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2510
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2511
    .local v3, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    new-instance v9, Lcom/android/server/content/SyncManager$15;

    invoke-direct {v9, v0}, Lcom/android/server/content/SyncManager$15;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2522
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncManager$AccountSyncStats;

    .line 2523
    .local v15, "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    .end local v2    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v3    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .local v43, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .local v44, "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    iget-wide v2, v15, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2524
    .end local v38    # "elapsedTime":J
    .local v2, "elapsedTime":J
    move-object/from16 v45, v9

    iget v9, v15, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2525
    .end local v40    # "times":I
    .local v9, "times":I
    move-object/from16 v46, v10

    move-object/from16 v47, v11

    const/4 v10, 0x2

    .end local v10    # "timeStr":Ljava/lang/String;
    .end local v11    # "authorityFormat":Ljava/lang/String;
    .local v46, "timeStr":Ljava/lang/String;
    .local v47, "authorityFormat":Ljava/lang/String;
    new-array v11, v10, [Ljava/lang/Object;

    div-long v38, v2, v17

    .line 2526
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v23, 0x0

    aput-object v10, v11, v23

    mul-long v38, v2, v36

    div-long v38, v38, v4

    .line 2527
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v16, 0x1

    aput-object v10, v11, v16

    .line 2525
    move-object/from16 v10, v41

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2528
    .end local v46    # "timeStr":Ljava/lang/String;
    .local v11, "timeStr":Ljava/lang/String;
    move-wide/from16 v38, v2

    const/4 v2, 0x2

    .end local v2    # "elapsedTime":J
    .restart local v38    # "elapsedTime":J
    new-array v3, v2, [Ljava/lang/Object;

    .line 2529
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v23, 0x0

    aput-object v2, v3, v23

    mul-int/lit8 v2, v9, 0x64

    move-wide/from16 v48, v4

    .end local v4    # "totalElapsedTime":J
    .local v48, "totalElapsedTime":J
    int-to-long v4, v2

    div-long/2addr v4, v6

    .line 2530
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 2528
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2531
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v2, v15, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    aput-object v14, v3, v4

    const/4 v2, 0x2

    aput-object v11, v3, v2

    invoke-virtual {v1, v12, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2532
    .end local v15    # "stats":Lcom/android/server/content/SyncManager$AccountSyncStats;
    move/from16 v40, v9

    move-object v10, v11

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    move-object/from16 v9, v45

    move-object/from16 v11, v47

    move-wide/from16 v4, v48

    goto :goto_5

    .line 2533
    .end local v9    # "times":I
    .end local v43    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v44    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v47    # "authorityFormat":Ljava/lang/String;
    .end local v48    # "totalElapsedTime":J
    .local v2, "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v3    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v4    # "totalElapsedTime":J
    .restart local v10    # "timeStr":Ljava/lang/String;
    .local v11, "authorityFormat":Ljava/lang/String;
    .restart local v40    # "times":I
    :cond_6
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move-wide/from16 v48, v4

    move-object/from16 v46, v10

    move-object/from16 v47, v11

    .end local v2    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v3    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v4    # "totalElapsedTime":J
    .end local v10    # "timeStr":Ljava/lang/String;
    .end local v11    # "authorityFormat":Ljava/lang/String;
    .restart local v43    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .restart local v44    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .restart local v46    # "timeStr":Ljava/lang/String;
    .restart local v47    # "authorityFormat":Ljava/lang/String;
    .restart local v48    # "totalElapsedTime":J
    move-object/from16 v2, v42

    .end local v42    # "separator":Ljava/lang/String;
    .local v2, "separator":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2534
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "timesStr":Ljava/lang/String;
    .end local v38    # "elapsedTime":J
    .end local v40    # "times":I
    .end local v43    # "authoritySyncStats":Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .end local v44    # "sortedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AccountSyncStats;>;"
    .end local v46    # "timeStr":Ljava/lang/String;
    move-object v3, v2

    move-object/from16 v13, v29

    move-object/from16 v2, v30

    move-object/from16 v14, v31

    move/from16 v15, v32

    move/from16 v8, v33

    move/from16 v9, v34

    move/from16 v10, v35

    goto/16 :goto_4

    .line 2491
    .end local v30    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v32    # "maxLength":I
    .end local v33    # "N":I
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v47    # "authorityFormat":Ljava/lang/String;
    .end local v48    # "totalElapsedTime":J
    .local v2, "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .local v3, "separator":Ljava/lang/String;
    .restart local v4    # "totalElapsedTime":J
    .local v8, "N":I
    .local v9, "maxAuthority":I
    .local v10, "maxAccount":I
    .restart local v11    # "authorityFormat":Ljava/lang/String;
    .local v15, "maxLength":I
    :cond_7
    move-object/from16 v30, v2

    move-object v2, v3

    move-wide/from16 v48, v4

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v47, v11

    move-object/from16 v31, v14

    move/from16 v32, v15

    .end local v3    # "separator":Ljava/lang/String;
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .end local v11    # "authorityFormat":Ljava/lang/String;
    .end local v15    # "maxLength":I
    .local v2, "separator":Ljava/lang/String;
    .restart local v30    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v32    # "maxLength":I
    .restart local v33    # "N":I
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    .restart local v47    # "authorityFormat":Ljava/lang/String;
    .restart local v48    # "totalElapsedTime":J
    goto :goto_6

    .line 2459
    .end local v2    # "separator":Ljava/lang/String;
    .end local v12    # "accountFormat":Ljava/lang/String;
    .end local v25    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v26    # "padLength":I
    .end local v27    # "chars":[C
    .end local v30    # "sortedAuthorities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v32    # "maxLength":I
    .end local v33    # "N":I
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v47    # "authorityFormat":Ljava/lang/String;
    .end local v48    # "totalElapsedTime":J
    .local v3, "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v4    # "totalElapsedTime":J
    .restart local v8    # "N":I
    .restart local v9    # "maxAuthority":I
    .restart local v10    # "maxAccount":I
    :cond_8
    move-object/from16 v25, v3

    move-wide/from16 v48, v4

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move-object/from16 v28, v13

    move-object/from16 v31, v14

    .line 2537
    .end local v3    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v4    # "totalElapsedTime":J
    .end local v8    # "N":I
    .end local v9    # "maxAuthority":I
    .end local v10    # "maxAccount":I
    .restart local v25    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .restart local v33    # "N":I
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    .restart local v48    # "totalElapsedTime":J
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2538
    const-string v2, "Recent Sync History"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    const-string v2, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v35

    .end local v35    # "maxAccount":I
    .restart local v10    # "maxAccount":I
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s  %-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v34

    .end local v34    # "maxAuthority":I
    .local v14, "maxAuthority":I
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s %s\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2541
    .local v3, "format":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 2542
    .local v4, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2543
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    move/from16 v9, v33

    .end local v33    # "N":I
    .local v9, "N":I
    if-ge v8, v9, :cond_11

    .line 2544
    move-object/from16 v11, v19

    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v11, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2545
    .local v12, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v15, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2546
    invoke-virtual {v13, v15}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v13

    .line 2549
    .local v13, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v13, :cond_9

    .line 2550
    iget-object v15, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2551
    .local v15, "authorityName":Ljava/lang/String;
    move-wide/from16 v26, v6

    .end local v6    # "totalTimes":J
    .local v26, "totalTimes":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v31

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v35, v10

    .end local v10    # "maxAccount":I
    .restart local v35    # "maxAccount":I
    iget-object v10, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v28

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v34, v14

    .end local v14    # "maxAuthority":I
    .restart local v34    # "maxAuthority":I
    iget-object v14, v13, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "accountKey":Ljava/lang/String;
    goto :goto_8

    .line 2555
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v26    # "totalTimes":J
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .local v6, "totalTimes":J
    .restart local v10    # "maxAccount":I
    .restart local v14    # "maxAuthority":I
    :cond_9
    move-wide/from16 v26, v6

    move/from16 v35, v10

    move/from16 v34, v14

    move-object/from16 v10, v28

    move-object/from16 v7, v31

    .end local v6    # "totalTimes":J
    .end local v10    # "maxAccount":I
    .end local v14    # "maxAuthority":I
    .restart local v26    # "totalTimes":J
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    const-string v15, "Unknown"

    .line 2556
    .restart local v15    # "authorityName":Ljava/lang/String;
    const-string v6, "Unknown"

    .line 2558
    .local v6, "accountKey":Ljava/lang/String;
    :goto_8
    move-object/from16 v19, v13

    .end local v13    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v19, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v13, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 2559
    .local v13, "elapsedTime":J
    move-object/from16 v29, v10

    move-object/from16 v28, v11

    .end local v11    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v28, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    iget-wide v10, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2561
    .local v10, "eventTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2562
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    .line 2564
    .local v30, "lastEventTime":Ljava/lang/Long;
    if-nez v30, :cond_a

    .line 2565
    const-string v31, ""

    move-object/from16 v33, v7

    move/from16 v40, v9

    .local v31, "diffString":Ljava/lang/String;
    goto/16 :goto_9

    .line 2567
    .end local v31    # "diffString":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    sub-long v31, v31, v10

    div-long v31, v31, v17

    .line 2568
    .local v31, "diff":J
    const-wide/16 v36, 0x3c

    cmp-long v33, v31, v36

    if-gez v33, :cond_b

    .line 2569
    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move/from16 v40, v9

    move-object/from16 v31, v33

    move-object/from16 v33, v7

    .local v33, "diffString":Ljava/lang/String;
    goto :goto_9

    .line 2570
    .end local v33    # "diffString":Ljava/lang/String;
    :cond_b
    const-wide/16 v38, 0xe10

    cmp-long v33, v31, v38

    if-gez v33, :cond_c

    .line 2571
    move-object/from16 v33, v7

    move/from16 v40, v9

    const/4 v7, 0x2

    .end local v9    # "N":I
    .local v40, "N":I
    new-array v9, v7, [Ljava/lang/Object;

    div-long v38, v31, v36

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v23, 0x0

    aput-object v7, v9, v23

    rem-long v36, v31, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v16, 0x1

    aput-object v7, v9, v16

    const-string v7, "%02d:%02d"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v31, v7

    .local v7, "diffString":Ljava/lang/String;
    goto :goto_9

    .line 2573
    .end local v7    # "diffString":Ljava/lang/String;
    .end local v40    # "N":I
    .restart local v9    # "N":I
    :cond_c
    move-object/from16 v33, v7

    move/from16 v40, v9

    .end local v9    # "N":I
    .restart local v40    # "N":I
    rem-long v41, v31, v38

    .line 2574
    .local v41, "sec":J
    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    div-long v38, v31, v38

    .line 2575
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v23, 0x0

    aput-object v7, v9, v23

    div-long v38, v41, v36

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v16, 0x1

    aput-object v7, v9, v16

    rem-long v36, v41, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v24, 0x2

    aput-object v7, v9, v24

    .line 2574
    const-string v7, "%02d:%02d:%02d"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v31, v7

    .line 2578
    .end local v41    # "sec":J
    .local v31, "diffString":Ljava/lang/String;
    :goto_9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v9, v8, 0x1

    .line 2581
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v23, 0x0

    aput-object v9, v7, v23

    .line 2582
    invoke-static {v10, v11}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v7, v16

    sget-object v9, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v32, v0

    .end local v0    # "key":Ljava/lang/String;
    .local v32, "key":Ljava/lang/String;
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v0, v9, v0

    const/4 v9, 0x2

    aput-object v0, v7, v9

    long-to-float v0, v13

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v0, v9

    .line 2584
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v9, 0x3

    aput-object v0, v7, v9

    const/4 v0, 0x4

    aput-object v31, v7, v0

    .line 2580
    const-string v0, "  #%-3d: %s %8s  %5.1fs  %8s"

    invoke-virtual {v1, v0, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2586
    new-array v0, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v0, v7

    const/4 v7, 0x1

    aput-object v15, v0, v7

    iget v9, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 2587
    invoke-static {v5, v9}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v0, v16

    .line 2586
    invoke-virtual {v1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2589
    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    if-ne v0, v7, :cond_e

    move-object v0, v4

    move-object v7, v5

    .end local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-wide v4, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    const-wide/16 v20, 0x0

    cmp-long v4, v4, v20

    if-nez v4, :cond_f

    iget-wide v4, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v4, v4, v20

    if-eqz v4, :cond_d

    goto :goto_a

    :cond_d
    move-object v4, v6

    move-object v9, v7

    goto :goto_b

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_e
    move-object v0, v4

    move-object v7, v5

    const-wide/16 v20, 0x0

    .line 2592
    .end local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_f
    :goto_a
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 2593
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object v4, v6

    move-object v9, v7

    .end local v6    # "accountKey":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "accountKey":Ljava/lang/String;
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-wide v6, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2594
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-wide v6, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 2595
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 2592
    const-string v6, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    invoke-virtual {v1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2597
    :goto_b
    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 2598
    const-string/jumbo v6, "success"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2599
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "    mesg=%s\n"

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2543
    .end local v4    # "accountKey":Ljava/lang/String;
    .end local v10    # "eventTime":J
    .end local v12    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v13    # "elapsedTime":J
    .end local v15    # "authorityName":Ljava/lang/String;
    .end local v19    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v30    # "lastEventTime":Ljava/lang/Long;
    .end local v31    # "diffString":Ljava/lang/String;
    .end local v32    # "key":Ljava/lang/String;
    :cond_10
    add-int/lit8 v8, v8, 0x1

    move-object v4, v0

    move-object v5, v9

    move-wide/from16 v6, v26

    move-object/from16 v19, v28

    move-object/from16 v28, v29

    move-object/from16 v31, v33

    move/from16 v14, v34

    move/from16 v10, v35

    move/from16 v33, v40

    move-object/from16 v0, p0

    goto/16 :goto_7

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v26    # "totalTimes":J
    .end local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v40    # "N":I
    .local v4, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v6, "totalTimes":J
    .local v9, "N":I
    .local v10, "maxAccount":I
    .restart local v14    # "maxAuthority":I
    .local v19, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_11
    move-object v0, v4

    move-wide/from16 v26, v6

    move/from16 v40, v9

    move/from16 v35, v10

    move/from16 v34, v14

    move-object/from16 v29, v28

    move-object/from16 v33, v31

    move-object v9, v5

    move-object/from16 v28, v19

    .line 2602
    .end local v4    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "totalTimes":J
    .end local v8    # "i":I
    .end local v10    # "maxAccount":I
    .end local v14    # "maxAuthority":I
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v9, "pm":Landroid/content/pm/PackageManager;
    .restart local v26    # "totalTimes":J
    .restart local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v34    # "maxAuthority":I
    .restart local v35    # "maxAccount":I
    .restart local v40    # "N":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2603
    const-string v4, "Recent Sync History Extras"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    move/from16 v4, v40

    .end local v40    # "N":I
    .local v4, "N":I
    if-ge v2, v4, :cond_15

    .line 2606
    move-object/from16 v5, v28

    .end local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2607
    .local v6, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 2608
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v8

    if-nez v8, :cond_12

    .line 2609
    move-object/from16 v8, p0

    move-object/from16 v17, v0

    move-object/from16 v19, v5

    move-object/from16 v14, v29

    move-object/from16 v13, v33

    const/4 v0, 0x3

    const/4 v5, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v33, v4

    goto/16 :goto_e

    .line 2611
    :cond_12
    move-object/from16 v8, p0

    iget-object v10, v8, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v11, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2612
    invoke-virtual {v10, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 2615
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v10, :cond_13

    .line 2616
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2617
    .local v11, "authorityName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v33

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v29

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v15, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "accountKey":Ljava/lang/String;
    goto :goto_d

    .line 2621
    .end local v11    # "authorityName":Ljava/lang/String;
    .end local v12    # "accountKey":Ljava/lang/String;
    :cond_13
    move-object/from16 v14, v29

    move-object/from16 v13, v33

    const-string v11, "Unknown"

    .line 2622
    .restart local v11    # "authorityName":Ljava/lang/String;
    const-string v12, "Unknown"

    .line 2624
    .restart local v12    # "accountKey":Ljava/lang/String;
    :goto_d
    move/from16 v33, v4

    move-object/from16 v19, v5

    .end local v4    # "N":I
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .local v33, "N":I
    iget-wide v4, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 2626
    .local v4, "eventTime":J
    move-object/from16 v17, v0

    const/4 v15, 0x3

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v17, "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-array v0, v15, [Ljava/lang/Object;

    add-int/lit8 v15, v2, 0x1

    .line 2627
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x0

    aput-object v15, v0, v18

    .line 2628
    invoke-static {v4, v5}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v0, v16

    sget-object v15, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-wide/from16 v20, v4

    .end local v4    # "eventTime":J
    .local v20, "eventTime":J
    iget v4, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v4, v15, v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 2626
    const-string v4, "  #%-3d: %s %8s "

    invoke-virtual {v1, v4, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2631
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v4, v15

    aput-object v11, v4, v16

    aput-object v7, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_e

    .line 2608
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "authorityName":Ljava/lang/String;
    .end local v12    # "accountKey":Ljava/lang/String;
    .end local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v20    # "eventTime":J
    .end local v33    # "N":I
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v4, "N":I
    .restart local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_14
    move-object/from16 v8, p0

    move-object/from16 v17, v0

    move-object/from16 v19, v5

    move-object/from16 v14, v29

    move-object/from16 v13, v33

    const/4 v0, 0x3

    const/4 v5, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v33, v4

    .line 2605
    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "N":I
    .end local v5    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v6    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v33    # "N":I
    :goto_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v14

    move-object/from16 v0, v17

    move-object/from16 v28, v19

    move/from16 v40, v33

    move-object/from16 v33, v13

    goto/16 :goto_c

    .end local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v33    # "N":I
    .restart local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v4    # "N":I
    .restart local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_15
    move-object/from16 v8, p0

    move-object/from16 v17, v0

    move/from16 v33, v4

    move-object/from16 v19, v28

    .end local v0    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "N":I
    .end local v28    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v33    # "N":I
    goto :goto_f

    .line 2406
    .end local v3    # "format":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "lastTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .end local v25    # "authorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/SyncManager$AuthoritySyncStats;>;"
    .end local v26    # "totalTimes":J
    .end local v33    # "N":I
    .end local v34    # "maxAuthority":I
    .end local v35    # "maxAccount":I
    .end local v48    # "totalElapsedTime":J
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :cond_16
    move-object v8, v0

    move-object/from16 v19, v2

    .line 2634
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    .restart local v19    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :goto_f
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2689
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2690
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 2691
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_1

    .line 2692
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2693
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync adapters for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2696
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2697
    .local v4, "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2698
    .end local v4    # "info":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<*>;"
    goto :goto_1

    .line 2699
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2700
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2701
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 2703
    :cond_1
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # J

    .line 2380
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 2381
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2382
    return-void
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "duration"    # J

    .line 2080
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 2081
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2082
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2083
    neg-long p1, p1

    .line 2085
    :cond_0
    const-wide/16 v2, 0x3c

    rem-long v4, p1, v2

    .line 2086
    .local v4, "seconds":J
    div-long/2addr p1, v2

    .line 2088
    rem-long v6, p1, v2

    .line 2089
    .local v6, "minutes":J
    div-long/2addr p1, v2

    .line 2091
    const-wide/16 v2, 0x18

    rem-long v8, p1, v2

    .line 2092
    .local v8, "hours":J
    div-long/2addr p1, v2

    .line 2094
    move-wide v2, p1

    .line 2096
    .local v2, "days":J
    const/4 v10, 0x0

    .line 2097
    .local v10, "print":Z
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 2098
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2099
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2100
    const/4 v10, 0x1

    .line 2102
    :cond_1
    const/16 v0, 0x68

    invoke-static {p0, v8, v9, v0, v10}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2103
    .end local v10    # "print":Z
    .local v0, "print":Z
    const/16 v1, 0x6d

    invoke-static {p0, v6, v7, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2104
    const/16 v1, 0x73

    invoke-static {p0, v4, v5, v1, v0}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result v0

    .line 2105
    if-nez v0, :cond_2

    .line 2106
    const-string v1, "0s"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    :cond_2
    return-object p0
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .line 1990
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1991
    const-string v0, "N/A"

    return-object v0

    .line 1993
    :cond_0
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncAdapterComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1816
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1817
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1818
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1819
    const-string v1, "android.intent.extra.client_label"

    const v2, 0x10407c9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1821
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1823
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1821
    const/4 v4, 0x0

    const/high16 v6, 0x4000000

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "android.intent.extra.client_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1825
    return-object v0
.end method

.method private getAllPendingSyncs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 289
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .local v1, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 292
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v4

    .line 293
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v4, :cond_0

    .line 294
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v3    # "job":Landroid/app/job/JobInfo;
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 297
    :cond_1
    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 465
    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 4047
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4048
    :catch_0
    move-exception v0

    .line 4050
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private static getInstance()Lcom/android/server/content/SyncManager;
    .locals 3

    .line 2857
    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    .line 2858
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_0

    .line 2859
    const-string v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 2862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 822
    .local v0, "isSyncable":I
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 825
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 830
    invoke-static {p3, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 829
    invoke-virtual {v2, v3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 831
    .local v2, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 833
    :cond_1
    const/4 v4, 0x0

    .line 835
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 836
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 835
    invoke-interface {v5, v6, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 837
    if-nez v4, :cond_2

    return v3

    .line 841
    :cond_2
    nop

    .line 842
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 843
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 844
    return v0

    .line 846
    :cond_3
    return v3

    .line 838
    :catch_0
    move-exception v5

    .line 840
    .local v5, "re":Landroid/os/RemoteException;
    return v3

    .line 825
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return v0
.end method

.method private getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 1

    .line 568
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 569
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method private getJobStats()Ljava/lang/String;
    .locals 3

    .line 411
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 412
    .local v0, "js":Lcom/android/server/job/JobSchedulerInternal;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JobStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    if-nez v0, :cond_0

    const-string v2, "(JobSchedulerInternal==null)"

    goto :goto_0

    .line 414
    :cond_0
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    return-object v1
.end method

.method private getTotalBytesTransferredByUid(I)J
    .locals 4
    .param p1, "uid"    # I

    .line 1308
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getUnusedJobIdH()I
    .locals 3

    .line 281
    :goto_0
    const v0, 0x186a0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mRand:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 282
    .local v1, "newJobId":I
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 283
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-direct {p0, v1, v0}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    return v1

    .line 282
    :cond_0
    goto :goto_0
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 17
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1368
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1370
    .local v8, "now":J
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1371
    invoke-virtual {v1, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v10

    .line 1372
    .local v10, "previousSettings":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    .line 1373
    .local v1, "newDelayInMs":J
    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    const-string v6, "SyncManager"

    if-eqz v10, :cond_2

    .line 1376
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v8, v11

    if-gez v11, :cond_1

    .line 1377
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 1379
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v11, v8

    div-long/2addr v11, v4

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1378
    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    return-void

    .line 1384
    :cond_1
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 1385
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-float v11, v11

    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v12}, Lcom/android/server/content/SyncManagerConstants;->getRetryTimeIncreaseFactor()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-long v1, v11

    .line 1387
    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-gtz v11, :cond_3

    .line 1389
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v11}, Lcom/android/server/content/SyncManagerConstants;->getInitialSyncRetryTimeInSeconds()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    .line 1390
    .local v11, "initialRetryMs":J
    long-to-double v13, v11

    const-wide v15, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v13, v15

    double-to-long v13, v13

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v1

    .line 1394
    .end local v11    # "initialRetryMs":J
    :cond_3
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v11}, Lcom/android/server/content/SyncManagerConstants;->getMaxSyncRetryTimeInSeconds()I

    move-result v11

    int-to-long v11, v11

    .line 1396
    .local v11, "maxSyncRetryTimeInSeconds":J
    mul-long v13, v11, v4

    cmp-long v13, v1, v13

    if-lez v13, :cond_4

    .line 1397
    mul-long v1, v11, v4

    move-wide v13, v1

    goto :goto_0

    .line 1396
    :cond_4
    move-wide v13, v1

    .line 1400
    .end local v1    # "newDelayInMs":J
    .local v13, "newDelayInMs":J
    :goto_0
    add-long v4, v8, v13

    .line 1401
    .local v4, "backoff":J
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff until: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", delayTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_5
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v2, p1

    move-wide v15, v4

    .end local v4    # "backoff":J
    .local v15, "backoff":J
    move-wide v3, v15

    move-wide v5, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1405
    const-string v1, "increaseBackoffSetting"

    invoke-direct {v0, v7, v1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1406
    return-void
.end method

.method private isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 8
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1447
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    .line 1448
    .local v2, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 1449
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 1450
    return v3

    .line 1452
    :cond_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 1453
    return v3

    .line 1455
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 800
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isJobIdInUseLockedH(ILjava/util/List;)Z
    .locals 4
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;)Z"
        }
    .end annotation

    .line 265
    .local p2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 266
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 267
    return v2

    .line 269
    .end local v1    # "job":Landroid/app/job/JobInfo;
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 271
    .local v1, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, p1, :cond_2

    .line 272
    return v2

    .line 274
    .end local v1    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_2
    goto :goto_1

    .line 275
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static isSyncSetting(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 3932
    const-string v0, "expedited"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3933
    return v1

    .line 3935
    :cond_0
    const-string v0, "ignore_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3936
    return v1

    .line 3938
    :cond_1
    const-string v0, "ignore_backoff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3939
    return v1

    .line 3941
    :cond_2
    const-string v0, "do_not_retry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3942
    return v1

    .line 3944
    :cond_3
    const-string v0, "force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3945
    return v1

    .line 3947
    :cond_4
    const-string/jumbo v0, "upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3948
    return v1

    .line 3950
    :cond_5
    const-string v0, "deletions_override"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3951
    return v1

    .line 3953
    :cond_6
    const-string v0, "discard_deletions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3954
    return v1

    .line 3956
    :cond_7
    const-string v0, "expected_upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3957
    return v1

    .line 3959
    :cond_8
    const-string v0, "expected_download"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3960
    return v1

    .line 3962
    :cond_9
    const-string/jumbo v0, "sync_priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3963
    return v1

    .line 3965
    :cond_a
    const-string v0, "allow_metered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3966
    return v1

    .line 3968
    :cond_b
    const-string/jumbo v0, "initialize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3969
    return v1

    .line 3975
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 2
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3890
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3891
    .local v1, "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    if-ne v1, p1, :cond_0

    .line 3892
    const/4 v0, 0x1

    return v0

    .line 3894
    .end local v1    # "sync":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_0
    goto :goto_0

    .line 3895
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUserUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 761
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private jitterize(JJ)J
    .locals 5
    .param p1, "minValue"    # J
    .param p3, "maxValue"    # J

    .line 807
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 808
    .local v0, "random":Ljava/util/Random;
    sub-long v1, p3, p1

    .line 809
    .local v1, "spread":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 813
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3

    .line 810
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic lambda$EMXCZP9LDjgUTYbLsEoVu9Ccntw(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->zeroToEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dumpPendingSyncs$8(Lcom/android/server/content/SyncOperation;)Z
    .locals 1
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2045
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$dumpPeriodicSyncs$9(Lcom/android/server/content/SyncOperation;)Z
    .locals 1
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;

    .line 2062
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    return v0
.end method

.method static synthetic lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "table"    # Lcom/android/server/content/SyncManager$PrintTable;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "stats"    # Landroid/content/SyncStatusInfo$Stats;
    .param p4, "filter"    # Ljava/util/function/Function;
    .param p5, "r"    # Ljava/lang/Integer;

    .line 2283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2284
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v2, v4

    iget v0, p3, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v2, v4

    iget-wide v4, p3, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2295
    invoke-static {p0, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v2, v4

    .line 2284
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2296
    return-void
.end method

.method static synthetic lambda$dumpSyncState$11(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 2297
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2743
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic lambda$static$6(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .locals 6
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 1997
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1998
    .local v0, "res":I
    if-eqz v0, :cond_0

    return v0

    .line 2000
    :cond_0
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 2002
    .local v1, "stringComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2003
    if-eqz v0, :cond_1

    return v0

    .line 2005
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2006
    if-eqz v0, :cond_2

    return v0

    .line 2008
    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2009
    if-eqz v0, :cond_3

    return v0

    .line 2011
    :cond_3
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2012
    if-eqz v0, :cond_4

    return v0

    .line 2014
    :cond_4
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2015
    if-eqz v0, :cond_5

    return v0

    .line 2017
    :cond_5
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2018
    if-eqz v0, :cond_6

    return v0

    .line 2020
    :cond_6
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v2, v2

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2021
    if-eqz v0, :cond_7

    return v0

    .line 2023
    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic lambda$static$7(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .locals 4
    .param p0, "op1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "op2"    # Lcom/android/server/content/SyncOperation;

    .line 2027
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2028
    .local v0, "res":I
    if-eqz v0, :cond_0

    return v0

    .line 2030
    :cond_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-interface {v1, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private likelyHasPeriodicSyncs()Z
    .locals 3

    .line 560
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 561
    :catchall_0
    move-exception v1

    .line 564
    return v0
.end method

.method private maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 4
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 1702
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 1703
    .local v1, "isLoggable":Z
    if-eqz v1, :cond_0

    .line 1704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableBackoff()V

    .line 1709
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->hasDoNotRetry()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_1

    .line 1713
    if-eqz v1, :cond_b

    .line 1714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1717
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->isUpload()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_3

    .line 1719
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableTwoWaySync()V

    .line 1720
    if-eqz v1, :cond_2

    .line 1721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_0

    .line 1725
    :cond_3
    iget-boolean v2, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v2, :cond_4

    .line 1728
    if-eqz v1, :cond_b

    .line 1729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1732
    :cond_4
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1734
    if-eqz v1, :cond_5

    .line 1735
    const-string/jumbo v2, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1739
    :cond_6
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v2, :cond_8

    .line 1740
    if-eqz v1, :cond_7

    .line 1741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_7
    const-wide/16 v2, 0x2710

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    .line 1745
    :cond_8
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1747
    if-eqz v1, :cond_9

    .line 1748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    .line 1754
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    invoke-static {p2}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1754
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_b
    :goto_0
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1792
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUserRemoved: u"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1793
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1796
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 1797
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1798
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1799
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, p1, :cond_0

    .line 1800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user removed u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1802
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1803
    :cond_1
    return-void
.end method

.method private onUserStopped(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1779
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1781
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v2, "onUserStopped"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1789
    return-void
.end method

.method private onUserUnlocked(I)V
    .locals 19
    .param p1, "userId"    # I

    .line 1761
    move-object/from16 v11, p0

    move/from16 v12, p1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1763
    iget-object v0, v11, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, v12}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1765
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v13, v0

    .line 1766
    .local v13, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v11, v13}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1769
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1770
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1769
    invoke-virtual {v0, v12, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    .line 1771
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v15, v14

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v15, :cond_0

    aget-object v16, v14, v10

    .line 1772
    .local v16, "account":Landroid/accounts/Account;
    const/4 v3, -0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 1774
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v9, -0x3

    const/16 v17, 0x0

    .line 1772
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    move/from16 v18, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 1771
    .end local v16    # "account":Landroid/accounts/Account;
    add-int/lit8 v10, v18, 0x1

    goto :goto_0

    .line 1776
    :cond_0
    return-void
.end method

.method private postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1283
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    const-string/jumbo v1, "posting MESSAGE_SYNC_MONITOR in 60s"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_0
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1289
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1291
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x8

    .line 1292
    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1295
    .local v0, "monitorMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1296
    return-void
.end method

.method private postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .locals 3
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelayMillis"    # J

    .line 1299
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1301
    .local v0, "payload":Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1302
    return-void
.end method

.method private static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # J
    .param p3, "unit"    # C
    .param p4, "always"    # Z

    .line 2114
    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2115
    const/4 v0, 0x0

    return v0

    .line 2117
    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2118
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2120
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2121
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2122
    const/4 v0, 0x1

    return v0
.end method

.method private readDataConnectionState()Z
    .locals 2

    .line 406
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 407
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static readyToSync(I)Z
    .locals 2
    .param p0, "userId"    # I

    .line 2869
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 2870
    .local v0, "instance":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/content/SyncJobService;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v1, :cond_0

    .line 2871
    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2870
    :goto_0
    return v1
.end method

.method private removeStaleAccounts()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 371
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 375
    .local v2, "accountsForUser":[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 376
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "accountsForUser":[Landroid/accounts/Account;
    goto :goto_0

    .line 377
    :cond_1
    return-void
.end method

.method private removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "removeSyncsForAuthority: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1177
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1178
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1179
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 1180
    .local v5, "op":Lcom/android/server/content/SyncOperation;
    iget-object v6, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1181
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "canceling: "

    aput-object v8, v7, v3

    aput-object v5, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1182
    invoke-direct {p0, v5, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1184
    .end local v5    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1185
    :cond_1
    return-void
.end method

.method private rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 7
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "why"    # Ljava/lang/String;

    .line 1413
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "rescheduleSyncs() ep="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, " why="

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1415
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1416
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v1, 0x0

    .line 1417
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 1418
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v5, v4, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1419
    add-int/lit8 v1, v1, 0x1

    .line 1420
    invoke-direct {p0, v4, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1421
    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1423
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1424
    :cond_1
    const-string v2, "SyncManager"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rescheduled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " syncs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_2
    return-void
.end method

.method private scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V
    .locals 52
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "checkIfAccountReady"    # Z
    .param p10, "syncExemptionFlag"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingPackage"    # Ljava/lang/String;

    .line 918
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    move/from16 v11, p6

    move-wide/from16 v8, p7

    if-nez p5, :cond_0

    .line 919
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v10, v0

    .end local p5    # "extras":Landroid/os/Bundle;
    .local v0, "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 918
    .end local v0    # "extras":Landroid/os/Bundle;
    .restart local p5    # "extras":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v10, p5

    .line 921
    .end local p5    # "extras":Landroid/os/Bundle;
    .local v10, "extras":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v10}, Landroid/os/Bundle;->size()I

    .line 922
    const-string v0, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v6, 0x16

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v16, "scheduleSync: account="

    aput-object v16, v6, v2

    aput-object v15, v6, v1

    const-string v16, " u"

    aput-object v16, v6, v7

    .line 924
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v3

    const-string v16, " authority="

    aput-object v16, v6, v4

    aput-object v12, v6, v5

    const/16 v16, 0x6

    const-string v17, " reason="

    aput-object v17, v6, v16

    const/16 v16, 0x7

    .line 926
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v6, v16

    const/16 v16, 0x8

    const-string v17, " extras="

    aput-object v17, v6, v16

    const/16 v16, 0x9

    aput-object v10, v6, v16

    const/16 v16, 0xa

    const-string v17, " cuid="

    aput-object v17, v6, v16

    const/16 v16, 0xb

    .line 928
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v6, v16

    const/16 v16, 0xc

    const-string v17, " cpid="

    aput-object v17, v6, v16

    const/16 v16, 0xd

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v6, v16

    const/16 v16, 0xe

    const-string v17, " cpkg="

    aput-object v17, v6, v16

    const/16 v16, 0xf

    aput-object p13, v6, v16

    const/16 v16, 0x10

    const-string v17, " mdm="

    aput-object v17, v6, v16

    const/16 v16, 0x11

    .line 929
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v6, v16

    const/16 v16, 0x12

    const-string v17, " ciar="

    aput-object v17, v6, v16

    const/16 v16, 0x13

    .line 930
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v6, v16

    const/16 v16, 0x14

    const-string v17, " sef="

    aput-object v17, v6, v16

    const/16 v16, 0x15

    .line 931
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v6, v16

    .line 923
    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 934
    :cond_1
    const/4 v0, 0x0

    .line 935
    .local v0, "accounts":[Landroid/accounts/AccountAndUser;
    const/4 v6, -0x1

    if-eqz v15, :cond_5

    .line 936
    if-eq v13, v6, :cond_2

    .line 937
    new-array v4, v1, [Landroid/accounts/AccountAndUser;

    new-instance v5, Landroid/accounts/AccountAndUser;

    invoke-direct {v5, v15, v13}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v5, v4, v2

    move-object v0, v4

    move-object v7, v0

    goto :goto_2

    .line 939
    :cond_2
    iget-object v4, v14, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 940
    .local v7, "runningAccount":Landroid/accounts/AccountAndUser;
    iget-object v3, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v15, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 941
    const-class v3, Landroid/accounts/AccountAndUser;

    invoke-static {v3, v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Landroid/accounts/AccountAndUser;

    .line 939
    .end local v7    # "runningAccount":Landroid/accounts/AccountAndUser;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x3

    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    move-object v7, v0

    goto :goto_2

    .line 947
    :cond_5
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    move-object v7, v0

    .line 950
    .end local v0    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v7, "accounts":[Landroid/accounts/AccountAndUser;
    :goto_2
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 951
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: no accounts configured, dropping"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 952
    return-void

    .line 955
    :cond_6
    const-string/jumbo v0, "upload"

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 956
    .local v20, "uploadOnly":Z
    const-string v0, "force"

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 957
    .local v21, "manualSync":Z
    const-string v0, "ignore_settings"

    if-eqz v21, :cond_7

    .line 958
    const-string v3, "ignore_backoff"

    invoke-virtual {v10, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 959
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 961
    :cond_7
    nop

    .line 962
    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 965
    .local v22, "ignoreSettings":Z
    if-eqz v20, :cond_8

    .line 966
    const/4 v0, 0x1

    move/from16 v34, v0

    .local v0, "source":I
    goto :goto_3

    .line 967
    .end local v0    # "source":I
    :cond_8
    if-eqz v21, :cond_9

    .line 968
    const/4 v0, 0x3

    move/from16 v34, v0

    .restart local v0    # "source":I
    goto :goto_3

    .line 969
    .end local v0    # "source":I
    :cond_9
    if-nez v12, :cond_a

    .line 970
    const/4 v0, 0x2

    move/from16 v34, v0

    .restart local v0    # "source":I
    goto :goto_3

    .line 972
    .end local v0    # "source":I
    :cond_a
    const-string v0, "feed"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 973
    const/4 v0, 0x5

    move/from16 v34, v0

    .restart local v0    # "source":I
    goto :goto_3

    .line 977
    .end local v0    # "source":I
    :cond_b
    const/4 v0, 0x0

    move/from16 v34, v0

    .line 981
    .local v34, "source":I
    :goto_3
    array-length v5, v7

    move v4, v2

    :goto_4
    if-ge v4, v5, :cond_1f

    aget-object v3, v7, v4

    .line 983
    .local v3, "account":Landroid/accounts/AccountAndUser;
    if-ltz v13, :cond_c

    iget v0, v3, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v0, :cond_c

    iget v0, v3, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v13, v0, :cond_c

    .line 985
    move/from16 v40, v2

    move/from16 v44, v4

    move/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v38, v10

    move-object v13, v14

    const/16 v17, 0x3

    const/16 v45, -0x1

    const/16 v47, 0x2

    const/16 v49, 0x5

    move-wide v14, v8

    goto/16 :goto_c

    .line 989
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 991
    .local v0, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, v14, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v2, v3, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v6, v2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 992
    .local v6, "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v1, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/content/SyncAdapterType;

    iget-object v1, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 993
    .end local v6    # "syncAdapter":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    const/4 v1, 0x1

    goto :goto_5

    .line 998
    :cond_d
    if-eqz v12, :cond_e

    .line 999
    invoke-virtual {v0, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1000
    .local v1, "hasSyncAdapter":Z
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1001
    if-eqz v1, :cond_e

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1004
    .end local v1    # "hasSyncAdapter":Z
    :cond_e
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 1005
    .local v2, "authority":Ljava/lang/String;
    iget-object v1, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v6, v3, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v25, v0

    .end local v0    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v25, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    xor-int/lit8 v0, p9, 0x1

    invoke-virtual {v14, v1, v6, v2, v0}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v1

    .line 1008
    .local v1, "isSyncable":I
    if-nez v1, :cond_f

    .line 1009
    move-object/from16 v0, v25

    goto :goto_6

    .line 1012
    :cond_f
    iget-object v0, v14, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v6, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1013
    invoke-static {v2, v6}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v6

    move-object/from16 v26, v2

    .end local v2    # "authority":Ljava/lang/String;
    .local v26, "authority":Ljava/lang/String;
    iget v2, v3, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v0, v6, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 1015
    .local v2, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v2, :cond_10

    .line 1016
    move-object/from16 v0, v25

    goto :goto_6

    .line 1019
    :cond_10
    iget v0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1021
    .local v0, "owningUid":I
    const/4 v6, 0x3

    if-ne v1, v6, :cond_12

    .line 1022
    iget-object v6, v14, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    move/from16 v24, v0

    move/from16 v27, v1

    const/4 v1, 0x1

    .end local v0    # "owningUid":I
    .end local v1    # "isSyncable":I
    .local v24, "owningUid":I
    .local v27, "isSyncable":I
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v28, "scheduleSync: Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    const/16 v23, 0x0

    aput-object v28, v0, v23

    invoke-virtual {v6, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1024
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    const/16 v17, 0x3

    .line 1025
    .local v6, "finalExtras":Landroid/os/Bundle;
    iget-object v0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {v14, v0, v13}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v28

    if-nez v28, :cond_11

    .line 1028
    move-object/from16 v0, v25

    goto :goto_6

    .line 1030
    :cond_11
    iget-object v15, v14, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    iget-object v14, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v28, v14

    new-instance v14, Landroid/os/RemoteCallback;

    move-object/from16 v29, v15

    new-instance v15, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;

    move-object/from16 v37, v0

    move/from16 v36, v24

    move-object/from16 v19, v25

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v24    # "owningUid":I
    .end local v25    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v19, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v36, "owningUid":I
    .local v37, "packageName":Ljava/lang/String;
    move-object v0, v15

    move/from16 v24, v27

    .end local v27    # "isSyncable":I
    .local v24, "isSyncable":I
    move-object/from16 v1, p0

    move-object/from16 v42, v2

    move/from16 v40, v23

    move-object/from16 v41, v26

    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v26    # "authority":Ljava/lang/String;
    .local v41, "authority":Ljava/lang/String;
    .local v42, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object v2, v3

    move-object/from16 v43, v3

    .end local v3    # "account":Landroid/accounts/AccountAndUser;
    .local v43, "account":Landroid/accounts/AccountAndUser;
    move/from16 v3, p2

    move/from16 v44, v4

    move/from16 v4, p3

    move/from16 v16, v5

    move-object/from16 v5, v41

    move-object/from16 v18, v7

    const/16 v47, 0x2

    .end local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v18, "accounts":[Landroid/accounts/AccountAndUser;
    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v48, v10

    .end local v10    # "extras":Landroid/os/Bundle;
    .local v48, "extras":Landroid/os/Bundle;
    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/-$$Lambda$SyncManager$BRG-YMU-C9QC6JWVXAvsoEZC6Zc;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    invoke-direct {v14, v15}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move/from16 v13, p2

    move-object/from16 v2, v28

    move-object/from16 v1, v29

    move-object/from16 v0, v37

    .end local v37    # "packageName":Ljava/lang/String;
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2, v0, v13, v14}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 1043
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p4

    move/from16 v11, p6

    move/from16 v5, v16

    move-object/from16 v7, v18

    move-object/from16 v0, v19

    move-object/from16 v3, v43

    move/from16 v4, v44

    move-object/from16 v10, v48

    goto/16 :goto_6

    .line 1046
    .end local v6    # "finalExtras":Landroid/os/Bundle;
    .end local v18    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v19    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "isSyncable":I
    .end local v36    # "owningUid":I
    .end local v41    # "authority":Ljava/lang/String;
    .end local v42    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v43    # "account":Landroid/accounts/AccountAndUser;
    .end local v48    # "extras":Landroid/os/Bundle;
    .local v0, "owningUid":I
    .restart local v1    # "isSyncable":I
    .restart local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v3    # "account":Landroid/accounts/AccountAndUser;
    .restart local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v10    # "extras":Landroid/os/Bundle;
    .restart local v25    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26    # "authority":Ljava/lang/String;
    :cond_12
    move/from16 v36, v0

    move/from16 v24, v1

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v48, v10

    move-object/from16 v19, v25

    move-object/from16 v41, v26

    const/16 v40, 0x0

    const/16 v47, 0x2

    .end local v0    # "owningUid":I
    .end local v1    # "isSyncable":I
    .end local v2    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v3    # "account":Landroid/accounts/AccountAndUser;
    .end local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v25    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v26    # "authority":Ljava/lang/String;
    .restart local v18    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v19    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "isSyncable":I
    .restart local v36    # "owningUid":I
    .restart local v41    # "authority":Ljava/lang/String;
    .restart local v42    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v43    # "account":Landroid/accounts/AccountAndUser;
    .restart local v48    # "extras":Landroid/os/Bundle;
    move-object/from16 v14, v42

    .end local v42    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v14, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v0, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v15

    .line 1047
    .local v15, "allowParallelSyncs":Z
    iget-object v0, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v37

    .line 1048
    .local v37, "isAlwaysSyncable":Z
    if-nez p9, :cond_13

    if-gez v24, :cond_13

    if-eqz v37, :cond_13

    .line 1049
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v11, v43

    .end local v43    # "account":Landroid/accounts/AccountAndUser;
    .local v11, "account":Landroid/accounts/AccountAndUser;
    iget-object v1, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v2, v11, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v29, 0x1

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v28, v41

    move/from16 v30, p11

    move/from16 v31, p12

    invoke-virtual/range {v25 .. v31}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V

    .line 1052
    const/4 v1, 0x1

    move v10, v1

    .end local v24    # "isSyncable":I
    .restart local v1    # "isSyncable":I
    goto :goto_7

    .line 1048
    .end local v1    # "isSyncable":I
    .end local v11    # "account":Landroid/accounts/AccountAndUser;
    .restart local v24    # "isSyncable":I
    .restart local v43    # "account":Landroid/accounts/AccountAndUser;
    :cond_13
    move-object/from16 v12, p0

    move-object/from16 v11, v43

    .line 1055
    .end local v43    # "account":Landroid/accounts/AccountAndUser;
    .restart local v11    # "account":Landroid/accounts/AccountAndUser;
    move/from16 v10, v24

    .end local v24    # "isSyncable":I
    .local v10, "isSyncable":I
    :goto_7
    const/4 v0, -0x2

    move/from16 v9, p6

    if-eq v9, v0, :cond_14

    if-eq v9, v10, :cond_14

    .line 1056
    move-object/from16 v15, p1

    move-object v3, v11

    move-object v14, v12

    move/from16 v5, v16

    move-object/from16 v7, v18

    move-object/from16 v0, v19

    move/from16 v4, v44

    move-object/from16 v10, v48

    move-object/from16 v12, p4

    move v11, v9

    move-wide/from16 v8, p7

    goto/16 :goto_6

    .line 1059
    :cond_14
    iget-object v1, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/content/SyncAdapterType;

    invoke-virtual {v1}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz v20, :cond_15

    .line 1060
    move-object/from16 v15, p1

    move-object v3, v11

    move-object v14, v12

    move/from16 v5, v16

    move-object/from16 v7, v18

    move-object/from16 v0, v19

    move/from16 v4, v44

    move-object/from16 v10, v48

    move-object/from16 v12, p4

    move v11, v9

    move-wide/from16 v8, p7

    goto/16 :goto_6

    .line 1063
    :cond_15
    if-ltz v10, :cond_18

    if-nez v22, :cond_18

    iget-object v1, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v2, v11, Landroid/accounts/AccountAndUser;->userId:I

    .line 1066
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v2, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v11, Landroid/accounts/AccountAndUser;->userId:I

    .line 1067
    move-object/from16 v7, v41

    .end local v41    # "authority":Ljava/lang/String;
    .local v7, "authority":Ljava/lang/String;
    invoke-virtual {v1, v2, v3, v7}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_8

    .line 1066
    .end local v7    # "authority":Ljava/lang/String;
    .restart local v41    # "authority":Ljava/lang/String;
    :cond_16
    move-object/from16 v7, v41

    .line 1067
    .end local v41    # "authority":Ljava/lang/String;
    .restart local v7    # "authority":Ljava/lang/String;
    :cond_17
    move/from16 v2, v40

    goto :goto_9

    .line 1063
    .end local v7    # "authority":Ljava/lang/String;
    .restart local v41    # "authority":Ljava/lang/String;
    :cond_18
    move-object/from16 v7, v41

    .line 1067
    .end local v41    # "authority":Ljava/lang/String;
    .restart local v7    # "authority":Ljava/lang/String;
    :goto_8
    const/4 v2, 0x1

    :goto_9
    move/from16 v41, v2

    .line 1069
    .local v41, "syncAllowed":Z
    const-string v1, " "

    if-nez v41, :cond_19

    .line 1070
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v8, 0x5

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "scheduleSync: sync of "

    aput-object v3, v2, v40

    const/4 v6, 0x1

    aput-object v11, v2, v6

    aput-object v1, v2, v47

    aput-object v7, v2, v17

    const-string v1, " is not allowed, dropping request"

    const/4 v4, 0x4

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1072
    move-object/from16 v15, p1

    move-object v3, v11

    move-object v14, v12

    move/from16 v5, v16

    move-object/from16 v7, v18

    move-object/from16 v0, v19

    move/from16 v4, v44

    move-object/from16 v10, v48

    move-object/from16 v12, p4

    move v11, v9

    move-wide/from16 v8, p7

    goto/16 :goto_6

    .line 1074
    :cond_19
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v8, 0x5

    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v2, v3, v7, v5}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v3, v2

    .line 1077
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v2, v12, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1078
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v42

    .line 1080
    .local v42, "delayUntil":J
    iget-object v2, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v39

    .line 1082
    .local v39, "owningPackage":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v10, v2, :cond_1b

    .line 1083
    if-eqz p9, :cond_1a

    .line 1084
    new-instance v5, Landroid/os/Bundle;

    move-object/from16 v1, v48

    .end local v48    # "extras":Landroid/os/Bundle;
    .local v1, "extras":Landroid/os/Bundle;
    invoke-direct {v5, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1086
    .local v5, "finalExtras":Landroid/os/Bundle;
    iget-object v0, v12, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v13, v11, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 p5, v15

    .end local v15    # "allowParallelSyncs":Z
    .local p5, "allowParallelSyncs":Z
    new-instance v15, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;

    move/from16 v23, v13

    move-object v13, v0

    move-object v0, v15

    move-object/from16 v38, v1

    .end local v1    # "extras":Landroid/os/Bundle;
    .local v38, "extras":Landroid/os/Bundle;
    move-object/from16 v1, p0

    move/from16 v45, v2

    move-object v2, v11

    move-object/from16 v46, v3

    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v46, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move/from16 v3, p3

    move-object v4, v7

    move/from16 v6, p6

    move-object/from16 v48, v7

    move/from16 v49, v8

    .end local v7    # "authority":Ljava/lang/String;
    .local v48, "authority":Ljava/lang/String;
    move-wide/from16 v7, p7

    move/from16 v9, p10

    move/from16 v50, v10

    .end local v10    # "isSyncable":I
    .local v50, "isSyncable":I
    move/from16 v10, p11

    move-object/from16 v51, v11

    .end local v11    # "account":Landroid/accounts/AccountAndUser;
    .local v51, "account":Landroid/accounts/AccountAndUser;
    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/android/server/content/-$$Lambda$SyncManager$XKEiBZ17uDgUCTwf_kh9_pH7usQ;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move/from16 v0, v23

    invoke-static {v13, v14, v0, v15}, Lcom/android/server/content/SyncManager;->sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 1091
    .end local v5    # "finalExtras":Landroid/os/Bundle;
    move-object/from16 v13, p0

    move-wide/from16 v14, p7

    move-object/from16 v25, v51

    goto/16 :goto_b

    .line 1093
    .end local v38    # "extras":Landroid/os/Bundle;
    .end local v46    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v50    # "isSyncable":I
    .end local v51    # "account":Landroid/accounts/AccountAndUser;
    .end local p5    # "allowParallelSyncs":Z
    .restart local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v7    # "authority":Ljava/lang/String;
    .restart local v10    # "isSyncable":I
    .restart local v11    # "account":Landroid/accounts/AccountAndUser;
    .restart local v15    # "allowParallelSyncs":Z
    .local v48, "extras":Landroid/os/Bundle;
    :cond_1a
    move/from16 v45, v2

    move-object/from16 v46, v3

    move/from16 v49, v8

    move/from16 v50, v10

    move-object/from16 v51, v11

    move/from16 p5, v15

    move-object/from16 v38, v48

    move-object/from16 v48, v7

    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v7    # "authority":Ljava/lang/String;
    .end local v10    # "isSyncable":I
    .end local v11    # "account":Landroid/accounts/AccountAndUser;
    .end local v15    # "allowParallelSyncs":Z
    .restart local v38    # "extras":Landroid/os/Bundle;
    .restart local v46    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v48, "authority":Ljava/lang/String;
    .restart local v50    # "isSyncable":I
    .restart local v51    # "account":Landroid/accounts/AccountAndUser;
    .restart local p5    # "allowParallelSyncs":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1094
    .local v0, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "initialize"

    const/4 v12, 0x1

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1096
    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v15, 0x4

    new-array v3, v15, [Ljava/lang/Object;

    const-string/jumbo v4, "scheduleSync: schedule initialisation sync "

    aput-object v4, v3, v40

    .end local v51    # "account":Landroid/accounts/AccountAndUser;
    .restart local v11    # "account":Landroid/accounts/AccountAndUser;
    aput-object v11, v3, v12

    aput-object v1, v3, v47

    aput-object v48, v3, v17

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1099
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v2, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v11, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v36

    move-object/from16 v27, v39

    move/from16 v28, p3

    move/from16 v29, v34

    move-object/from16 v30, v48

    move-object/from16 v31, v0

    move/from16 v32, p5

    move/from16 v33, p10

    invoke-direct/range {v23 .. v33}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-wide/from16 v9, p7

    invoke-direct {v13, v1, v9, v10}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1106
    .end local v0    # "newExtras":Landroid/os/Bundle;
    move-wide v14, v9

    move-object/from16 v25, v11

    goto/16 :goto_b

    .line 1107
    .end local v38    # "extras":Landroid/os/Bundle;
    .end local v46    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v50    # "isSyncable":I
    .end local p5    # "allowParallelSyncs":Z
    .restart local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v7    # "authority":Ljava/lang/String;
    .restart local v10    # "isSyncable":I
    .restart local v15    # "allowParallelSyncs":Z
    .local v48, "extras":Landroid/os/Bundle;
    :cond_1b
    move/from16 v45, v2

    move-object/from16 v46, v3

    move/from16 v49, v8

    move/from16 v50, v10

    move-object v13, v12

    move/from16 p5, v15

    move-object/from16 v38, v48

    move-wide/from16 v9, p7

    move v15, v4

    move v12, v6

    move-object/from16 v48, v7

    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v7    # "authority":Ljava/lang/String;
    .end local v10    # "isSyncable":I
    .end local v15    # "allowParallelSyncs":Z
    .restart local v38    # "extras":Landroid/os/Bundle;
    .restart local v46    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .local v48, "authority":Ljava/lang/String;
    .restart local v50    # "isSyncable":I
    .restart local p5    # "allowParallelSyncs":Z
    move/from16 v8, p6

    if-eq v8, v0, :cond_1d

    move/from16 v0, v50

    .end local v50    # "isSyncable":I
    .local v0, "isSyncable":I
    if-ne v8, v0, :cond_1c

    goto :goto_a

    .line 1118
    :cond_1c
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v3, v15, [Ljava/lang/Object;

    const-string/jumbo v4, "scheduleSync: not handling "

    aput-object v4, v3, v40

    aput-object v11, v3, v12

    aput-object v1, v3, v47

    aput-object v48, v3, v17

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    move-wide v14, v9

    move-object/from16 v25, v11

    goto :goto_b

    .line 1107
    .end local v0    # "isSyncable":I
    .restart local v50    # "isSyncable":I
    :cond_1d
    move/from16 v0, v50

    .line 1109
    .end local v50    # "isSyncable":I
    .restart local v0    # "isSyncable":I
    :goto_a
    iget-object v2, v13, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v3, v15, [Ljava/lang/Object;

    const-string/jumbo v4, "scheduleSync: scheduling sync "

    aput-object v4, v3, v40

    aput-object v11, v3, v12

    aput-object v1, v3, v47

    aput-object v48, v3, v17

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1111
    new-instance v7, Lcom/android/server/content/SyncOperation;

    iget-object v2, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v11, Landroid/accounts/AccountAndUser;->userId:I

    move-object v1, v7

    move/from16 v4, v36

    move-object/from16 v5, v39

    move/from16 v6, p3

    move-object v12, v7

    move/from16 v7, v34

    move-object/from16 v8, v48

    move-object/from16 v23, v14

    move-wide v14, v9

    .end local v14    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v23, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v9, v38

    move/from16 v10, p5

    move-object/from16 v25, v11

    .end local v11    # "account":Landroid/accounts/AccountAndUser;
    .local v25, "account":Landroid/accounts/AccountAndUser;
    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-direct {v13, v12, v14, v15}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 1121
    .end local v0    # "isSyncable":I
    .end local v23    # "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v36    # "owningUid":I
    .end local v37    # "isAlwaysSyncable":Z
    .end local v39    # "owningPackage":Ljava/lang/String;
    .end local v41    # "syncAllowed":Z
    .end local v42    # "delayUntil":J
    .end local v46    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v48    # "authority":Ljava/lang/String;
    .end local p5    # "allowParallelSyncs":Z
    :goto_b
    move-object/from16 v12, p4

    move/from16 v11, p6

    move-wide v8, v14

    move/from16 v5, v16

    move-object/from16 v7, v18

    move-object/from16 v0, v19

    move-object/from16 v3, v25

    move-object/from16 v10, v38

    move/from16 v4, v44

    move-object/from16 v15, p1

    move-object v14, v13

    move/from16 v13, p2

    goto/16 :goto_6

    .line 1004
    .end local v18    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v19    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "account":Landroid/accounts/AccountAndUser;
    .end local v38    # "extras":Landroid/os/Bundle;
    .local v0, "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v3, "account":Landroid/accounts/AccountAndUser;
    .local v7, "accounts":[Landroid/accounts/AccountAndUser;
    .local v10, "extras":Landroid/os/Bundle;
    :cond_1e
    move-object/from16 v19, v0

    move-object/from16 v25, v3

    move/from16 v44, v4

    move/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v38, v10

    move-object v13, v14

    const/16 v17, 0x3

    const/16 v40, 0x0

    const/16 v45, -0x1

    const/16 v47, 0x2

    const/16 v49, 0x5

    move-wide v14, v8

    .line 981
    .end local v0    # "syncableAuthorities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "account":Landroid/accounts/AccountAndUser;
    .end local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v10    # "extras":Landroid/os/Bundle;
    .restart local v18    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v38    # "extras":Landroid/os/Bundle;
    :goto_c
    add-int/lit8 v4, v44, 0x1

    move-object/from16 v12, p4

    move/from16 v11, p6

    move-wide v8, v14

    move/from16 v5, v16

    move-object/from16 v7, v18

    move-object/from16 v10, v38

    move/from16 v2, v40

    const/4 v1, 0x1

    move-object/from16 v15, p1

    move-object v14, v13

    move/from16 v13, p2

    goto/16 :goto_4

    .line 1123
    .end local v18    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v38    # "extras":Landroid/os/Bundle;
    .restart local v7    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v10    # "extras":Landroid/os/Bundle;
    :cond_1f
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;

    .line 1472
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    .line 1473
    return-void
.end method

.method private scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .locals 24
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "minDelay"    # J

    .line 1476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    .line 1477
    .local v4, "isLoggable":Z
    if-nez v1, :cond_0

    .line 1478
    const-string v3, "Can\'t schedule null sync operation."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return-void

    .line 1481
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->hasIgnoreBackoff()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1482
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v8}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    .line 1483
    .local v5, "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v8, -0x1

    if-nez v5, :cond_1

    .line 1484
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find backoff values for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1485
    invoke-static {v11}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1484
    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    new-instance v10, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1487
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v10

    .line 1489
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1490
    .local v10, "now":J
    iget-object v12, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v12, v8

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1491
    :cond_2
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v10

    :goto_0
    nop

    .line 1492
    .local v8, "backoffDelay":J
    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v13, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v12

    .line 1493
    .local v12, "delayUntil":J
    cmp-long v14, v12, v10

    if-lez v14, :cond_3

    sub-long v14, v12, v10

    goto :goto_1

    :cond_3
    const-wide/16 v14, 0x0

    .line 1494
    .local v14, "delayUntilDelay":J
    :goto_1
    if-eqz v4, :cond_4

    .line 1495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backoff delay:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " delayUntil delay:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_4
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide/from16 v19, v8

    move-wide/from16 v8, p2

    .end local v8    # "backoffDelay":J
    .local v19, "backoffDelay":J
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .end local p2    # "minDelay":J
    .local v6, "minDelay":J
    goto :goto_2

    .line 1481
    .end local v5    # "backoff":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v6    # "minDelay":J
    .end local v10    # "now":J
    .end local v12    # "delayUntil":J
    .end local v14    # "delayUntilDelay":J
    .end local v19    # "backoffDelay":J
    .restart local p2    # "minDelay":J
    :cond_5
    move-wide/from16 v8, p2

    move-wide v6, v8

    .line 1501
    .end local p2    # "minDelay":J
    .restart local v6    # "minDelay":J
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_6

    .line 1502
    const-wide/16 v6, 0x0

    .line 1508
    :cond_6
    iget-boolean v3, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_17

    .line 1509
    const/4 v3, 0x0

    .line 1512
    .local v3, "inheritedSyncExemptionFlag":I
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1513
    .local v9, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v10, v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v10, v10, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1514
    if-eqz v4, :cond_7

    .line 1515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate sync is already running. Not scheduling "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_7
    return-void

    .line 1520
    .end local v9    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_8
    goto :goto_3

    .line 1522
    :cond_9
    const/4 v8, 0x0

    .line 1523
    .local v8, "duplicatesCount":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1524
    .local v9, "now":J
    add-long v11, v9, v6

    iput-wide v11, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1525
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v11

    .line 1526
    .local v11, "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    move-object/from16 v12, p1

    .line 1527
    .local v12, "syncToRun":Lcom/android/server/content/SyncOperation;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/content/SyncOperation;

    .line 1528
    .local v14, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v15, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v15, :cond_a

    .line 1529
    goto :goto_4

    .line 1531
    :cond_a
    iget-object v15, v14, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1532
    move-wide/from16 v19, v9

    .end local v9    # "now":J
    .local v19, "now":J
    iget-wide v9, v12, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move v15, v4

    .end local v4    # "isLoggable":Z
    .local v15, "isLoggable":Z
    iget-wide v4, v14, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    cmp-long v4, v9, v4

    if-lez v4, :cond_b

    .line 1533
    move-object v12, v14

    .line 1535
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1531
    .end local v15    # "isLoggable":Z
    .end local v19    # "now":J
    .restart local v4    # "isLoggable":Z
    .restart local v9    # "now":J
    :cond_c
    move v15, v4

    move-wide/from16 v19, v9

    .line 1537
    .end local v4    # "isLoggable":Z
    .end local v9    # "now":J
    .end local v14    # "op":Lcom/android/server/content/SyncOperation;
    .restart local v15    # "isLoggable":Z
    .restart local v19    # "now":J
    :goto_5
    move v4, v15

    move-wide/from16 v9, v19

    goto :goto_4

    .line 1538
    .end local v15    # "isLoggable":Z
    .end local v19    # "now":J
    .restart local v4    # "isLoggable":Z
    .restart local v9    # "now":J
    :cond_d
    move v15, v4

    move-wide/from16 v19, v9

    .end local v4    # "isLoggable":Z
    .end local v9    # "now":J
    .restart local v15    # "isLoggable":Z
    .restart local v19    # "now":J
    const/4 v4, 0x1

    if-le v8, v4, :cond_f

    .line 1539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicates found when scheduling a sync operation: owningUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; owningPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; adapter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v5, :cond_e

    .line 1544
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    goto :goto_6

    .line 1545
    :cond_e
    const-string/jumbo v5, "unknown"

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1539
    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_f
    if-eq v1, v12, :cond_10

    .line 1556
    const-wide/16 v4, 0x0

    cmp-long v9, v6, v4

    if-nez v9, :cond_10

    iget v4, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v5, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v4, v5, :cond_10

    .line 1558
    move-object/from16 v12, p1

    .line 1559
    iget v4, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1560
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1565
    :cond_10
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 1566
    .local v5, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v9, v5, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_11

    .line 1567
    goto :goto_7

    .line 1569
    :cond_11
    iget-object v9, v5, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1570
    if-eq v5, v12, :cond_13

    .line 1571
    if-eqz v15, :cond_12

    .line 1572
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cancelling duplicate sync "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_12
    iget v9, v5, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1575
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1576
    const-string/jumbo v9, "scheduleSyncOperationH-duplicate"

    invoke-direct {v0, v5, v9}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1579
    .end local v5    # "op":Lcom/android/server/content/SyncOperation;
    :cond_13
    goto :goto_7

    .line 1580
    :cond_14
    if-eq v12, v1, :cond_16

    .line 1582
    if-eqz v15, :cond_15

    .line 1583
    const-string v4, "Not scheduling because a duplicate exists."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_15
    return-void

    .line 1593
    :cond_16
    if-lez v3, :cond_18

    .line 1594
    iput v3, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    goto :goto_8

    .line 1508
    .end local v3    # "inheritedSyncExemptionFlag":I
    .end local v8    # "duplicatesCount":I
    .end local v11    # "pending":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    .end local v12    # "syncToRun":Lcom/android/server/content/SyncOperation;
    .end local v15    # "isLoggable":Z
    .end local v19    # "now":J
    .restart local v4    # "isLoggable":Z
    :cond_17
    move v15, v4

    .line 1599
    .end local v4    # "isLoggable":Z
    .restart local v15    # "isLoggable":Z
    :cond_18
    :goto_8
    iget v3, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    .line 1600
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v3

    iput v3, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 1603
    :cond_19
    if-eqz v15, :cond_1a

    .line 1604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduling sync operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v2

    .line 1609
    .local v2, "priority":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1610
    const/4 v3, 0x2

    goto :goto_9

    :cond_1b
    const/4 v3, 0x1

    .line 1614
    .local v3, "networkType":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1615
    const/16 v4, 0x8

    goto :goto_a

    :cond_1c
    const/4 v4, 0x0

    .line 1617
    .local v4, "jobFlags":I
    :goto_a
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    iget v8, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/server/content/SyncJobService;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v5, v8, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1619
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 1620
    invoke-virtual {v5, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 1621
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 1622
    invoke-virtual {v5, v2}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 1623
    invoke-virtual {v5, v4}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 1625
    .local v5, "b":Landroid/app/job/JobInfo$Builder;
    iget-boolean v8, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v8, :cond_1d

    .line 1626
    iget-wide v8, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v10, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    const/4 v10, 0x1

    goto :goto_b

    .line 1628
    :cond_1d
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1e

    .line 1629
    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1631
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1634
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->hasRequireCharging()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1635
    invoke-virtual {v5, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1638
    :cond_1f
    iget v8, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_20

    .line 1640
    const-class v8, Lcom/android/server/DeviceIdleInternal;

    .line 1641
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DeviceIdleInternal;

    .line 1642
    .local v8, "dic":Lcom/android/server/DeviceIdleInternal;
    if-eqz v8, :cond_20

    .line 1643
    const/16 v17, 0x3e8

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1645
    invoke-virtual {v10}, Lcom/android/server/content/SyncManagerConstants;->getKeyExemptionTempWhitelistDurationInSeconds()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    iget v12, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1646
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const/16 v22, 0x0

    .line 1643
    const-string/jumbo v23, "sync by top app"

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    move-wide/from16 v19, v10

    invoke-interface/range {v16 .. v23}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1651
    .end local v8    # "dic":Lcom/android/server/DeviceIdleInternal;
    :cond_20
    const-class v8, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1652
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1653
    .local v8, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v8, :cond_21

    .line 1654
    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v10, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1655
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1656
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v11

    .line 1654
    invoke-virtual {v8, v9, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->reportSyncScheduled(Ljava/lang/String;IZ)V

    .line 1659
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1660
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v13

    .line 1659
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 1661
    return-void
.end method

.method private sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1267
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "sending MESSAGE_CANCEL"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendCancelSyncsMessage() ep="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " why="

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1272
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1273
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1274
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1275
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1276
    return-void
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p0, "message"    # Landroid/os/Message;

    .line 2875
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 2876
    .local v0, "instance":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_0

    .line 2877
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, p0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2879
    :cond_0
    return-void
.end method

.method static sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "onReadyCallback"    # Lcom/android/server/content/SyncManager$OnReadyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;I",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2733
    .local p1, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    new-instance v0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v0, p1, p3}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 2736
    .local v0, "connection":Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2737
    invoke-static {p0, v1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v1

    .line 2738
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2736
    const/16 v3, 0x15

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 2740
    .local v1, "isBound":Z
    if-eqz v1, :cond_0

    .line 2742
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;

    invoke-direct {v3, p0, v0}, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2750
    :cond_0
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->access$2400(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    .line 2752
    :goto_0
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 2
    .param p1, "syncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .line 1258
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1260
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1261
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1262
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1263
    return-void
.end method

.method private setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 851
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 852
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 853
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 855
    return-void

    .line 857
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 859
    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntilSeconds"    # J

    .line 1430
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    .line 1431
    .local v0, "delayUntil":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1433
    .local v2, "absoluteNow":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v0, v2

    add-long/2addr v4, v6

    .local v4, "newDelayUntilTime":J
    goto :goto_0

    .line 1436
    .end local v4    # "newDelayUntilTime":J
    :cond_0
    const-wide/16 v4, 0x0

    .line 1438
    .restart local v4    # "newDelayUntilTime":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    .line 1439
    const/4 v6, 0x2

    const-string v7, "SyncManager"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delay Until time set to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayUntil newDelayUntilTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 1443
    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 8
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;
    .param p2, "includeSyncSettings"    # Z

    .line 3905
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 3906
    return v0

    .line 3909
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 3910
    return v1

    .line 3912
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 3913
    .local v2, "bigger":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    move-object v3, p1

    goto :goto_1

    :cond_3
    move-object v3, p0

    .line 3914
    .local v3, "smaller":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3915
    .local v5, "key":Ljava/lang/String;
    if-nez p2, :cond_4

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3916
    goto :goto_2

    .line 3918
    :cond_4
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3919
    return v1

    .line 3921
    :cond_5
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3922
    return v1

    .line 3924
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 3925
    :cond_7
    return v0
.end method

.method private updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 2
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 361
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 366
    return-void
.end method

.method private declared-synchronized verifyJobScheduler()V
    .locals 11

    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 505
    monitor-exit p0

    return-void

    .line 507
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 509
    .local v0, "token":J
    :try_start_2
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 510
    :try_start_3
    const-string v2, "SyncManager"

    const-string/jumbo v3, "initializing JobScheduler object."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 512
    :cond_1
    :goto_0
    :try_start_4
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 514
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 516
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 518
    .local v2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v3, 0x0

    .line 519
    .local v3, "numPersistedPeriodicSyncs":I
    const/4 v4, 0x0

    .line 520
    .local v4, "numPersistedOneshotSyncs":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    :try_start_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    .line 521
    .local v6, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v8

    .line 522
    .local v8, "op":Lcom/android/server/content/SyncOperation;
    if-eqz v8, :cond_3

    .line 523
    iget-boolean v9, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_2

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 526
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 529
    iget-object v9, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v10, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v10, v7}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 532
    .end local v6    # "job":Landroid/app/job/JobInfo;
    .end local v8    # "op":Lcom/android/server/content/SyncOperation;
    :cond_3
    :goto_2
    goto :goto_1

    .line 533
    :cond_4
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded persisted syncs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " periodic syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oneshot syncs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " total system server jobs, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, "summary":Ljava/lang/String;
    const-string v6, "SyncManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 541
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V

    .line 543
    sget-boolean v6, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    .line 544
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->likelyHasPeriodicSyncs()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 545
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 548
    .end local v2    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    .end local v3    # "numPersistedPeriodicSyncs":I
    .end local v4    # "numPersistedOneshotSyncs":I
    .end local v5    # "summary":Ljava/lang/String;
    :cond_5
    :try_start_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 549
    nop

    .line 550
    monitor-exit p0

    return-void

    .line 548
    .end local p0    # "this":Lcom/android/server/content/SyncManager;
    :catchall_1
    move-exception v2

    :goto_3
    :try_start_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 503
    .end local v0    # "token":J
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private wasPackageEverLaunched(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4071
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4072
    :catch_0
    move-exception v0

    .line 4073
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private whiteListExistingSyncAdaptersIfNeeded()V
    .locals 16

    .line 776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    return-void

    .line 779
    :cond_0
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 780
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 781
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 782
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 783
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 785
    .local v6, "userId":I
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v7, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 786
    .local v8, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 787
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v11, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v11, Landroid/content/SyncAdapterType;

    iget-object v11, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    .line 789
    .local v13, "account":Landroid/accounts/Account;
    invoke-direct {v0, v13, v9, v6}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 790
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget v15, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const-string v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {v14, v13, v0, v15, v2}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 787
    .end local v13    # "account":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 794
    .end local v8    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    goto :goto_1

    .line 781
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "userId":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 796
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method private zeroToEmpty(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 2376
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1465
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1686
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1687
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1688
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1689
    invoke-virtual {v2, p2, v3}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1690
    const-string v3, "cancelScheduledSyncOperation"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1692
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1693
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1695
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1696
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1699
    :cond_2
    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 12
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1669
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1670
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1671
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1672
    const-string v3, "clearScheduledSyncOperations"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1675
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 1676
    :cond_1
    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1678
    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "checkAccountAccess"    # Z

    .line 1127
    const-string v0, "SyncManager"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v1

    .line 1128
    .local v1, "status":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1129
    return v2

    .line 1131
    :cond_0
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 1132
    .local v3, "type":Landroid/content/SyncAdapterType;
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1133
    invoke-virtual {v4, v3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    .line 1134
    .local v4, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    if-nez v4, :cond_1

    .line 1135
    return v2

    .line 1137
    :cond_1
    iget v5, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1138
    .local v5, "owningUid":I
    iget-object v6, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1140
    .local v6, "owningPackage":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not scheduling job "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " -- package not allowed to start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    return v2

    .line 1148
    :cond_2
    goto :goto_0

    .line 1146
    :catch_0
    move-exception v2

    .line 1149
    :goto_0
    if-eqz p4, :cond_3

    invoke-direct {p0, p1, v6, v5}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Access to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " denied for package "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in UID "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v0, 0x3

    return v0

    .line 1155
    :cond_3
    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .line 1975
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1977
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v1}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 1979
    .local v1, "buckets":Lcom/android/server/content/SyncAdapterStateFetcher;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 1980
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/content/SyncManagerConstants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1981
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1983
    if-eqz p3, :cond_0

    .line 1984
    const-string v2, "Detailed Sync History"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v2, p2}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    .line 1987
    :cond_0
    return-void
.end method

.method protected dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2042
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2044
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Pending Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2045
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$rDUHWai3SU0BXk1TE0bLDap9gVc;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2047
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2048
    const/4 v1, 0x0

    .line 2049
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2050
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_0

    .line 2051
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    add-int/lit8 v1, v1, 0x1

    .line 2054
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 2055
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2056
    return-void
.end method

.method protected dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2059
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2061
    .local v0, "pendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const-string v1, "Periodic Syncs: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2062
    sget-object v1, Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$ag0YGuZ1oL06fytmNlyErbNyYcw;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2064
    sget-object v1, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2065
    const/4 v1, 0x0

    .line 2066
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 2067
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    .line 2068
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    add-int/lit8 v1, v1, 0x1

    .line 2071
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    goto :goto_0

    .line 2072
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2073
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2399
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 2400
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    .line 2401
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 38
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "buckets"    # Lcom/android/server/content/SyncAdapterStateFetcher;

    .line 2126
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 2128
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v0, "Data connected: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2129
    const-string v0, "Battery saver: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2130
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2132
    const-string v0, "Background network restriction: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2134
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2135
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v6

    .line 2136
    .local v6, "status":I
    :goto_1
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v6, v5, :cond_4

    if-eq v6, v8, :cond_3

    if-eq v6, v7, :cond_2

    .line 2147
    const-string v9, "Unknown("

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2149
    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2144
    :cond_2
    const-string v9, " enabled"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    goto :goto_2

    .line 2141
    :cond_3
    const-string v9, " whitelisted"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    goto :goto_2

    .line 2138
    :cond_4
    const-string v9, " disabled"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    nop

    .line 2154
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "status":I
    :goto_2
    const-string v0, "Auto sync: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2155
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v6

    .line 2156
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_6

    .line 2157
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 2158
    .local v9, "user":Landroid/content/pm/UserInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "u"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    .line 2159
    invoke-virtual {v11, v12}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2158
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2160
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    goto :goto_3

    .line 2161
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2163
    :cond_6
    const-string v0, "Memory low: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2164
    const-string v0, "Device idle: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/content/SyncManager;->mDeviceIsIdle:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2165
    const-string v0, "Reported active: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/content/SyncManager;->mReportedSyncActive:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2166
    const-string v0, "Clock valid: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2168
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v9

    .line 2170
    .local v9, "accounts":[Landroid/accounts/AccountAndUser;
    const-string v0, "Accounts: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v9, v0, :cond_7

    .line 2172
    array-length v0, v9

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_4

    .line 2174
    :cond_7
    const-string/jumbo v0, "not known yet"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2177
    .local v10, "now":J
    const-string v0, "Now: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2181
    const-string v0, "Uptime: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v10, v11}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2182
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2183
    const-string v0, "Time spent syncing: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2186
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2187
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v12

    .line 2186
    invoke-static {v3, v12, v13}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2188
    const-string v0, ", sync "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v0, :cond_8

    const-string v0, ""

    goto :goto_5

    :cond_8
    const-string/jumbo v0, "not "

    :goto_5
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    const-string v0, "in progress"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Active Syncs: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2195
    .local v12, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2196
    .local v13, "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-wide v14, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v14, v10, v14

    .line 2197
    .local v14, "durationInSeconds":J
    const-string v7, "  "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2199
    invoke-static {v3, v14, v15}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2200
    const-string v7, " - "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    iget-object v7, v13, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v8, p2

    invoke-virtual {v7, v12, v4, v8, v4}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2203
    .end local v13    # "activeSyncContext":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .end local v14    # "durationInSeconds":J
    const/4 v7, 0x3

    const/4 v8, 0x2

    goto :goto_6

    .line 2204
    :cond_9
    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2206
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2207
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2210
    const-string v0, "Sync Status"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 2214
    .local v7, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    iget-object v0, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 2216
    array-length v0, v9

    move v13, v4

    :goto_7
    if-ge v13, v0, :cond_12

    aget-object v14, v9, v13

    .line 2218
    .local v14, "account":Landroid/accounts/AccountAndUser;
    iget-object v15, v1, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v15

    .line 2219
    :try_start_0
    iget-object v5, v1, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    iget v4, v14, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 2220
    .local v4, "unlocked":Z
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2221
    const/4 v5, 0x4

    new-array v15, v5, [Ljava/lang/Object;

    iget-object v5, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v5, v15, v19

    iget v5, v14, Landroid/accounts/AccountAndUser;->userId:I

    .line 2222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0x1

    aput-object v5, v15, v18

    iget-object v5, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v5, v15, v17

    .line 2223
    if-eqz v4, :cond_a

    const-string v5, ""

    goto :goto_8

    :cond_a
    const-string v5, " (locked)"

    :goto_8
    const/16 v16, 0x3

    aput-object v5, v15, v16

    .line 2221
    const-string v5, "Account %s u%d %s%s\n"

    invoke-virtual {v2, v5, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2225
    const-string v5, "======================================================================="

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    new-instance v5, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v15, 0x10

    invoke-direct {v5, v15}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 2227
    .local v5, "table":Lcom/android/server/content/SyncManager$PrintTable;
    new-array v15, v15, [Ljava/lang/Object;

    const-string v21, "Authority"

    const/16 v19, 0x0

    aput-object v21, v15, v19

    const-string v21, "Syncable"

    const/16 v18, 0x1

    aput-object v21, v15, v18

    const-string v21, "Enabled"

    const/16 v17, 0x2

    aput-object v21, v15, v17

    const-string v21, "Stats"

    const/16 v16, 0x3

    aput-object v21, v15, v16

    const-string v21, "Loc"

    const/16 v20, 0x4

    aput-object v21, v15, v20

    const/16 v20, 0x5

    const-string v21, "Poll"

    aput-object v21, v15, v20

    const/16 v20, 0x6

    const-string v21, "Per"

    aput-object v21, v15, v20

    const/16 v20, 0x7

    const-string v21, "Feed"

    aput-object v21, v15, v20

    const/16 v20, 0x8

    const-string v21, "User"

    aput-object v21, v15, v20

    const/16 v20, 0x9

    const-string v21, "Othr"

    aput-object v21, v15, v20

    const/16 v20, 0xa

    const-string v21, "Tot"

    aput-object v21, v15, v20

    const/16 v20, 0xb

    const-string v21, "Fail"

    aput-object v21, v15, v20

    const/16 v20, 0xc

    const-string v21, "Can"

    aput-object v21, v15, v20

    const/16 v20, 0xd

    const-string v21, "Time"

    aput-object v21, v15, v20

    const-string v20, "Last Sync"

    move/from16 v21, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const-string v20, "Backoff"

    const/16 v0, 0xf

    aput-object v20, v15, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v0, v15}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2251
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2252
    .local v0, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v15, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move/from16 v23, v4

    .end local v4    # "unlocked":Z
    .local v23, "unlocked":Z
    iget v4, v14, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v15, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2253
    new-instance v4, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v4, v1}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2261
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2262
    .local v15, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    move-object/from16 v24, v0

    .end local v0    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v24, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    iget-object v0, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v25, v4

    iget-object v4, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2263
    move-object/from16 v0, v24

    move-object/from16 v4, v25

    goto :goto_9

    .line 2265
    :cond_b
    invoke-virtual {v5}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v0

    .line 2266
    .local v0, "row":I
    iget-object v4, v1, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v26, v6

    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v26, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v14, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v27, v9

    .end local v9    # "accounts":[Landroid/accounts/AccountAndUser;
    .local v27, "accounts":[Landroid/accounts/AccountAndUser;
    iget-object v9, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v9, Landroid/content/SyncAdapterType;

    iget-object v9, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v28, v12

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .local v28, "pm":Landroid/content/pm/PackageManager;
    iget v12, v14, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v6, v8, v9, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2267
    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v4

    .line 2272
    .local v4, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2273
    .local v6, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/content/SyncStatusInfo;

    .line 2274
    .local v8, "status":Landroid/content/SyncStatusInfo;
    iget-object v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2275
    iget-object v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2276
    .local v9, "authority":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v29, v4

    .end local v4    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .local v29, "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    const/16 v4, 0x32

    if-le v12, v4, :cond_c

    .line 2277
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 2279
    :cond_c
    const/4 v4, 0x3

    new-array v12, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v12, v4

    iget v4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x1

    aput-object v4, v12, v18

    iget-boolean v4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v17, 0x2

    aput-object v4, v12, v17

    const/4 v4, 0x0

    invoke-virtual {v5, v0, v4, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2281
    new-instance v4, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;

    .local v4, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-direct {v4, v3, v5}, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    .line 2297
    iget-object v12, v8, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    move-object/from16 v30, v3

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v30, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;->INSTANCE:Lcom/android/server/content/-$$Lambda$SyncManager$pdoEVnuSkmOrvULQ9M7Ic-lU5vw;

    move-object/from16 v31, v9

    .end local v9    # "authority":Ljava/lang/String;
    .local v31, "authority":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v32, v14

    .end local v14    # "account":Landroid/accounts/AccountAndUser;
    .local v32, "account":Landroid/accounts/AccountAndUser;
    const-string v14, "Total"

    invoke-interface {v4, v14, v12, v3, v9}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2298
    iget-object v3, v8, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v9, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v9, v1}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v12, v0, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v14, "Today"

    invoke-interface {v4, v14, v3, v9, v12}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2299
    iget-object v3, v8, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v9, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;

    invoke-direct {v9, v1}, Lcom/android/server/content/-$$Lambda$SyncManager$EMXCZP9LDjgUTYbLsEoVu9Ccntw;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v12, v0, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v14, "Yestr"

    invoke-interface {v4, v14, v3, v9, v12}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2301
    const/16 v3, 0xe

    .line 2302
    .local v3, "LAST_SYNC":I
    const/16 v9, 0xf

    .line 2304
    .local v9, "BACKOFF":I
    move v12, v0

    .line 2305
    .local v12, "row1":I
    move/from16 v33, v3

    move-object v14, v4

    .end local v3    # "LAST_SYNC":I
    .end local v4    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .local v14, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .local v33, "LAST_SYNC":I
    iget-wide v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, v10

    if-lez v3, :cond_e

    .line 2306
    add-int/lit8 v3, v12, 0x1

    const/4 v4, 0x1

    .end local v12    # "row1":I
    .local v3, "row1":I
    new-array v1, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v9

    .end local v9    # "BACKOFF":I
    .local v34, "BACKOFF":I
    const-string v9, "D: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v35, v14

    move-object v9, v15

    .end local v14    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v15    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v9, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local v35, "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    sub-long/2addr v14, v10

    const-wide/16 v36, 0x3e8

    div-long v14, v14, v36

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v1, v14

    const/16 v4, 0xf

    invoke-virtual {v5, v12, v4, v1}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2307
    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v1, v14, v10

    if-lez v1, :cond_d

    .line 2308
    add-int/lit8 v1, v3, 0x1

    const/4 v4, 0x1

    .end local v3    # "row1":I
    .local v1, "row1":I
    new-array v12, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "B: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long/2addr v14, v10

    div-long v14, v14, v36

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v12, v14

    const/16 v4, 0xf

    invoke-virtual {v5, v3, v4, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2309
    add-int/lit8 v12, v1, 0x1

    const/4 v3, 0x1

    .end local v1    # "row1":I
    .restart local v12    # "row1":I
    new-array v15, v3, [Ljava/lang/Object;

    move-object/from16 v20, v5

    .end local v5    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v20, "table":Lcom/android/server/content/SyncManager$PrintTable;
    iget-wide v4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v4, v4, v36

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v14

    move-object/from16 v4, v20

    const/16 v5, 0xf

    .end local v20    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v4, "table":Lcom/android/server/content/SyncManager$PrintTable;
    invoke-virtual {v4, v1, v5, v15}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_a

    .line 2307
    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v12    # "row1":I
    .restart local v3    # "row1":I
    .restart local v5    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    :cond_d
    move-object v4, v5

    const/16 v5, 0xf

    .end local v5    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .restart local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    move v12, v3

    goto :goto_a

    .line 2305
    .end local v3    # "row1":I
    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v34    # "BACKOFF":I
    .end local v35    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .restart local v5    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v9, "BACKOFF":I
    .restart local v12    # "row1":I
    .restart local v14    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .restart local v15    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    :cond_e
    move-object v4, v5

    move/from16 v34, v9

    move-object/from16 v35, v14

    move-object v9, v15

    const/16 v5, 0xf

    .line 2313
    .end local v5    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v14    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v15    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v9, "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .restart local v34    # "BACKOFF":I
    .restart local v35    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :goto_a
    move v1, v0

    .line 2314
    .end local v12    # "row1":I
    .restart local v1    # "row1":I
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v36, 0x0

    cmp-long v3, v14, v36

    if-eqz v3, :cond_f

    .line 2315
    add-int/lit8 v3, v1, 0x1

    const/4 v12, 0x1

    .end local v1    # "row1":I
    .restart local v3    # "row1":I
    new-array v14, v12, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v5, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v5, v15, v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SUCCESS"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v14, v12

    const/16 v5, 0xe

    invoke-virtual {v4, v1, v5, v14}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2317
    add-int/lit8 v1, v3, 0x1

    const/4 v14, 0x1

    .end local v3    # "row1":I
    .restart local v1    # "row1":I
    new-array v15, v14, [Ljava/lang/Object;

    move-object v14, v6

    .end local v6    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v14, "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v5, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v5, v6}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v12

    const/16 v5, 0xe

    invoke-virtual {v4, v3, v5, v15}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_b

    .line 2314
    .end local v14    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v6    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_f
    move-object v14, v6

    .line 2319
    .end local v6    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v14    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_b
    iget-wide v5, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v3, v5, v36

    if-eqz v3, :cond_10

    .line 2320
    add-int/lit8 v3, v1, 0x1

    const/4 v5, 0x1

    .end local v1    # "row1":I
    .restart local v3    # "row1":I
    new-array v6, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v15, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v12, v12, v15

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " FAILURE"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v6, v12

    const/16 v5, 0xe

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2322
    add-int/lit8 v1, v3, 0x1

    const/4 v6, 0x1

    .end local v3    # "row1":I
    .restart local v1    # "row1":I
    new-array v15, v6, [Ljava/lang/Object;

    move-object/from16 v22, v7

    .end local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v22, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    iget-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v12

    invoke-virtual {v4, v3, v5, v15}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2324
    add-int/lit8 v3, v1, 0x1

    const/4 v6, 0x1

    .end local v1    # "row1":I
    .restart local v3    # "row1":I
    new-array v7, v6, [Ljava/lang/Object;

    iget-object v6, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    aput-object v6, v7, v12

    invoke-virtual {v4, v1, v5, v7}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_c

    .line 2319
    .end local v3    # "row1":I
    .end local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v1    # "row1":I
    .restart local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :cond_10
    move-object/from16 v22, v7

    const/16 v5, 0xe

    .line 2326
    .end local v0    # "row":I
    .end local v1    # "row1":I
    .end local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v8    # "status":Landroid/content/SyncStatusInfo;
    .end local v9    # "syncAdapterType":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .end local v14    # "settings":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v29    # "syncAuthoritySyncStatus":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;"
    .end local v31    # "authority":Ljava/lang/String;
    .end local v33    # "LAST_SYNC":I
    .end local v34    # "BACKOFF":I
    .end local v35    # "c":Lcom/android/internal/util/function/QuadConsumer;, "Lcom/android/internal/util/function/QuadConsumer<Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .restart local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :goto_c
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object v5, v4

    move-object/from16 v7, v22

    move-object/from16 v0, v24

    move-object/from16 v4, v25

    move-object/from16 v6, v26

    move-object/from16 v9, v27

    move-object/from16 v12, v28

    move-object/from16 v3, v30

    move-object/from16 v14, v32

    goto/16 :goto_9

    .line 2327
    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v24    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .end local v32    # "account":Landroid/accounts/AccountAndUser;
    .local v0, "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .local v3, "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v9, "accounts":[Landroid/accounts/AccountAndUser;
    .local v12, "pm":Landroid/content/pm/PackageManager;
    .local v14, "account":Landroid/accounts/AccountAndUser;
    :cond_11
    move-object/from16 v24, v0

    move-object/from16 v30, v3

    move-object v4, v5

    move-object/from16 v26, v6

    move-object/from16 v22, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    const/16 v17, 0x2

    .end local v0    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v9    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "account":Landroid/accounts/AccountAndUser;
    .restart local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .restart local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v24    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .restart local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v32    # "account":Landroid/accounts/AccountAndUser;
    invoke-virtual {v4, v2}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    .line 2216
    .end local v4    # "table":Lcom/android/server/content/SyncManager$PrintTable;
    .end local v23    # "unlocked":Z
    .end local v24    # "sorted":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    .end local v32    # "account":Landroid/accounts/AccountAndUser;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v0, v21

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_7

    .line 2220
    .end local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v9    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v14    # "account":Landroid/accounts/AccountAndUser;
    :catchall_0
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v26, v6

    move-object/from16 v22, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v9    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "account":Landroid/accounts/AccountAndUser;
    .restart local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    .restart local v32    # "account":Landroid/accounts/AccountAndUser;
    :goto_d
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_d

    .line 2330
    .end local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v30    # "sb":Ljava/lang/StringBuilder;
    .end local v32    # "account":Landroid/accounts/AccountAndUser;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v9    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_12
    move-object/from16 v30, v3

    move-object/from16 v26, v6

    move-object/from16 v22, v7

    move-object/from16 v27, v9

    move-object/from16 v28, v12

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .end local v9    # "accounts":[Landroid/accounts/AccountAndUser;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v27    # "accounts":[Landroid/accounts/AccountAndUser;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v30    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 2332
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2333
    const-string v0, "Per Adapter History"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2334
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 2337
    move-object/from16 v1, v22

    .end local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .local v1, "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2339
    .local v3, "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2341
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2342
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2343
    const-string v4, " u"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2344
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2345
    const-string v4, " ["

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2346
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2348
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2350
    const-string v4, "    Per source last syncs:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_f
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_13

    .line 2352
    const-string v5, "      "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2353
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    aget-object v7, v7, v4

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "%8s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2354
    const-string v6, "  Success: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2355
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v6, v6, v4

    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    const-string v6, "  Failure: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2358
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    iget-object v6, v6, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v6, v6, v4

    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_13
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2361
    .end local v4    # "j":I
    const-string v4, "    Last syncs:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_10
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v6

    if-ge v4, v6, :cond_14

    .line 2363
    const-string v6, "      "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v4}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2365
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 2366
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/SyncStatusInfo;

    invoke-virtual {v6, v4}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2367
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2362
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2369
    .end local v4    # "j":I
    :cond_14
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/SyncStatusInfo;

    invoke-virtual {v4}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v4

    if-nez v4, :cond_15

    .line 2370
    const-string v4, "      N/A"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    .end local v3    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;"
    :cond_15
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v22, v1

    goto/16 :goto_e

    .line 2373
    .end local v0    # "i":I
    .end local v1    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    .restart local v22    # "statuses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/content/SyncStatusInfo;>;>;"
    :cond_16
    return-void
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 16
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 1213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1214
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v1, "periodicSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    .line 1217
    .local v3, "op":Lcom/android/server/content/SyncOperation;
    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1218
    new-instance v4, Landroid/content/PeriodicSync;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1219
    invoke-virtual {v3}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v9

    iget-wide v10, v3, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iget-wide v14, v3, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long v12, v14, v12

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1218
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1217
    :cond_0
    move-object/from16 v5, p1

    .line 1221
    .end local v3    # "op":Lcom/android/server/content/SyncOperation;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1223
    :cond_2
    move-object/from16 v5, p1

    return-object v1
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1253
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .locals 6
    .param p1, "userId"    # I

    .line 1242
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1243
    .local v0, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/SyncAdapterType;

    .line 1244
    .local v1, "types":[Landroid/content/SyncAdapterType;
    const/4 v2, 0x0

    .line 1245
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1246
    .local v4, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v5, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v1, v2

    .line 1247
    nop

    .end local v4    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    add-int/lit8 v2, v2, 0x1

    .line 1248
    goto :goto_0

    .line 1249
    :cond_0
    return-object v1
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public synthetic lambda$new$0$SyncManager(Landroid/accounts/Account;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 671
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 676
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 672
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 678
    :cond_0
    return-void
.end method

.method public synthetic lambda$onStartUser$1$SyncManager(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 741
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStartUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onStopUser$3$SyncManager(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 757
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStopUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onUnlockUser$2$SyncManager(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 749
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUnlockUser: user="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$scheduleSync$4$SyncManager(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "finalExtras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "minDelayMillis"    # J
    .param p9, "syncExemptionFlag"    # I
    .param p10, "callingUid"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "result"    # Landroid/os/Bundle;

    .line 1033
    move-object/from16 v0, p13

    if-eqz v0, :cond_1

    .line 1034
    const-string v1, "booleanResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    move-object/from16 v1, p1

    iget-object v3, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v2 .. v15}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    goto :goto_0

    .line 1034
    :cond_0
    move-object/from16 v1, p1

    goto :goto_0

    .line 1033
    :cond_1
    move-object/from16 v1, p1

    .line 1041
    :goto_0
    return-void
.end method

.method public synthetic lambda$scheduleSync$5$SyncManager(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .locals 15
    .param p1, "account"    # Landroid/accounts/AccountAndUser;
    .param p2, "reason"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "finalExtras"    # Landroid/os/Bundle;
    .param p5, "targetSyncState"    # I
    .param p6, "minDelayMillis"    # J
    .param p8, "syncExemptionFlag"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingPackage"    # Ljava/lang/String;

    .line 1087
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 768
    const/16 v0, 0x226

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManagerConstants;->start()V

    .line 773
    :goto_0
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 741
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$CjX_2uO4O4xJPQnKzeqvGwd87Dc;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 742
    return-void
.end method

.method public onStopUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 753
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 755
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$4nklbtZn-JuPLOkU32f34xZoiug;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void

    .line 755
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 745
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 747
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/-$$Lambda$SyncManager$6y-gkGdDn-rSLmR9G8Pz_n9zy2A;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 750
    return-void

    .line 747
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "why"    # Ljava/lang/String;

    .line 1191
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 1192
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1191
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1193
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1195
    return-void
.end method

.method public resetTodayStats()V
    .locals 2

    .line 4066
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 4067
    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "syncExemptionFlag"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPid"    # I
    .param p8, "callingPackage"    # Ljava/lang/String;

    .line 1233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1234
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "upload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1235
    sget-wide v8, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v7, -0x2

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v0

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v1 .. v14}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 1238
    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    .locals 14
    .param p1, "requestedAccount"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "requestedAuthority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "targetSyncState"    # I
    .param p7, "syncExemptionFlag"    # I
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;

    .line 905
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 908
    return-void
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pollFrequency"    # J
    .param p4, "flex"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1203
    new-instance v8, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1205
    .local v0, "payload":Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1206
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1207
    return-void
.end method
