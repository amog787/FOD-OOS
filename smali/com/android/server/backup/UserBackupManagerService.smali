.class public Lcom/android/server/backup/UserBackupManagerService;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field private static final BACKUP_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.BACKUP_FINISHED"

.field private static final BACKUP_FINISHED_PACKAGE_EXTRA:Ljava/lang/String; = "packageName"

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field private static final BIND_TIMEOUT_INTERVAL:J = 0x2710L

.field private static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field private static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field private static final CLEAR_DATA_TIMEOUT_INTERVAL:J = 0x7530L

.field private static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final INITIALIZATION_DELAY_MILLIS:J = 0xbb8L

.field private static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field private static final OP_ACKNOWLEDGED:I = 0x1

.field public static final OP_PENDING:I = 0x0

.field private static final OP_TIMEOUT:I = -0x1

.field public static final OP_TYPE_BACKUP:I = 0x2

.field public static final OP_TYPE_BACKUP_WAIT:I = 0x0

.field public static final OP_TYPE_RESTORE_WAIT:I = 0x1

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERIAL_ID_FILE:Ljava/lang/String; = "serial_id"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAncestralSerialNumberFile:Ljava/io/File;

.field private mAncestralToken:J

.field private mAutoRestore:Z

.field private final mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field private final mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field private final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field private volatile mBackupRunning:Z

.field private final mBaseStateDir:Ljava/io/File;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private final mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentOpLock:Ljava/lang/Object;

.field private final mCurrentOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCurrentOpLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentToken:J

.field private final mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field private mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullBackupScheduleFile:Ljava/io/File;

.field private mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field private mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingRestores"
        }
    .end annotation
.end field

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private final mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field private final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private final mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingRestores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRegisterTransportsRequestedTime:J

.field private final mRng:Ljava/security/SecureRandom;

.field private final mRunBackupIntent:Landroid/app/PendingIntent;

.field private final mRunInitIntent:Landroid/app/PendingIntent;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation
.end field

.field private mSetupComplete:Z

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserBackupThread:Landroid/os/HandlerThread;

.field private final mUserId:I

.field private final mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 855
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .locals 19
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Lcom/android/server/backup/Trampoline;
    .param p4, "userBackupThread"    # Landroid/os/HandlerThread;
    .param p5, "baseStateDir"    # Ljava/io/File;
    .param p6, "dataDir"    # Ljava/io/File;
    .param p7, "transportManager"    # Lcom/android/server/backup/TransportManager;

    .line 467
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 281
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 293
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 306
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 307
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 321
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 347
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 351
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 365
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 366
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 367
    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 987
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1161
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 468
    iput v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 469
    const-string v3, "context cannot be null"

    invoke-static {v11, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 471
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 472
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 473
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 475
    const-string v3, "alarm"

    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 476
    const-string/jumbo v3, "power"

    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 477
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 479
    const-string/jumbo v3, "trampoline cannot be null"

    move-object/from16 v13, p3

    invoke-static {v13, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 482
    new-instance v3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 483
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 484
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->start()V

    .line 486
    const-string/jumbo v3, "userBackupThread cannot be null"

    invoke-static {v12, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iput-object v12, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserBackupThread:Landroid/os/HandlerThread;

    .line 488
    new-instance v3, Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 492
    .local v14, "resolver":Landroid/content/ContentResolver;
    invoke-static {v11, v2}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 493
    const/4 v15, 0x1

    const-string v3, "backup_auto_restore"

    invoke-static {v14, v3, v15, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    move v3, v15

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 496
    new-instance v3, Lcom/android/server/backup/internal/SetupObserver;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v3, v1, v4}, Lcom/android/server/backup/internal/SetupObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V

    move-object v9, v3

    .line 497
    .local v9, "setupObserver":Landroid/database/ContentObserver;
    nop

    .line 498
    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 497
    invoke-virtual {v14, v3, v10, v9, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 503
    const-string v3, "baseStateDir cannot be null"

    move-object/from16 v8, p5

    invoke-static {v8, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 506
    if-nez v2, :cond_1

    .line 507
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 508
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELinux restorecon failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    const-string v3, "dataDir cannot be null"

    move-object/from16 v7, p6

    invoke-static {v7, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 516
    new-instance v3, Lcom/android/server/backup/BackupPasswordManager;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 519
    new-instance v4, Lcom/android/server/backup/internal/RunBackupReceiver;

    invoke-direct {v4, v1}, Lcom/android/server/backup/internal/RunBackupReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 520
    .local v4, "runBackupReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v3

    .line 521
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.app.backup.intent.RUN"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    nop

    .line 524
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/16 v16, 0x0

    .line 522
    const-string v17, "android.permission.BACKUP"

    move-object/from16 v3, p2

    move-object/from16 v18, v6

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .local v18, "filter":Landroid/content/IntentFilter;
    move-object/from16 v7, v17

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 529
    new-instance v6, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v6, v1}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 530
    .local v6, "runInitReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 531
    .end local v18    # "filter":Landroid/content/IntentFilter;
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.app.backup.intent.INIT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    nop

    .line 534
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 532
    const-string v17, "android.permission.BACKUP"

    move-object/from16 v5, p2

    move-object v8, v3

    move-object/from16 v18, v9

    .end local v9    # "setupObserver":Landroid/database/ContentObserver;
    .local v18, "setupObserver":Landroid/database/ContentObserver;
    move-object/from16 v9, v17

    move v15, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 539
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.app.backup.intent.RUN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v5, "backupIntent":Landroid/content/Intent;
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    nop

    .line 547
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 542
    invoke-static {v11, v15, v5, v15, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 549
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.backup.intent.INIT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v8, "initIntent":Landroid/content/Intent;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    nop

    .line 557
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 552
    invoke-static {v11, v15, v8, v15, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 560
    new-instance v7, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v10, "pending"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 561
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 562
    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 564
    new-instance v7, Lcom/android/server/backup/BackupManagerConstants;

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lcom/android/server/backup/BackupManagerConstants;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 568
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerConstants;->start()V

    .line 573
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v7

    .line 574
    :try_start_0
    invoke-direct {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 575
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    const-string/jumbo v0, "transportManager cannot be null"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/TransportManager;

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 578
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v7, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;

    invoke-direct {v7, v1}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, v7}, Lcom/android/server/backup/TransportManager;->setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V

    .line 579
    move-object v15, v3

    move-object v10, v4

    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "runBackupReceiver":Landroid/content/BroadcastReceiver;
    .local v10, "runBackupReceiver":Landroid/content/BroadcastReceiver;
    .local v15, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 580
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;

    invoke-direct {v4, v3}, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;-><init>(Lcom/android/server/backup/TransportManager;)V

    move-object/from16 v16, v5

    move-object v3, v6

    .end local v5    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "runInitReceiver":Landroid/content/BroadcastReceiver;
    .local v3, "runInitReceiver":Landroid/content/BroadcastReceiver;
    .local v16, "backupIntent":Landroid/content/Intent;
    const-wide/16 v5, 0xbb8

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY;

    invoke-direct {v4, v1}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*backup*-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 591
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v5, "fb-schedule"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 592
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->initPackageTracking()V

    .line 593
    return-void

    .line 575
    .end local v10    # "runBackupReceiver":Landroid/content/BroadcastReceiver;
    .end local v15    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "backupIntent":Landroid/content/Intent;
    .local v3, "filter":Landroid/content/IntentFilter;
    .restart local v4    # "runBackupReceiver":Landroid/content/BroadcastReceiver;
    .restart local v5    # "backupIntent":Landroid/content/Intent;
    .restart local v6    # "runInitReceiver":Landroid/content/BroadcastReceiver;
    :catchall_0
    move-exception v0

    move-object/from16 v9, p7

    move-object v15, v3

    move-object v10, v4

    move-object/from16 v16, v5

    move-object v3, v6

    .end local v4    # "runBackupReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "runInitReceiver":Landroid/content/BroadcastReceiver;
    .local v3, "runInitReceiver":Landroid/content/BroadcastReceiver;
    .restart local v10    # "runBackupReceiver":Landroid/content/BroadcastReceiver;
    .restart local v15    # "filter":Landroid/content/IntentFilter;
    .restart local v16    # "backupIntent":Landroid/content/Intent;
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashSet;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/backup/UserBackupManagerService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/backup/UserBackupManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 1284
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 1285
    .local v0, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    .line 1287
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1288
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1287
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1292
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1294
    :cond_1
    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1302
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1303
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1304
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1305
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1306
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 1307
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 1308
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1310
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1315
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x10

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1316
    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1317
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1319
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "uid":I
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    goto :goto_0

    .line 1320
    :cond_3
    return-void
.end method

.method private allAgentPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1364
    const/high16 v0, 0x8000000

    .line 1365
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1

    .line 1366
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1367
    .local v2, "numPackages":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "a":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1368
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1370
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1371
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1379
    :cond_0
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x400

    iget v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object v5, v6

    .line 1381
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1382
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    goto :goto_2

    .line 1374
    :cond_1
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_2
    goto :goto_3

    .line 1384
    :catch_0
    move-exception v5

    .line 1385
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1367
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1388
    .end local v3    # "a":I
    :cond_2
    return-object v1
.end method

.method private clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkFlagAllowClearUserDataOnFailedRestore"    # Z
    .param p3, "keepSystemState"    # Z

    .line 1522
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1526
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    .line 1528
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .local v3, "shouldClearData":Z
    :goto_0
    goto :goto_1

    .line 1531
    .end local v3    # "shouldClearData":Z
    :cond_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1535
    .restart local v3    # "shouldClearData":Z
    :goto_1
    if-nez v3, :cond_3

    .line 1540
    return-void

    .line 1545
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "shouldClearData":Z
    :cond_3
    nop

    .line 1547
    new-instance v0, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1549
    .local v0, "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1550
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1552
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v1, p1, p3, v0, v4}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1556
    goto :goto_2

    .line 1554
    :catch_0
    move-exception v1

    .line 1559
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    .line 1560
    .local v4, "timeoutMark":J
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v1, v6, v4

    if-gez v1, :cond_4

    .line 1562
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1568
    goto :goto_3

    .line 1563
    :catch_1
    move-exception v1

    .line 1565
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 1566
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted while waiting for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " data to be cleared"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    nop

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 1571
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz v1, :cond_5

    .line 1572
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing app data for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " timed out"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    .end local v4    # "timeoutMark":J
    :cond_5
    monitor-exit v3

    .line 1575
    return-void

    .line 1574
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 1542
    .end local v0    # "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    :catch_2
    move-exception v0

    .line 1543
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to clear data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void
.end method

.method public static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 9
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trampoline"    # Lcom/android/server/backup/Trampoline;
    .param p3, "userBackupThread"    # Landroid/os/HandlerThread;
    .param p4, "baseStateDir"    # Ljava/io/File;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 437
    new-instance v8, Lcom/android/server/backup/UserBackupManagerService;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;-><init>(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    return-object v8
.end method

.method static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 11
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trampoline"    # Lcom/android/server/backup/Trampoline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/Trampoline;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/server/backup/UserBackupManagerService;"
        }
    .end annotation

    .line 383
    .local p3, "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    nop

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 384
    const-string v1, "backup_transport"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "currentTransport":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v9, Lcom/android/server/backup/TransportManager;

    invoke-direct {v9, p0, p1, p3, v0}, Lcom/android/server/backup/TransportManager;-><init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 396
    .local v9, "transportManager":Lcom/android/server/backup/TransportManager;
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    .line 397
    .local v1, "baseStateDir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getDataDir(I)Ljava/io/File;

    move-result-object v10

    .line 399
    .local v10, "dataDir":Ljava/io/File;
    new-instance v6, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v6, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 401
    .local v6, "userBackupThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    move-object v8, v10

    invoke-static/range {v3 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2272
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataChanged but no participant pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2273
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    return-void

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2283
    new-instance v1, Lcom/android/server/backup/keyvalue/BackupRequest;

    invoke-direct {v1, p1}, Lcom/android/server/backup/keyvalue/BackupRequest;-><init>(Ljava/lang/String;)V

    .line 2284
    .local v1, "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2290
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 2293
    .end local v1    # "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2296
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2297
    return-void

    .line 2293
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2303
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2303
    const-string v3, "android.permission.BACKUP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    .line 2307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2311
    :cond_0
    const-string v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2312
    const-string v0, "@pm@"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    .line 2314
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2315
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2316
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private dequeueFullBackupLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQueueLock"
        }
    .end annotation

    .line 1977
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1978
    .local v0, "numPackages":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1979
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1980
    .local v2, "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v3, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1981
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1978
    .end local v2    # "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1984
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3507
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 3508
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v1, "Defined backup agents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3509
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3510
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3511
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3512
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 3513
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3514
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3515
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 3516
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3519
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3520
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "not "

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setup complete / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "not "

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pending init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3520
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-restore is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-eqz v2, :cond_3

    const-string v2, "enabled"

    goto :goto_3

    :cond_3
    const-string v2, "disabled"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3524
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_4

    const-string v1, "Backup currently running"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3525
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Backup in progress"

    goto :goto_4

    :cond_5
    const-string v1, "No backups running"

    :goto_4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last backup pass started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3526
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  next scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3530
    const-string v1, "Transport whitelist:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3532
    .local v2, "transport":Landroid/content/ComponentName;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    .end local v2    # "transport":Landroid/content/ComponentName;
    goto :goto_5

    .line 3536
    :cond_6
    const-string v1, "Available transports:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3537
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    .line 3538
    .local v1, "transports":[Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 3539
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_9

    aget-object v5, v1, v4

    .line 3540
    .local v5, "t":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "  * "

    goto :goto_7

    .line 3541
    :cond_7
    const-string v7, "    "

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3540
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3543
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3544
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3545
    .local v6, "dir":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       destination: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3546
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3545
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3547
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3548
    invoke-virtual {v8, v5}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3547
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_8
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 3550
    .local v10, "f":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "       "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3551
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " state bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3550
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3549
    .end local v10    # "f":Ljava/io/File;
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 3556
    .end local v6    # "dir":Ljava/io/File;
    :cond_8
    goto :goto_9

    .line 3553
    :catch_0
    move-exception v6

    .line 3554
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "BackupManagerService"

    const-string v8, "Error in transport"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3539
    .end local v5    # "t":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 3560
    :cond_9
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    .line 3562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3563
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3564
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3565
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_a

    .line 3567
    :cond_a
    const-string v2, "Ancestral: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3568
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3569
    const-string v2, "Current:   "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3570
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3572
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3573
    .local v2, "numPackages":I
    const-string v3, "Participants:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3574
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_c

    .line 3575
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3576
    .local v4, "uid":I
    const-string v5, "  uid: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3577
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3578
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 3579
    .local v5, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3580
    .local v7, "app":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3581
    .end local v7    # "app":Ljava/lang/String;
    goto :goto_c

    .line 3574
    .end local v4    # "uid":I
    .end local v5    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3584
    .end local v3    # "i":I
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3585
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_d

    const-string/jumbo v4, "none"

    goto :goto_d

    :cond_d
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3584
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3586
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-eqz v3, :cond_e

    .line 3587
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3588
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3589
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_e

    .line 3592
    :cond_e
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v3

    .line 3593
    .local v3, "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ever backed up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3594
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3595
    .local v5, "pkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3596
    .end local v5    # "pkg":Ljava/lang/String;
    goto :goto_f

    .line 3598
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending key/value backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3599
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 3600
    .local v5, "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3601
    .end local v5    # "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    goto :goto_10

    .line 3603
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup queue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 3605
    .local v5, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    const-string v6, "    "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3606
    iget-wide v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 3607
    const-string v6, " : "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3608
    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3609
    .end local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    goto :goto_11

    .line 3610
    .end local v1    # "transports":[Ljava/lang/String;
    .end local v2    # "numPackages":I
    .end local v3    # "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    monitor-exit v0

    .line 3611
    return-void

    .line 3610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private fullBackupAllowable(Ljava/lang/String;)Z
    .locals 9
    .param p1, "transportName"    # Ljava/lang/String;

    .line 2020
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BackupManagerService"

    if-nez v0, :cond_0

    .line 2021
    const-string v0, "Transport not registered; full data backup not performed"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    return v1

    .line 2028
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    .local v0, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2030
    .local v3, "stateDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "@pm@"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2031
    .local v4, "pmState":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    .line 2033
    const-string v5, "Full backup requested but dataset not yet initialized"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    return v1

    .line 2040
    .end local v0    # "transportDirName":Ljava/lang/String;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "pmState":Ljava/io/File;
    :cond_1
    nop

    .line 2042
    const/4 v0, 0x1

    return v0

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get transport name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    return v1
.end method

.method private getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2396
    new-instance v0, Ljava/io/File;

    .line 2397
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "serial_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2399
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/utils/FileUtils;->createNewFile(Ljava/io/File;)Ljava/io/File;

    .line 2401
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .locals 2
    .param p1, "operationType"    # I

    .line 1754
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const/4 v0, -0x1

    return v0

    .line 1758
    :cond_0
    const/16 v0, 0x12

    return v0

    .line 1756
    :cond_1
    const/16 v0, 0x11

    return v0
.end method

.method public static getSetupCompleteSettingForUser(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 452
    nop

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private initPackageTracking()V
    .locals 8

    .line 838
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 839
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "tokenStream":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 841
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 842
    .local v2, "version":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 843
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 844
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 846
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 847
    .local v3, "numPackages":I
    if-ltz v3, :cond_0

    .line 848
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 849
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 850
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 851
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    nop

    .end local v5    # "pkgName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 855
    .end local v2    # "version":I
    .end local v3    # "numPackages":I
    .end local v4    # "i":I
    :cond_0
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 839
    :catchall_0
    move-exception v1

    .end local v0    # "tokenStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 855
    .restart local v0    # "tokenStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 858
    .end local v0    # "tokenStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to read token file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 855
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 857
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    const-string v1, "BackupManagerService"

    const-string v2, "No ancestral data"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v0    # "fnf":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 862
    :goto_2
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 863
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->init()V

    .line 865
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 868
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 871
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 872
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 876
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 878
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 876
    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 884
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 885
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 886
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 889
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v7, 0x0

    .line 887
    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 893
    return-void

    .line 868
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "sdFilter":Landroid/content/IntentFilter;
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public static synthetic lambda$9cuIH_XloqtNByp_6hXeGaVars8(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method private onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "transportDirName"    # Ljava/lang/String;

    .line 1136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    sub-long/2addr v0, v2

    .line 1137
    .local v0, "timeMs":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms after first request (delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    .end local v0    # "timeMs":J
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1142
    .local v0, "stateDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1144
    new-instance v1, Ljava/io/File;

    const-string v2, "_need_init_"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1145
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1146
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1147
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1150
    const-wide/32 v3, 0xea60

    .line 1151
    .local v3, "delay":J
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    .line 1152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1151
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1153
    .end local v3    # "delay":J
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1155
    :cond_0
    :goto_0
    return-void
.end method

.method private parseLeftoverJournals()V
    .locals 6

    .line 1030
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1031
    .local v0, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/DataChangedJournal;

    .line 1032
    .local v2, "journal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1034
    :try_start_0
    new-instance v3, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;

    invoke-direct {v3, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    goto :goto_1

    .line 1039
    :catch_0
    move-exception v3

    .line 1040
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v2    # "journal":Lcom/android/server/backup/DataChangedJournal;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1044
    :cond_1
    return-void
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    .line 896
    move-object/from16 v1, p0

    const-string v2, "Package "

    const-string v3, "BackupManagerService"

    const/4 v4, 0x0

    .line 897
    .local v4, "changed":Z
    const/4 v5, 0x0

    .line 898
    .local v5, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 899
    invoke-static {v0, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v6

    .line 901
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 902
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v9, v0

    .line 903
    .local v9, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    move-object v10, v0

    .line 902
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    nop

    .line 904
    :try_start_2
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-object v11, v0

    .line 902
    .local v11, "in":Ljava/io/DataInputStream;
    nop

    .line 905
    :try_start_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move v12, v0

    .line 906
    .local v12, "version":I
    const/4 v0, 0x1

    const/4 v13, 0x0

    if-eq v12, v0, :cond_0

    .line 907
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown backup schedule version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 908
    nop

    .line 961
    :try_start_5
    invoke-static {v13, v11}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v13, v10}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v13, v9}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 908
    return-object v13

    .line 902
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "version":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v7, v9

    goto/16 :goto_9

    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v7, v9

    goto/16 :goto_8

    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v7, v9

    goto/16 :goto_7

    .line 911
    .restart local v12    # "version":I
    :cond_0
    :try_start_8
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v14, v0

    .line 912
    .local v14, "numPackages":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 918
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v14}, Ljava/util/HashSet;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    move-object v15, v0

    .line 920
    .local v15, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_3

    .line 921
    :try_start_9
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 922
    .local v16, "pkgName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 923
    .local v19, "lastBackup":J
    move-object/from16 v7, v16

    .end local v16    # "pkgName":Ljava/lang/String;
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 925
    :try_start_a
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move/from16 v21, v4

    const/4 v4, 0x0

    .end local v4    # "changed":Z
    .local v21, "changed":Z
    :try_start_b
    invoke-virtual {v0, v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 926
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 927
    invoke-static {v4, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 929
    new-instance v4, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v16, v9

    move-wide/from16 v8, v19

    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "lastBackup":J
    .local v8, "lastBackup":J
    .local v16, "fstream":Ljava/io/FileInputStream;
    :try_start_c
    invoke-direct {v4, v7, v8, v9}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 927
    .end local v8    # "lastBackup":J
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v19    # "lastBackup":J
    :cond_1
    move-object/from16 v16, v9

    move-wide/from16 v8, v19

    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "lastBackup":J
    .restart local v8    # "lastBackup":J
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 926
    .end local v8    # "lastBackup":J
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v19    # "lastBackup":J
    :cond_2
    move-object/from16 v16, v9

    move-wide/from16 v8, v19

    .line 932
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "lastBackup":J
    .restart local v8    # "lastBackup":J
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v19, "pkg":Landroid/content/pm/PackageInfo;
    const-string v0, " no longer eligible for full backup"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 941
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_2
    goto :goto_4

    .line 936
    :catch_0
    move-exception v0

    goto :goto_3

    .line 902
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "lastBackup":J
    .end local v12    # "version":I
    .end local v13    # "i":I
    .end local v14    # "numPackages":I
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v7, v9

    move/from16 v4, v21

    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 936
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v12    # "version":I
    .restart local v13    # "i":I
    .restart local v14    # "numPackages":I
    .restart local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v19, "lastBackup":J
    :catch_1
    move-exception v0

    move-object/from16 v16, v9

    move-wide/from16 v8, v19

    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "lastBackup":J
    .restart local v8    # "lastBackup":J
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v8    # "lastBackup":J
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v19    # "lastBackup":J
    :catch_2
    move-exception v0

    move/from16 v21, v4

    move-object/from16 v16, v9

    move-wide/from16 v8, v19

    .line 938
    .end local v4    # "changed":Z
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v19    # "lastBackup":J
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "lastBackup":J
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v21    # "changed":Z
    :goto_3
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, " not installed; dropping from full backup"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 920
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "lastBackup":J
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v16

    move/from16 v4, v21

    goto/16 :goto_0

    .line 902
    .end local v12    # "version":I
    .end local v13    # "i":I
    .end local v14    # "numPackages":I
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v16

    move/from16 v4, v21

    goto/16 :goto_7

    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v0

    move/from16 v21, v4

    move-object v2, v0

    move-object v7, v9

    .end local v4    # "changed":Z
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v21    # "changed":Z
    goto/16 :goto_7

    .line 920
    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v12    # "version":I
    .restart local v13    # "i":I
    .restart local v14    # "numPackages":I
    .restart local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    move/from16 v21, v4

    move-object/from16 v16, v9

    .line 946
    .end local v4    # "changed":Z
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v13    # "i":I
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v21    # "changed":Z
    :try_start_e
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    move/from16 v4, v21

    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    :goto_5
    :try_start_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz v2, :cond_7

    :try_start_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 947
    .local v2, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 948
    invoke-static {v7, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 950
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 954
    new-instance v7, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move v9, v12

    const-wide/16 v12, 0x0

    .end local v12    # "version":I
    .local v9, "version":I
    invoke-direct {v7, v8, v12, v13}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 955
    const/4 v4, 0x1

    goto :goto_6

    .line 950
    .end local v9    # "version":I
    .restart local v12    # "version":I
    :cond_4
    move v9, v12

    .end local v12    # "version":I
    .restart local v9    # "version":I
    goto :goto_6

    .line 948
    .end local v9    # "version":I
    .restart local v12    # "version":I
    :cond_5
    move v9, v12

    .end local v12    # "version":I
    .restart local v9    # "version":I
    goto :goto_6

    .line 947
    .end local v9    # "version":I
    .restart local v12    # "version":I
    :cond_6
    move v9, v12

    .line 958
    .end local v2    # "app":Landroid/content/pm/PackageInfo;
    .end local v12    # "version":I
    .restart local v9    # "version":I
    :goto_6
    move v12, v9

    goto :goto_5

    .line 902
    .end local v9    # "version":I
    .end local v14    # "numPackages":I
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v16

    goto :goto_7

    .line 960
    .restart local v12    # "version":I
    .restart local v14    # "numPackages":I
    .restart local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    move v9, v12

    .end local v12    # "version":I
    .restart local v9    # "version":I
    :try_start_11
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 961
    .end local v9    # "version":I
    .end local v14    # "numPackages":I
    .end local v15    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :try_start_12
    invoke-static {v2, v11}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .end local v11    # "in":Ljava/io/DataInputStream;
    :try_start_13
    invoke-static {v2, v10}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v7, v16

    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .local v7, "fstream":Ljava/io/FileInputStream;
    :try_start_14
    invoke-static {v2, v7}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 965
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 902
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    :catchall_7
    move-exception v0

    move-object/from16 v7, v16

    move-object v2, v0

    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    :catchall_8
    move-exception v0

    move-object/from16 v7, v16

    move-object v2, v0

    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    :catchall_9
    move-exception v0

    move-object/from16 v7, v16

    move-object v2, v0

    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v4    # "changed":Z
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v21    # "changed":Z
    :catchall_a
    move-exception v0

    move-object/from16 v7, v16

    move-object v2, v0

    move/from16 v4, v21

    .end local v16    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .local v9, "fstream":Ljava/io/FileInputStream;
    :catchall_b
    move-exception v0

    move/from16 v21, v4

    move-object v7, v9

    move-object v2, v0

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_7
    :try_start_15
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 961
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_c
    move-exception v0

    move-object v8, v0

    :try_start_16
    invoke-static {v2, v11}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    throw v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 902
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_d
    move-exception v0

    move-object v2, v0

    goto :goto_8

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    :catchall_e
    move-exception v0

    move/from16 v21, v4

    move-object v7, v9

    move-object v2, v0

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_8
    :try_start_17
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    .line 961
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_f
    move-exception v0

    move-object v8, v0

    :try_start_18
    invoke-static {v2, v10}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    throw v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    .line 902
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_10
    move-exception v0

    move-object v2, v0

    goto :goto_9

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    :catchall_11
    move-exception v0

    move/from16 v21, v4

    move-object v7, v9

    move-object v2, v0

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_9
    :try_start_19
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    .line 961
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_12
    move-exception v0

    move-object v8, v0

    :try_start_1a
    invoke-static {v2, v7}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    throw v8
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move/from16 v21, v4

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    const-string v2, "Unable to read backup schedule"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 964
    const/4 v5, 0x0

    goto :goto_b

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    move/from16 v21, v4

    .line 968
    :goto_b
    if-nez v5, :cond_a

    .line 971
    const/4 v4, 0x1

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 973
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 974
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v3, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 976
    new-instance v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v7, v8, v9}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 974
    :cond_9
    const-wide/16 v8, 0x0

    .line 978
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_d
    goto :goto_c

    .line 981
    :cond_a
    if-eqz v4, :cond_b

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 984
    :cond_b
    return-object v5
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1348
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1357
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    :cond_0
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .line 1324
    if-nez p1, :cond_0

    .line 1325
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "removePackageParticipants with null list"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void

    .line 1333
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1335
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1336
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1337
    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1340
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1333
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1344
    :cond_2
    return-void
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 2719
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2721
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2722
    return-void
.end method

.method private startConfirmationUi(ILjava/lang/String;)Z
    .locals 3
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 2702
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2703
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v1, "com.android.backupconfirm"

    const-string v2, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2705
    const-string v1, "conftoken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2706
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2707
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    .end local v0    # "confIntent":Landroid/content/Intent;
    nop

    .line 2711
    const/4 v0, 0x1

    return v0

    .line 2708
    :catch_0
    move-exception v0

    .line 2709
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private updateStateForTransport(Ljava/lang/String;)V
    .locals 9
    .param p1, "newTransportName"    # Ljava/lang/String;

    .line 3087
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "backup_transport"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3091
    const-string v0, "BMS.updateStateForTransport()"

    .line 3092
    .local v0, "callerLogString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3093
    invoke-virtual {v1, p1, v0}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    .line 3094
    .local v1, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const-wide/16 v2, 0x0

    const-string v4, "Transport "

    const-string v5, "BackupManagerService"

    if-eqz v1, :cond_0

    .line 3096
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    .line 3097
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3103
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_0

    .line 3098
    :catch_0
    move-exception v6

    .line 3101
    .local v6, "e":Ljava/lang/Exception;
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not available: current token = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_1

    .line 3106
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not registered: current token = 0"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3111
    :goto_1
    return-void
.end method

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 2
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 2725
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2726
    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2728
    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2729
    :catch_0
    move-exception v1

    :goto_1
    goto :goto_0

    .line 2731
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 2732
    return-void

    .line 2731
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeFullBackupScheduleAsync()V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1027
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 2322
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2323
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    goto :goto_0

    .line 2324
    :catch_0
    move-exception v0

    .line 2325
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to backup journal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2328
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " allow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2762
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2763
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    .line 2764
    .local v3, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v3, :cond_2

    .line 2765
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2766
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2768
    if-eqz p2, :cond_1

    .line 2769
    instance-of v4, v3, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz v4, :cond_0

    .line 2770
    const/4 v4, 0x2

    goto :goto_0

    .line 2771
    :cond_0
    const/16 v4, 0xa

    :goto_0
    nop

    .line 2773
    .local v4, "verb":I
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2774
    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 2776
    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 2779
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2780
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2781
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2782
    nop

    .end local v4    # "verb":I
    .end local v5    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2783
    :cond_1
    const-string v4, "BackupManagerService"

    const-string v5, "User rejected full backup/restore operation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    goto :goto_1

    .line 2788
    :cond_2
    const-string v4, "BackupManagerService"

    const-string v5, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2792
    .end local v3    # "params":Lcom/android/server/backup/params/AdbParams;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2793
    nop

    .line 2794
    return-void

    .line 2790
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "token":I
    .end local p2    # "allow":Z
    .end local p3    # "curPassword":Ljava/lang/String;
    .end local p4    # "encPpassword":Ljava/lang/String;
    .end local p5    # "observer":Landroid/app/backup/IFullBackupRestoreObserver;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2792
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "token":I
    .restart local p2    # "allow":Z
    .restart local p3    # "curPassword":Ljava/lang/String;
    .restart local p4    # "encPpassword":Ljava/lang/String;
    .restart local p5    # "observer":Landroid/app/backup/IFullBackupRestoreObserver;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 19
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "doKeyValue"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;

    .line 2508
    move-object/from16 v1, p0

    move/from16 v13, p4

    move/from16 v14, p6

    move-object/from16 v15, p10

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "adbBackup"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    .line 2512
    .local v16, "callingUserHandle":I
    if-nez v16, :cond_4

    .line 2517
    if-nez v14, :cond_1

    .line 2518
    if-nez v13, :cond_1

    .line 2522
    if-eqz v15, :cond_0

    array-length v0, v15

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2523
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Backup requested but neither shared nor any apps named"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2529
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2531
    .local v17, "oldId":J
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v0, :cond_2

    .line 2532
    const-string v0, "BackupManagerService"

    const-string v2, "Backup not supported before setup"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2572
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2575
    goto :goto_1

    .line 2573
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2574
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing output for adb backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    const-string v0, "BackupManagerService"

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    return-void

    .line 2537
    :cond_2
    :try_start_2
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting backup: apks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " obb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " shared="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " all="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " system="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " includekeyvalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pkgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    const-string v0, "BackupManagerService"

    const-string v2, "Beginning adb backup..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    new-instance v0, Lcom/android/server/backup/params/AdbBackupParams;

    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    move-object v2, v0

    .line 2546
    .local v2, "params":Lcom/android/server/backup/params/AdbBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    move v3, v0

    .line 2547
    .local v3, "token":I
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2548
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2549
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2552
    :try_start_4
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const-string v0, "fullback"

    invoke-direct {v1, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2554
    const-string v0, "BackupManagerService"

    const-string v4, "Unable to launch backup confirmation UI"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2572
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2575
    goto :goto_2

    .line 2573
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2574
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    const-string v0, "BackupManagerService"

    const-string v4, "Adb backup processing complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    return-void

    .line 2560
    :cond_3
    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2565
    invoke-direct {v1, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2568
    const-string v0, "BackupManagerService"

    const-string v4, "Waiting for backup completion..."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-direct {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2572
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v3    # "token":I
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2575
    goto :goto_3

    .line 2573
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2574
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing output for adb backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    const-string v0, "BackupManagerService"

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    nop

    .line 2579
    return-void

    .line 2549
    .restart local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .restart local v3    # "token":I
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v16    # "callingUserHandle":I
    .end local v17    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "includeApks":Z
    .end local p3    # "includeObbs":Z
    .end local p4    # "includeShared":Z
    .end local p5    # "doWidgets":Z
    .end local p6    # "doAllApps":Z
    .end local p7    # "includeSystem":Z
    .end local p8    # "compress":Z
    .end local p9    # "doKeyValue":Z
    .end local p10    # "pkgList":[Ljava/lang/String;
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2571
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v3    # "token":I
    .restart local v16    # "callingUserHandle":I
    .restart local v17    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "includeApks":Z
    .restart local p3    # "includeObbs":Z
    .restart local p4    # "includeShared":Z
    .restart local p5    # "doWidgets":Z
    .restart local p6    # "doAllApps":Z
    .restart local p7    # "includeSystem":Z
    .restart local p8    # "compress":Z
    .restart local p9    # "doKeyValue":Z
    .restart local p10    # "pkgList":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 2572
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2575
    goto :goto_4

    .line 2573
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2574
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    const-string v0, "BackupManagerService"

    const-string v3, "Adb backup processing complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .line 2513
    .end local v17    # "oldId":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Backup supported only for the device owner"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 2646
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "adbRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2650
    .local v0, "callingUserHandle":I
    if-nez v0, :cond_2

    .line 2654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2657
    .local v1, "oldId":J
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v3, :cond_0

    .line 2658
    const-string v3, "BackupManagerService"

    const-string v4, "Full restore not permitted before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2691
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2694
    goto :goto_0

    .line 2692
    :catch_0
    move-exception v3

    .line 2693
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to close fd after adb restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2696
    const-string v3, "BackupManagerService"

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    return-void

    .line 2662
    :cond_0
    :try_start_2
    const-string v3, "BackupManagerService"

    const-string v4, "Beginning restore..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    new-instance v3, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v3, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2665
    .local v3, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    .line 2666
    .local v4, "token":I
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2667
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2668
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2671
    :try_start_4
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting restore confirmation UI, token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    const-string v5, "fullrest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2673
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to launch restore confirmation"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2691
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2694
    goto :goto_1

    .line 2692
    :catch_1
    move-exception v5

    .line 2693
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after adb restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BackupManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2696
    const-string v5, "BackupManagerService"

    const-string v6, "adb restore processing complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    return-void

    .line 2679
    :cond_1
    :try_start_6
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2684
    invoke-direct {p0, v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2687
    const-string v5, "BackupManagerService"

    const-string v6, "Waiting for restore completion..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    invoke-direct {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2691
    .end local v3    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "token":I
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2694
    goto :goto_2

    .line 2692
    :catch_2
    move-exception v3

    .line 2693
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to close fd after adb restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2696
    const-string v3, "BackupManagerService"

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    nop

    .line 2698
    return-void

    .line 2668
    .local v3, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .restart local v4    # "token":I
    :catchall_0
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v0    # "callingUserHandle":I
    .end local v1    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2690
    .end local v3    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "token":I
    .restart local v0    # "callingUserHandle":I
    .restart local v1    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v3

    .line 2691
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2694
    goto :goto_3

    .line 2692
    :catch_3
    move-exception v4

    .line 2693
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BackupManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2696
    const-string v4, "BackupManagerService"

    const-string v5, "adb restore processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    .line 2651
    .end local v1    # "oldId":J
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .line 3200
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3201
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 3202
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentConnected pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " agent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_0

    .line 3206
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " claiming agent connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3210
    monitor-exit v0

    .line 3211
    return-void

    .line 3210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3220
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3221
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 3222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_0

    .line 3225
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3229
    monitor-exit v0

    .line 3230
    return-void

    .line 3229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public backupNow()V
    .locals 7

    .line 2469
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "backupNow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2473
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    .line 2474
    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    .line 2475
    .local v2, "result":Landroid/os/PowerSaveState;
    iget-boolean v3, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_0

    .line 2476
    const-string v3, "BackupManagerService"

    const-string v4, "Not running backup while in battery save mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_1

    .line 2480
    :cond_0
    const-string v3, "BackupManagerService"

    const-string v4, "Scheduling immediate backup pass"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2484
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2488
    goto :goto_0

    .line 2492
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 2485
    :catch_0
    move-exception v4

    .line 2487
    .local v4, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string v5, "BackupManagerService"

    const-string/jumbo v6, "run-backup intent cancelled!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    .end local v4    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 2492
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2495
    .end local v2    # "result":Landroid/os/PowerSaveState;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2496
    nop

    .line 2497
    return-void

    .line 2492
    .restart local v2    # "result":Landroid/os/PowerSaveState;
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2495
    .end local v2    # "result":Landroid/os/PowerSaveState;
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 28
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 2056
    move-object/from16 v11, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2059
    .local v12, "now":J
    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    monitor-enter v1

    .line 2060
    :try_start_0
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v14, v2

    .line 2061
    .local v14, "fullBackupInterval":J
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v9, v2

    .line 2062
    .local v9, "keyValueBackupInterval":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 2063
    const/4 v1, 0x0

    .line 2064
    .local v1, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide v2, v14

    .line 2066
    .local v2, "latency":J
    iget-boolean v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v0, :cond_0

    move-wide/from16 v26, v9

    goto/16 :goto_9

    .line 2079
    :cond_0
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x4

    .line 2080
    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v8

    .line 2081
    .local v8, "result":Landroid/os/PowerSaveState;
    iget-boolean v0, v8, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v0, :cond_1

    .line 2082
    const-string v0, "BackupManagerService"

    const-string v5, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v5, v9, v10, v6}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2084
    return v4

    .line 2088
    :cond_1
    const-string v0, "BackupManagerService"

    const-string v5, "Beginning scheduled full backup operation"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    iget-object v7, v11, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2093
    :try_start_1
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v0, :cond_2

    .line 2094
    :try_start_2
    const-string v0, "BackupManagerService"

    const-string v5, "Backup triggered but one already/still running!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 2217
    :catchall_0
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    goto/16 :goto_8

    .line 2101
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    .line 2107
    .local v0, "runBackup":Z
    :goto_0
    :try_start_3
    iget-object v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v6, :cond_3

    .line 2110
    :try_start_4
    const-string v6, "BackupManagerService"

    const-string v5, "Backup queue empty; doing nothing"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2112
    const/4 v0, 0x0

    .line 2113
    move-object v5, v1

    move-wide v1, v2

    goto/16 :goto_7

    .line 2116
    :cond_3
    const/4 v5, 0x0

    .line 2118
    .local v5, "headBusy":Z
    :try_start_5
    iget-object v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v6

    .line 2119
    .local v6, "transportName":Ljava/lang/String;
    invoke-direct {v11, v6}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-nez v17, :cond_4

    .line 2123
    const/4 v0, 0x0

    .line 2127
    move-wide v2, v9

    .line 2130
    :cond_4
    if-eqz v0, :cond_b

    .line 2131
    :try_start_6
    iget-object v4, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v18, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_start_7
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v4

    .line 2132
    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide/from16 v19, v2

    .end local v2    # "latency":J
    .local v19, "latency":J
    :try_start_8
    iget-wide v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    sub-long v2, v12, v2

    .line 2133
    .local v2, "timeSinceRun":J
    cmp-long v4, v2, v14

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 2134
    .end local v0    # "runBackup":Z
    .local v4, "runBackup":Z
    :goto_1
    if-nez v4, :cond_6

    .line 2140
    sub-long v18, v14, v2

    .line 2141
    .end local v19    # "latency":J
    .local v18, "latency":J
    move-object v5, v1

    move v0, v4

    move-wide/from16 v1, v18

    goto/16 :goto_7

    .line 2145
    .end local v18    # "latency":J
    .restart local v19    # "latency":J
    :cond_6
    :try_start_9
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-wide/from16 v21, v2

    .end local v2    # "timeSinceRun":J
    .local v21, "timeSinceRun":J
    :try_start_a
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    iget v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "runBackup":Z
    .local v18, "runBackup":Z
    :try_start_b
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2147
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v2, :cond_7

    .line 2155
    :try_start_c
    iget-object v2, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2156
    const/4 v5, 0x1

    .line 2157
    move/from16 v0, v18

    goto/16 :goto_6

    .line 2180
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    move-object/from16 v25, v6

    goto/16 :goto_4

    .line 2160
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_d
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2161
    .local v2, "privFlags":I
    and-int/lit16 v3, v2, 0x2000

    if-nez v3, :cond_8

    :try_start_e
    iget-object v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2162
    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    move-result v3
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    move v5, v3

    .line 2165
    if-eqz v5, :cond_9

    .line 2166
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v23, 0x36ee80

    add-long v3, v3, v23

    move-object/from16 v23, v0

    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v23, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    move/from16 v24, v2

    .end local v2    # "privFlags":I
    .local v24, "privFlags":I
    const v2, 0x6ddd00

    .line 2168
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move v2, v5

    move-object/from16 v25, v6

    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .local v2, "headBusy":Z
    .local v25, "transportName":Ljava/lang/String;
    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 2170
    .local v3, "nextEligible":J
    :try_start_10
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2171
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move/from16 v26, v2

    .end local v2    # "headBusy":Z
    .local v26, "headBusy":Z
    :try_start_11
    const-string v2, "Full backup time but "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is busy; deferring to "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2173
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2171
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    nop

    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    sub-long v5, v3, v14

    invoke-virtual {v11, v0, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_3

    .line 2180
    .end local v3    # "nextEligible":J
    .end local v23    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v24    # "privFlags":I
    :catch_1
    move-exception v0

    move/from16 v5, v26

    goto :goto_4

    .end local v26    # "headBusy":Z
    .restart local v2    # "headBusy":Z
    :catch_2
    move-exception v0

    move/from16 v26, v2

    move/from16 v5, v26

    .end local v2    # "headBusy":Z
    .restart local v26    # "headBusy":Z
    goto :goto_4

    .end local v25    # "transportName":Ljava/lang/String;
    .end local v26    # "headBusy":Z
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_3
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v6

    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v25    # "transportName":Ljava/lang/String;
    .restart local v26    # "headBusy":Z
    goto :goto_4

    .line 2165
    .end local v25    # "transportName":Ljava/lang/String;
    .end local v26    # "headBusy":Z
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    .local v2, "privFlags":I
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :cond_9
    move-object/from16 v23, v0

    move/from16 v24, v2

    move/from16 v26, v5

    move-object/from16 v25, v6

    .line 2186
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "privFlags":I
    .end local v5    # "headBusy":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v25    # "transportName":Ljava/lang/String;
    .restart local v26    # "headBusy":Z
    :goto_3
    move/from16 v0, v18

    move/from16 v5, v26

    goto :goto_6

    .line 2180
    .end local v25    # "transportName":Ljava/lang/String;
    .end local v26    # "headBusy":Z
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v25, v6

    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v25    # "transportName":Ljava/lang/String;
    goto :goto_4

    .end local v18    # "runBackup":Z
    .end local v25    # "transportName":Ljava/lang/String;
    .restart local v4    # "runBackup":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v25, v6

    .end local v4    # "runBackup":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v18    # "runBackup":Z
    .restart local v25    # "transportName":Ljava/lang/String;
    goto :goto_4

    .end local v18    # "runBackup":Z
    .end local v21    # "timeSinceRun":J
    .end local v25    # "transportName":Ljava/lang/String;
    .local v2, "timeSinceRun":J
    .restart local v4    # "runBackup":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-wide/from16 v21, v2

    move/from16 v18, v4

    move-object/from16 v25, v6

    .line 2185
    .end local v2    # "timeSinceRun":J
    .end local v4    # "runBackup":Z
    .end local v6    # "transportName":Ljava/lang/String;
    .local v0, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18    # "runBackup":Z
    .restart local v21    # "timeSinceRun":J
    .restart local v25    # "transportName":Ljava/lang/String;
    :goto_4
    :try_start_12
    iget-object v2, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    move v0, v2

    .end local v18    # "runBackup":Z
    .local v2, "runBackup":Z
    goto :goto_6

    .line 2217
    .end local v0    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "runBackup":Z
    .end local v5    # "headBusy":Z
    .end local v21    # "timeSinceRun":J
    .end local v25    # "transportName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    move-wide/from16 v2, v19

    goto/16 :goto_8

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v19    # "latency":J
    .local v2, "latency":J
    .local v18, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :catchall_2
    move-exception v0

    move-wide/from16 v19, v2

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    move-object/from16 v1, v18

    .end local v2    # "latency":J
    .restart local v19    # "latency":J
    goto/16 :goto_8

    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v19    # "latency":J
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v2    # "latency":J
    :catchall_3
    move-exception v0

    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "latency":J
    .restart local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v19    # "latency":J
    goto/16 :goto_8

    .line 2130
    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v19    # "latency":J
    .local v0, "runBackup":Z
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v2    # "latency":J
    .restart local v5    # "headBusy":Z
    .restart local v6    # "transportName":Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move-object/from16 v25, v6

    .line 2188
    .end local v2    # "latency":J
    .end local v6    # "transportName":Ljava/lang/String;
    .restart local v19    # "latency":J
    :goto_6
    if-nez v5, :cond_d

    move-object v5, v1

    move-wide/from16 v1, v19

    .line 2190
    .end local v19    # "latency":J
    .local v1, "latency":J
    .local v5, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :goto_7
    if-nez v0, :cond_c

    .line 2192
    :try_start_13
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    move-wide v3, v1

    .line 2195
    .local v3, "deferTime":J
    iget v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    move/from16 v18, v0

    .end local v0    # "runBackup":Z
    .local v18, "runBackup":Z
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-wide/from16 v19, v1

    .end local v1    # "latency":J
    .restart local v19    # "latency":J
    :try_start_14
    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v6, v0, v3, v4, v1}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2196
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const/4 v1, 0x0

    return v1

    .line 2217
    .end local v3    # "deferTime":J
    .end local v18    # "runBackup":Z
    :catchall_4
    move-exception v0

    move-object v1, v5

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    move-wide/from16 v2, v19

    goto/16 :goto_8

    .end local v19    # "latency":J
    .restart local v1    # "latency":J
    :catchall_5
    move-exception v0

    move-wide/from16 v19, v1

    move-object v1, v5

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    move-wide/from16 v2, v19

    .end local v1    # "latency":J
    .restart local v19    # "latency":J
    goto/16 :goto_8

    .line 2200
    .end local v19    # "latency":J
    .restart local v0    # "runBackup":Z
    .restart local v1    # "latency":J
    :cond_c
    move/from16 v18, v0

    move-wide/from16 v19, v1

    .end local v0    # "runBackup":Z
    .end local v1    # "latency":J
    .restart local v18    # "runBackup":Z
    .restart local v19    # "latency":J
    :try_start_15
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2201
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v6, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2202
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v3, v4, [Ljava/lang/String;

    iget-object v0, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 2203
    .local v3, "pkg":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const-string v22, "BMS.beginFullBackup()"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object/from16 v1, p0

    move/from16 v23, v4

    move v4, v0

    move/from16 v24, v23

    move-object/from16 v23, v5

    .end local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v23, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-object/from16 v5, p1

    move-object/from16 v25, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "result":Landroid/os/PowerSaveState;
    .local v16, "result":Landroid/os/PowerSaveState;
    move-object/from16 v8, v17

    move-wide/from16 v26, v9

    .end local v9    # "keyValueBackupInterval":J
    .local v26, "keyValueBackupInterval":J
    move/from16 v9, v21

    move-object/from16 v10, v22

    :try_start_16
    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 2215
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2216
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2217
    .end local v3    # "pkg":[Ljava/lang/String;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v18    # "runBackup":Z
    monitor-exit v25
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 2219
    return v24

    .line 2217
    :catchall_6
    move-exception v0

    move-wide/from16 v2, v19

    move-object/from16 v1, v23

    goto :goto_8

    .end local v16    # "result":Landroid/os/PowerSaveState;
    .end local v23    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :catchall_7
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, v23

    .end local v5    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v16    # "result":Landroid/os/PowerSaveState;
    .restart local v23    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v26    # "keyValueBackupInterval":J
    goto :goto_8

    .line 2188
    .end local v16    # "result":Landroid/os/PowerSaveState;
    .end local v23    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v0    # "runBackup":Z
    .local v1, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v5, "headBusy":Z
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :cond_d
    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    const/16 v24, 0x1

    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v16    # "result":Landroid/os/PowerSaveState;
    .restart local v26    # "keyValueBackupInterval":J
    move-wide/from16 v2, v19

    move/from16 v5, v24

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2217
    .end local v0    # "runBackup":Z
    .end local v5    # "headBusy":Z
    .end local v16    # "result":Landroid/os/PowerSaveState;
    .end local v19    # "latency":J
    .end local v26    # "keyValueBackupInterval":J
    .restart local v2    # "latency":J
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :catchall_8
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v16    # "result":Landroid/os/PowerSaveState;
    .local v18, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v26    # "keyValueBackupInterval":J
    goto :goto_8

    .end local v16    # "result":Landroid/os/PowerSaveState;
    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :catchall_9
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v16, v8

    move-wide/from16 v26, v9

    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v16    # "result":Landroid/os/PowerSaveState;
    .restart local v26    # "keyValueBackupInterval":J
    :goto_8
    :try_start_17
    monitor-exit v25
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_8

    .line 2066
    .end local v16    # "result":Landroid/os/PowerSaveState;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v9    # "keyValueBackupInterval":J
    :cond_e
    move-wide/from16 v26, v9

    .line 2074
    .end local v9    # "keyValueBackupInterval":J
    .restart local v26    # "keyValueBackupInterval":J
    :goto_9
    const/4 v4, 0x0

    return v4

    .line 2062
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "latency":J
    .end local v14    # "fullBackupInterval":J
    .end local v26    # "keyValueBackupInterval":J
    :catchall_b
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    throw v0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .line 3323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginRestoreSession: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    const/4 v0, 0x1

    .line 3328
    .local v0, "needPermission":Z
    if-nez p2, :cond_0

    .line 3329
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    .line 3331
    if-eqz p1, :cond_0

    .line 3332
    const/4 v1, 0x0

    .line 3334
    .local v1, "app":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 3338
    nop

    .line 3340
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3344
    const/4 v0, 0x0

    goto :goto_0

    .line 3335
    :catch_0
    move-exception v2

    .line 3336
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked to restore nonexistent pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3349
    .end local v1    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3350
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "beginRestoreSession"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3353
    :cond_1
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "restoring self on current transport; no permission needed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :goto_1
    monitor-enter p0

    .line 3357
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3358
    const-string v1, "BackupManagerService"

    const-string v3, "Restore session requested but one already active"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    monitor-exit p0

    return-object v2

    .line 3361
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_3

    .line 3362
    const-string v1, "BackupManagerService"

    const-string v3, "Restore session requested but currently running backups"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    monitor-exit p0

    return-object v2

    .line 3365
    :cond_3
    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3366
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 3367
    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    .line 3366
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3368
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3369
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v1

    .line 3368
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 9
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .line 1443
    const/4 v0, 0x0

    .line 1444
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1445
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1446
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v3, v4, p2, v5}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1449
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "awaiting agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 1454
    .local v3, "timeoutMark":J
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_0

    .line 1455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    .line 1457
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1463
    :goto_1
    goto :goto_0

    .line 1458
    :catch_0
    move-exception v5

    .line 1460
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1462
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1467
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz v5, :cond_1

    .line 1468
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout waiting for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1471
    :cond_1
    const-string v2, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    .line 1476
    .end local v3    # "timeoutMark":J
    :cond_2
    goto :goto_2

    .line 1474
    :catch_1
    move-exception v2

    .line 1477
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1478
    if-nez v0, :cond_3

    .line 1479
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    .line 1481
    :cond_3
    return-object v0

    .line 1477
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method public cancelBackups()V
    .locals 9

    .line 1704
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "cancelBackups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1710
    .local v0, "oldToken":J
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    .local v2, "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1712
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1713
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/Operation;

    .line 1714
    .local v5, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1715
    .local v6, "token":I
    iget v7, v5, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1716
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1712
    .end local v5    # "op":Lcom/android/server/backup/internal/Operation;
    .end local v6    # "token":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1719
    .end local v4    # "i":I
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1720
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1721
    .local v4, "token":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 1722
    .end local v4    # "token":Ljava/lang/Integer;
    goto :goto_1

    .line 1725
    :cond_2
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1726
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x6ddd00

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1728
    .end local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1729
    nop

    .line 1730
    return-void

    .line 1719
    .restart local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "oldToken":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1728
    .end local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "oldToken":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1498
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1499
    return-void
.end method

.method public clearApplicationDataBeforeRestore(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1506
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1507
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearBackupData() of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2420
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 2425
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2425
    const-string v4, "android.permission.BACKUP"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2427
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .local v1, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 2432
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    .line 2435
    .restart local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2438
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2439
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2440
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v5, "BMS.clearBackupData()"

    .line 2442
    invoke-virtual {v4, p1, v5}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v4

    .line 2443
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v4, :cond_1

    .line 2445
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v6, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v6, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2447
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2448
    monitor-exit v2

    return-void

    .line 2450
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2451
    .local v5, "oldId":J
    new-instance v3, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TD-nE027xyQbZ7zQ3L8rJfQM2V4;

    invoke-direct {v3, p0, v4}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TD-nE027xyQbZ7zQ3L8rJfQM2V4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 2454
    .local v3, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2455
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v8, 0x4

    new-instance v9, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v9, v4, v0, v3}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2458
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2459
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2460
    .end local v3    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v5    # "oldId":J
    .end local v7    # "msg":Landroid/os/Message;
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2462
    :cond_2
    :goto_1
    return-void

    .line 2417
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2418
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' - not clearing backup data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    return-void
.end method

.method public clearPendingInits()V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 789
    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 2
    .param p1, "currentSession"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3374
    monitor-enter p0

    .line 3375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_0

    .line 3376
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3378
    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3380
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 3382
    :goto_0
    monitor-exit p0

    .line 3383
    return-void

    .line 3382
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2334
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2335
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataChanged but no participant pkg=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2336
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    return-void

    .line 2341
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService$4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 2346
    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2264
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2265
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2266
    return-void
.end method

.method public deviceIsEncrypted()Z
    .locals 4

    .line 1930
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 1932
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1930
    :goto_0
    return v0

    .line 1934
    :catch_0
    move-exception v1

    .line 1937
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to communicate with storagemanager service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3479
    .local v0, "identityToken":J
    if-eqz p3, :cond_4

    .line 3480
    :try_start_0
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p3, v3

    .line 3481
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3482
    const-string v2, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    const-string v2, "  -h       : this help text"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3484
    const-string v2, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    const-string v2, "  users    : dump the list of users for which backup service is running"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3487
    return-void

    .line 3488
    :cond_0
    :try_start_1
    const-string v5, "agents"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3489
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3490
    return-void

    .line 3491
    :cond_1
    :try_start_2
    const-string/jumbo v5, "transportclients"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3492
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3493
    return-void

    .line 3494
    :cond_2
    :try_start_3
    const-string/jumbo v5, "transportstats"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3495
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3496
    return-void

    .line 3480
    .end local v4    # "arg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3500
    :cond_4
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3503
    nop

    .line 3504
    return-void

    .line 3502
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public endFullBackup()V
    .locals 3

    .line 2229
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/UserBackupManagerService$3;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2246
    .local v0, "endFullBackupRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "end-full-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2247
    return-void
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .line 1990
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .line 1991
    .local v0, "newEntry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1995
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 2001
    const/4 v2, -0x1

    .line 2002
    .local v2, "which":I
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_1

    .line 2003
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 2004
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2005
    .local v3, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-wide v4, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v4, v4, p2

    if-gtz v4, :cond_0

    .line 2006
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2007
    goto :goto_1

    .line 2003
    .end local v3    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2011
    :cond_1
    :goto_1
    if-gez v2, :cond_2

    .line 2013
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2015
    .end local v2    # "which":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2016
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 2017
    return-void

    .line 2015
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "packages"    # [Ljava/lang/String;

    .line 3450
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "filterAppsEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3455
    .local v0, "oldToken":J
    :try_start_0
    const-string v2, "BMS.filterAppsEligibleForBackup"

    .line 3456
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3457
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 3458
    .local v3, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 3459
    .local v4, "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 3460
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3461
    invoke-static {v3, v7, v8, v9}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3463
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3459
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3466
    :cond_1
    if-eqz v3, :cond_2

    .line 3467
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3469
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3469
    return-object v5

    .line 3471
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v4    # "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 18
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 2583
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "fullTransportBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 2588
    .local v13, "callingUserHandle":I
    if-nez v13, :cond_2

    .line 2592
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v14

    .line 2593
    .local v14, "transportName":Ljava/lang/String;
    invoke-direct {v11, v14}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v0

    const-string v15, "BackupManagerService"

    if-nez v0, :cond_0

    .line 2594
    const-string v0, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2597
    :cond_0
    const-string v0, "fullTransportBackup()"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2602
    .local v16, "oldId":J
    :try_start_0
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2603
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "BMS.fullTransportBackup()"

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    move-object v1, v0

    .line 2615
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2616
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "full-transport-master"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2620
    nop

    .line 2627
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2628
    .local v2, "now":J
    array-length v0, v12

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    aget-object v5, v12, v4

    .line 2629
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v11, v5, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2628
    .end local v5    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2632
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "now":J
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2633
    nop

    .line 2637
    .end local v16    # "oldId":J
    :goto_2
    const-string v0, "Done with full transport backup."

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    return-void

    .line 2621
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "oldId":J
    :catch_0
    move-exception v0

    .line 2624
    goto :goto_0

    .line 2632
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2589
    .end local v14    # "transportName":Ljava/lang/String;
    .end local v16    # "oldId":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore supported only for the device owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateRandomIntegerToken()I
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 806
    .local v0, "token":I
    if-gez v0, :cond_0

    neg-int v0, v0

    .line 807
    :cond_0
    and-int/lit16 v0, v0, -0x100

    .line 808
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 809
    return v0
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralSerialNumber()J
    .locals 4

    .line 2386
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 2387
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2388
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2387
    return-wide v2

    .line 2386
    :catchall_0
    move-exception v1

    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2388
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :cond_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_0
    move-exception v0

    .line 2389
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to write to work profile serial number file:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1582
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 1586
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1587
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->hasBeenProcessed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1591
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    move-wide v0, v3

    .line 1593
    :cond_0
    monitor-exit v2

    .line 1595
    return-wide v0

    .line 1593
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .locals 1

    .line 3615
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3119
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getConfigurationIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3126
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 3127
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3128
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get configuration intent from transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConstants()Lcom/android/server/backup/BackupManagerConstants;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOpLock()Ljava/lang/Object;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentOperations()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentToken()J
    .locals 2

    .line 775
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    .line 2891
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    .line 2895
    .local v0, "currentTransport":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .locals 4

    .line 2904
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransportComponent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2908
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2912
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2908
    return-object v2

    .line 2912
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2909
    :catch_0
    move-exception v2

    .line 2910
    .local v2, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const/4 v3, 0x0

    .line 2912
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2910
    return-object v3
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3160
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3168
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 3169
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3170
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get management intent from transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3180
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementLabel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3188
    .local v0, "label":Ljava/lang/CharSequence;
    return-object v0

    .line 3189
    .end local v0    # "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 3190
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get management label from transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3143
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDestinationString"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3151
    .local v0, "string":Ljava/lang/String;
    return-object v0

    .line 3152
    .end local v0    # "string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3153
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get destination string from transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const/4 v1, 0x0

    return-object v1
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method getPackageTrackingReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/keyvalue/BackupRequest;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRunningFullBackupTask()Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return v0
.end method

.method public getWakelock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cancelAll"    # Z

    .line 1845
    const/4 v0, 0x0

    .line 1846
    .local v0, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1847
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    .line 1854
    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1855
    .local v3, "state":I
    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1858
    const-string v2, "BackupManagerService"

    const-string v4, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/4 v0, 0x0

    .line 1862
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    .line 1863
    :cond_1
    if-nez v3, :cond_3

    .line 1864
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancel: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iput v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 1872
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-ne v2, v4, :cond_3

    .line 1873
    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v4, v0, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1876
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1877
    .end local v3    # "state":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_4

    .line 1884
    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v1, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    .line 1886
    :cond_4
    return-void

    .line 1877
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasBackupPassword()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method initializeBackupEnableState()V
    .locals 1

    .line 596
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(I)Z

    move-result v0

    .line 597
    .local v0, "isEnabled":Z
    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    .line 598
    return-void
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 5
    .param p1, "transportNames"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    .line 2350
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "initializeTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeTransport(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2356
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2357
    new-instance v2, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$pLslHGi1wuuGrjS32QbMlDjlGbM;

    invoke-direct {v2, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$pLslHGi1wuuGrjS32QbMlDjlGbM;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2358
    .local v2, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    nop

    .end local v2    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2362
    nop

    .line 2363
    return-void

    .line 2361
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3428
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isAppEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3433
    .local v0, "oldToken":J
    :try_start_0
    const-string v2, "BMS.isAppEligibleForBackup"

    .line 3434
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3435
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 3436
    .local v3, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3437
    invoke-static {v3, p1, v4, v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    .line 3439
    .local v4, "eligible":Z
    if-eqz v3, :cond_0

    .line 3440
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3442
    :cond_0
    nop

    .line 3444
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3442
    return v4

    .line 3444
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v4    # "eligible":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isBackupEnabled()Z
    .locals 3

    .line 2884
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .locals 6

    .line 1890
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1891
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1892
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 1893
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v4, :cond_0

    .line 1894
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1891
    .end local v3    # "op":Lcom/android/server/backup/internal/Operation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1897
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 1898
    return v1

    .line 1897
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBackupRunning()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method public isSetupComplete()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    return v0
.end method

.method public synthetic lambda$clearBackupData$3$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 2453
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initializeTransports$2$UserBackupManagerService(Ljava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/String;

    .line 2357
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public synthetic lambda$parseLeftoverJournals$0$UserBackupManagerService(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1035
    const-string v0, "BackupManagerService"

    const-string v1, "Found stale backup journal, scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public synthetic lambda$requestBackup$1$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 1658
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$restoreAtInstall$6$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 3279
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3280
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3281
    return-void
.end method

.method public synthetic lambda$selectBackupTransportAsync$5$UserBackupManagerService(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 5
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3056
    const/4 v0, 0x0

    .line 3057
    .local v0, "transportName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3058
    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->registerAndSelectTransport(Landroid/content/ComponentName;)I

    move-result v1

    .line 3059
    .local v1, "result":I
    const-string v2, "BackupManagerService"

    if-nez v1, :cond_0

    .line 3061
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3062
    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 3063
    invoke-direct {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3067
    goto :goto_0

    .line 3064
    :catch_0
    move-exception v3

    .line 3065
    .local v3, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v4, "Transport got unregistered"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    const/4 v1, -0x1

    .line 3071
    .end local v3    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3072
    :try_start_1
    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 3074
    :cond_1
    invoke-interface {p2, v1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3078
    :goto_1
    goto :goto_2

    .line 3076
    :catch_1
    move-exception v3

    .line 3077
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "ISelectBackupTransportCallback listener not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public synthetic lambda$setBackupEnabled$4$UserBackupManagerService(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "transportNames"    # Ljava/util/List;
    .param p2, "transportDirNames"    # Ljava/util/List;
    .param p3, "name"    # Ljava/lang/String;

    .line 2834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 2836
    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2841
    .local v0, "dirName":Ljava/lang/String;
    nop

    .line 2842
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2843
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2844
    return-void

    .line 2837
    .end local v0    # "dirName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2839
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unexpected unregistered transport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2840
    return-void
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .locals 3

    .line 2926
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 3

    .line 2918
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1396
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getBackupFinishedNotificationReceivers()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1399
    .local v3, "receiver":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1400
    .local v4, "notification":Landroid/content/Intent;
    const-string v5, "android.intent.action.BACKUP_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    const v5, 0x10000020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1404
    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1398
    .end local v3    # "receiver":Ljava/lang/String;
    .end local v4    # "notification":Landroid/content/Intent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->addPackage(Ljava/lang/String;)V

    .line 1409
    return-void
.end method

.method public makeMetadataAgent()Landroid/app/backup/BackupAgent;
    .locals 3

    .line 817
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;I)V

    .line 818
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 819
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 820
    return-object v0
.end method

.method public makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/android/server/backup/PackageManagerBackupAgent;"
        }
    .end annotation

    .line 827
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 829
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 830
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 831
    return-object v0
.end method

.method public opComplete(IJ)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "result"    # J

    .line 3393
    const/4 v0, 0x0

    .line 3394
    .local v0, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3395
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    .line 3396
    if-eqz v0, :cond_2

    .line 3397
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3400
    const/4 v0, 0x0

    .line 3401
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 3402
    :cond_0
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3404
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received duplicate ack for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3404
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    const/4 v0, 0x0

    .line 3408
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 3409
    :cond_1
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v2, :cond_2

    .line 3412
    iput v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 3415
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3416
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3419
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_3

    .line 3420
    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 3421
    .local v1, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3422
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3424
    .end local v1    # "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    .line 3416
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p5, "operationType"    # I

    .line 1735
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1736
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-void

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1746
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1747
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v2

    invoke-virtual {v1, v2, p1, v3, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1749
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1750
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1751
    return-void

    .line 1750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putOperation(ILcom/android/server/backup/internal/Operation;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "operation"    # Lcom/android/server/backup/internal/Operation;

    .line 1775
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1777
    monitor-exit v0

    .line 1778
    return-void

    .line 1777
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public randomBytes(I)[B
    .locals 2
    .param p1, "bits"    # I

    .line 1048
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    .line 1049
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1050
    return-object v0
.end method

.method public recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "transportDirName"    # Ljava/lang/String;

    .line 1074
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "_need_init_"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1082
    .local v2, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 1086
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1089
    :catch_0
    move-exception v3

    .line 1091
    :goto_0
    goto :goto_1

    .line 1094
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1095
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1097
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "initPendingFile":Ljava/io/File;
    :goto_1
    monitor-exit v0

    .line 1098
    return-void

    .line 1097
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeOperation(I)V
    .locals 4
    .param p1, "token"    # I

    .line 1788
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1789
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1790
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate remove for operation. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1790
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1794
    monitor-exit v0

    .line 1795
    return-void

    .line 1794
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "flags"    # I

    .line 1604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 21
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I

    .line 1613
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "requestBackup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const-string v0, "BackupManagerService"

    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_8

    array-length v5, v2

    if-lt v5, v6, :cond_8

    .line 1624
    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/16 v8, -0x7d1

    if-eqz v5, :cond_6

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v5, :cond_0

    goto/16 :goto_4

    .line 1644
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 1646
    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    .line 1645
    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1647
    .local v5, "transportDirName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v9, "BMS.requestBackup()"

    .line 1648
    invoke-virtual {v0, v9}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 1655
    .local v15, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    nop

    .line 1657
    new-instance v11, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$sAYsrY5C5zAl7EgKgwo188kx6JE;

    .local v11, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v11, v1, v15}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$sAYsrY5C5zAl7EgKgwo188kx6JE;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 1660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1661
    .local v10, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 1662
    .local v9, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v2

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v12, v2, v4

    .line 1663
    .local v12, "packageName":Ljava/lang/String;
    const-string v0, "@pm@"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    goto :goto_2

    .line 1668
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x8000000

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v12, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1670
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1671
    invoke-static {v13, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1673
    goto :goto_2

    .line 1675
    :cond_2
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1676
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1678
    :cond_3
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1683
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    goto :goto_2

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v6, -0x7d2

    invoke-static {v13, v12, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1662
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "packageName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_0

    .line 1685
    :cond_4
    const/16 v0, 0xb0c

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 1686
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1685
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1693
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move/from16 v12, v16

    .line 1695
    .local v12, "nonIncrementalBackup":Z
    :goto_3
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1696
    .local v0, "msg":Landroid/os/Message;
    new-instance v8, Lcom/android/server/backup/params/BackupParams;

    const/16 v17, 0x1

    move-object v3, v8

    move-object v4, v15

    move-object v6, v9

    move-object v7, v10

    move-object v2, v8

    move-object/from16 v8, p2

    move-object/from16 v18, v9

    .end local v9    # "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, p3

    move-object/from16 v19, v10

    .end local v10    # "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v11

    move-object/from16 v20, v11

    .end local v11    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .local v20, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    move/from16 v11, v17

    invoke-direct/range {v3 .. v12}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZZ)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1698
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1699
    return v16

    .line 1649
    .end local v0    # "msg":Landroid/os/Message;
    .end local v5    # "transportDirName":Ljava/lang/String;
    .end local v12    # "nonIncrementalBackup":Z
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v18    # "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    :catch_1
    move-exception v0

    .line 1650
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1651
    const/16 v2, 0x32

    const/4 v5, 0x1

    invoke-static {v14, v2, v4, v5, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1654
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v3

    .line 1625
    .end local v0    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_6
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup requested but enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " setupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-static {v13, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1633
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v0, :cond_7

    .line 1634
    const/16 v0, 0xd

    goto :goto_5

    .line 1635
    :cond_7
    const/16 v0, 0xe

    :goto_5
    nop

    .line 1636
    .local v0, "logTag":I
    const/4 v2, 0x3

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1638
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v8

    .line 1616
    .end local v0    # "logTag":I
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_8
    const-string v2, "No packages named for backup request"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1618
    const/16 v0, 0x31

    const/4 v2, 0x1

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    .line 1621
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No packages are provided for backup"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetBackupState(Ljava/io/File;)V
    .locals 7
    .param p1, "stateFileDir"    # Ljava/io/File;

    .line 1105
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1106
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->reset()V

    .line 1108
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1112
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1114
    .local v4, "sf":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_need_init_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1115
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1112
    .end local v4    # "sf":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1121
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1122
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1123
    .local v0, "numParticipants":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1124
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1125
    .local v3, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 1126
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1127
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1128
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 1123
    .end local v3    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1131
    .end local v0    # "numParticipants":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit v1

    .line 1132
    return-void

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1118
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .line 3237
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v2, "BackupManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    .line 3238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attemping install-time restore"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    return-void

    .line 3243
    :cond_0
    const/4 v0, 0x0

    .line 3245
    .local v0, "skip":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v11

    .line 3247
    .local v11, "restoreSet":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAtInstall pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3248
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restoreSet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3249
    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3247
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-nez v3, :cond_1

    .line 3253
    const/4 v0, 0x1

    .line 3256
    :cond_1
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3257
    const-string v14, "BMS.restoreAtInstall()"

    invoke-virtual {v3, v14}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v15

    .line 3258
    .local v15, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v15, :cond_2

    .line 3259
    const-string v3, "No transport client"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    const/4 v0, 0x1

    .line 3263
    :cond_2
    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-nez v3, :cond_3

    .line 3265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-restorable state: auto="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_0

    .line 3263
    :cond_3
    move/from16 v16, v0

    .line 3270
    .end local v0    # "skip":Z
    .local v16, "skip":Z
    :goto_0
    if-nez v16, :cond_4

    .line 3276
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3278
    new-instance v10, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;

    invoke-direct {v10, v1, v15}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 3286
    .local v10, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3287
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3288
    move-object v3, v15

    move-wide v6, v11

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {v3 .. v10}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3296
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    nop

    .end local v0    # "msg":Landroid/os/Message;
    .end local v10    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_1

    .line 3297
    :catch_0
    move-exception v0

    .line 3299
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    const/16 v16, 0x1

    .line 3304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    if-eqz v16, :cond_6

    .line 3307
    if-eqz v15, :cond_5

    .line 3308
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, v15, v14}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3313
    :cond_5
    const-string v0, "Finishing install immediately"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    move/from16 v3, p2

    :try_start_2
    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3316
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v3, p2

    :goto_2
    goto :goto_3

    .line 3304
    :cond_6
    move/from16 v3, p2

    .line 3318
    :goto_3
    return-void
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .line 2255
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2256
    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .locals 18
    .param p1, "transportMinLatency"    # J

    .line 1948
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1953
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1958
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 1959
    .local v3, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 1960
    .local v5, "timeSinceLast":J
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    .local v7, "interval":J
    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    sub-long v9, v7, v5

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    .line 1962
    .local v9, "appLatency":J
    :goto_0
    move-wide/from16 v11, p1

    :try_start_1
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 1963
    .local v13, "latency":J
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v16, v3

    .end local v3    # "upcomingLastBackup":J
    .local v16, "upcomingLastBackup":J
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v15, v13, v14, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1964
    .end local v5    # "timeSinceLast":J
    .end local v7    # "interval":J
    .end local v9    # "appLatency":J
    .end local v13    # "latency":J
    .end local v16    # "upcomingLastBackup":J
    goto :goto_1

    .line 1953
    :cond_1
    move-wide/from16 v11, p1

    .line 1966
    const-string v0, "BackupManagerService"

    const-string v3, "Full backup queue empty; not scheduling"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :goto_1
    monitor-exit v2

    .line 1970
    return-void

    .line 1969
    :catchall_0
    move-exception v0

    move-wide/from16 v11, p1

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3026
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3031
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3032
    .local v2, "previousTransportName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    .line 3033
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): previous transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3035
    nop

    .line 3037
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3035
    return-object v2

    .line 3037
    .end local v2    # "previousTransportName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 6
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3047
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransportAsync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3052
    .local v0, "oldId":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 3053
    .local v2, "transportString":Ljava/lang/String;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransportAsync(transport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$076XriH8-AsUaXKFvRearB4ERls;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$076XriH8-AsUaXKFvRearB4ERls;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3081
    nop

    .end local v2    # "transportString":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3082
    nop

    .line 3083
    return-void

    .line 3081
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 767
    .local p1, "ancestralPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 768
    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .locals 4
    .param p1, "ancestralSerialNumber"    # J

    .line 2369
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAncestralSerialNumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting ancestral work profile id to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 2374
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2375
    :try_start_2
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2377
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2373
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "ancestralSerialNumber":J
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2375
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "ancestralSerialNumber":J
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_0

    :try_start_4
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "ancestralSerialNumber":J
    :cond_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "ancestralSerialNumber":J
    :catch_0
    move-exception v0

    .line 2376
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Unable to write to work profile serial mapping file:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2378
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method setAncestralSerialNumberFile(Ljava/io/File;)V
    .locals 0
    .param p1, "ancestralSerialNumberFile"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2406
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2407
    return-void
.end method

.method public setAncestralToken(J)V
    .locals 0
    .param p1, "ancestralToken"    # J

    .line 771
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 772
    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 6
    .param p1, "doAutoRestore"    # Z

    .line 2865
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto restore => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2872
    .local v0, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2873
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    .line 2874
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2873
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2875
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 2876
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2878
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2879
    nop

    .line 2880
    return-void

    .line 2876
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "doAutoRestore":Z
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2878
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "doAutoRestore":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 11
    .param p1, "enable"    # Z

    .line 2798
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup enabled => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2805
    .local v0, "oldId":J
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 2806
    .local v2, "wasEnabled":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2807
    :try_start_1
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v3, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    .line 2808
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 2809
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2811
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2812
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v4, :cond_0

    .line 2814
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2815
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_1

    .line 2816
    :cond_0
    if-nez p1, :cond_2

    .line 2820
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 2825
    if-eqz v2, :cond_2

    iget-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v4, :cond_2

    .line 2828
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2829
    .local v4, "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2830
    .local v5, "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v7, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    .line 2847
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 2848
    nop

    .line 2850
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2851
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2848
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2847
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2853
    .end local v7    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2857
    .end local v4    # "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2859
    .end local v2    # "wasEnabled":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2860
    nop

    .line 2861
    return-void

    .line 2857
    .restart local v2    # "wasEnabled":Z
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "enable":Z
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2809
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "enable":Z
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "enable":Z
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2859
    .end local v2    # "wasEnabled":Z
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "enable":Z
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupRunning(Z)V
    .locals 0
    .param p1, "backupRunning"    # Z

    .line 697
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 698
    return-void
.end method

.method public setClearingData(Z)V
    .locals 0
    .param p1, "clearingData"    # Z

    .line 709
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 710
    return-void
.end method

.method public setCurrentToken(J)V
    .locals 0
    .param p1, "currentToken"    # J

    .line 779
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 780
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 651
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 652
    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .locals 0
    .param p1, "journal"    # Lcom/android/server/backup/DataChangedJournal;

    .line 759
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 760
    return-void
.end method

.method public setLastBackupPass(J)V
    .locals 0
    .param p1, "lastBackupPass"    # J

    .line 701
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    .line 702
    return-void
.end method

.method setPowerManager(Landroid/os/PowerManager;)V
    .locals 0
    .param p1, "powerManager"    # Landroid/os/PowerManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 640
    return-void
.end method

.method public setRestoreInProgress(Z)V
    .locals 0
    .param p1, "restoreInProgress"    # Z

    .line 717
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 718
    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .locals 0
    .param p1, "runningFullBackupTask"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 797
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 798
    return-void
.end method

.method public setSetupComplete(Z)V
    .locals 0
    .param p1, "setupComplete"    # Z

    .line 659
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 660
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 674
    return-void
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 2736
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2737
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2738
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2739
    monitor-exit v0

    .line 2740
    return-void

    .line 2739
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 1903
    if-nez p1, :cond_0

    .line 1905
    return-void

    .line 1910
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1915
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.backupconfirm"

    .line 1916
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    :cond_1
    goto :goto_0

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method tearDownService()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserBackupThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 603
    return-void
.end method

.method public unbindAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 1487
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    goto :goto_0

    .line 1488
    :catch_0
    move-exception v0

    .line 1491
    :goto_0
    return-void
.end method

.method updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "transportComponent"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "configurationIntent"    # Landroid/content/Intent;
    .param p5, "currentDestinationString"    # Ljava/lang/String;
    .param p6, "dataManagementIntent"    # Landroid/content/Intent;
    .param p7, "dataManagementLabel"    # Ljava/lang/CharSequence;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2981
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "updateTransportAttributes"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    const-string/jumbo v0, "transportComponent can\'t be null"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    const-string/jumbo v0, "name can\'t be null"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    const-string v0, "currentDestinationString can\'t be null"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p6, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez p7, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v3, "dataManagementLabel should be null iff dataManagementIntent is null"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2993
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 2994
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2995
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2996
    .local v0, "transportUid":I
    move/from16 v12, p1

    if-ne v12, v0, :cond_3

    .line 3001
    .end local v0    # "transportUid":I
    nop

    .line 3003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3005
    .local v13, "oldId":J
    :try_start_1
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/TransportManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3013
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3014
    nop

    .line 3015
    return-void

    .line 3013
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2997
    .end local v13    # "oldId":J
    .restart local v0    # "transportUid":I
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the transport can change its description"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "callingUid":I
    .end local p2    # "transportComponent":Landroid/content/ComponentName;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "configurationIntent":Landroid/content/Intent;
    .end local p5    # "currentDestinationString":Ljava/lang/String;
    .end local p6    # "dataManagementIntent":Landroid/content/Intent;
    .end local p7    # "dataManagementLabel":Ljava/lang/CharSequence;
    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2999
    .end local v0    # "transportUid":I
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "callingUid":I
    .restart local p2    # "transportComponent":Landroid/content/ComponentName;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "configurationIntent":Landroid/content/Intent;
    .restart local p5    # "currentDestinationString":Ljava/lang/String;
    .restart local p6    # "dataManagementIntent":Landroid/content/Intent;
    .restart local p7    # "dataManagementLabel":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v12, p1

    .line 3000
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Transport package not found"

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 2962
    nop

    .line 2963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2962
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 2970
    return-void
.end method

.method public waitUntilOperationComplete(I)Z
    .locals 4
    .param p1, "token"    # I

    .line 1803
    const/4 v0, 0x0

    .line 1804
    .local v0, "finalState":I
    const/4 v1, 0x0

    .line 1805
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1807
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    move-object v1, v3

    .line 1808
    if-nez v1, :cond_0

    .line 1810
    goto :goto_2

    .line 1812
    :cond_0
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 1814
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1815
    :catch_0
    move-exception v3

    .line 1816
    :goto_1
    goto :goto_0

    .line 1824
    :cond_1
    :try_start_2
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    move v0, v3

    .line 1825
    nop

    .line 1829
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 1832
    if-eqz v1, :cond_2

    .line 1833
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v3, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1839
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2

    .line 1829
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public writeRestoreTokens()V
    .locals 5

    .line 1416
    const-string v0, "BackupManagerService"

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "af":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 1418
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1421
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1422
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1425
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 1426
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_1

    .line 1428
    :cond_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1431
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1433
    .end local v4    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 1435
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1437
    .end local v1    # "af":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 1416
    .restart local v1    # "af":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    .end local v1    # "af":Ljava/io/RandomAccessFile;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1435
    .restart local v1    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v1    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_0
    move-exception v1

    .line 1436
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to write token file:"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1438
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
