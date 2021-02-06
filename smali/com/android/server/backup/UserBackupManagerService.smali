.class public Lcom/android/server/backup/UserBackupManagerService;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    }
.end annotation


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

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERIAL_ID_FILE:Ljava/lang/String; = "serial_id"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final SKIP_USER_FACING_PACKAGES:Ljava/lang/String; = "backup_skip_user_facing_packages"

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.android.wallpaperbackup"


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

.field private final mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

.field private volatile mBackupRunning:Z

.field private final mBaseStateDir:Ljava/io/File;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private final mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentOpLock:Ljava/lang/Object;

.field private final mCurrentOperations:Landroid/util/SparseArray;
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

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private final mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field private final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

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

.field private final mRunInitIntent:Landroid/app/PendingIntent;

.field private final mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private mSetupComplete:Z

.field private final mSetupObserver:Landroid/database/ContentObserver;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mUserId:I

.field private final mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .locals 19
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Lcom/android/server/backup/BackupManagerService;
    .param p4, "userBackupThread"    # Landroid/os/HandlerThread;
    .param p5, "baseStateDir"    # Ljava/io/File;
    .param p6, "dataDir"    # Ljava/io/File;
    .param p7, "transportManager"    # Lcom/android/server/backup/TransportManager;

    .line 545
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 351
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 378
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 379
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 393
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 419
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 422
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 423
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 437
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 438
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 439
    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1069
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1272
    new-instance v3, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    iput v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 547
    const-string v3, "context cannot be null"

    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    check-cast v3, Landroid/content/Context;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 549
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 550
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 551
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 553
    const-string v3, "alarm"

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 554
    const-string/jumbo v3, "power"

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 555
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 557
    const-string/jumbo v3, "parent cannot be null"

    move-object/from16 v14, p3

    invoke-static {v14, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 558
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/BackupManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 560
    new-instance v3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 561
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 562
    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->start()V

    .line 564
    const-string/jumbo v3, "userBackupThread cannot be null"

    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 565
    new-instance v3, Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v3, v1, v10}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/HandlerThread;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 569
    .local v15, "resolver":Landroid/content/ContentResolver;
    invoke-static {v9, v2}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 570
    const-string v3, "backup_auto_restore"

    const/4 v8, 0x1

    invoke-static {v15, v3, v8, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 573
    new-instance v3, Lcom/android/server/backup/internal/SetupObserver;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v3, v1, v4}, Lcom/android/server/backup/internal/SetupObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    .line 574
    nop

    .line 575
    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 574
    invoke-virtual {v15, v3, v7, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 580
    const-string v3, "baseStateDir cannot be null"

    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v11

    check-cast v3, Ljava/io/File;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 583
    if-nez v2, :cond_1

    .line 584
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 585
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELinux restorecon failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 586
    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_1
    const-string v3, "dataDir cannot be null"

    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v12

    check-cast v3, Ljava/io/File;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 596
    new-instance v3, Lcom/android/server/backup/BackupPasswordManager;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 599
    new-instance v3, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v3, v1}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v3

    .line 601
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.app.backup.intent.INIT"

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 604
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const/16 v16, 0x0

    .line 602
    const-string v17, "android.permission.BACKUP"

    move-object/from16 v3, p2

    move-object/from16 v18, v6

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .local v18, "filter":Landroid/content/IntentFilter;
    move v0, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 609
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.backup.intent.INIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v3, "initIntent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    nop

    .line 617
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 612
    invoke-static {v9, v0, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 620
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v5, "pending"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 621
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 622
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 624
    new-instance v0, Lcom/android/server/backup/BackupManagerConstants;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/server/backup/BackupManagerConstants;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 628
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->start()V

    .line 633
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v4

    .line 634
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 635
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    nop

    .line 638
    const-string/jumbo v0, "transportManager cannot be null"

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, Lcom/android/server/backup/TransportManager;

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 639
    new-instance v4, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;

    invoke-direct {v4, v1}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$9cuIH_XloqtNByp_6hXeGaVars8;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, v4}, Lcom/android/server/backup/TransportManager;->setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 641
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 642
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;

    invoke-direct {v5, v4}, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;-><init>(Lcom/android/server/backup/TransportManager;)V

    .line 641
    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY;

    invoke-direct {v4, v1}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$_gNqJq9Ygtc0ZVwYhCSDKCUKrKY;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 648
    new-instance v0, Lcom/android/server/backup/UserBackupPreferences;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v4, v5}, Lcom/android/server/backup/UserBackupPreferences;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 651
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*backup*-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 652
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;I)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 657
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v5, "fb-schedule"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 658
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->initPackageTracking()V

    .line 659
    return-void

    .line 635
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .line 168
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashSet;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/backup/UserBackupManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/backup/UserBackupManagerService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/backup/UserBackupManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 1413
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 1414
    .local v0, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    .line 1421
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1422
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1421
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1428
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1430
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

    .line 1441
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

    .line 1442
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1443
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1444
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1445
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 1446
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v3, v4

    .line 1447
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1449
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1459
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x10

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1460
    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1461
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1463
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "uid":I
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    goto :goto_0

    .line 1464
    :cond_3
    return-void
.end method

.method private static addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 4229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UserID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1523
    const/high16 v0, 0x8000000

    .line 1524
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1

    .line 1525
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1526
    .local v2, "numPackages":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "a":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1527
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1529
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1530
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

    .line 1538
    :cond_0
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x400

    iget v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object v5, v6

    .line 1540
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 1541
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    goto :goto_2

    .line 1533
    :cond_1
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_2
    goto :goto_3

    .line 1543
    :catch_0
    move-exception v5

    .line 1544
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1526
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1547
    .end local v3    # "a":I
    :cond_2
    return-object v1
.end method

.method private clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkFlagAllowClearUserDataOnFailedRestore"    # Z
    .param p3, "keepSystemState"    # Z

    .line 1690
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1694
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    .line 1696
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

    .line 1699
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

    .line 1703
    .restart local v3    # "shouldClearData":Z
    :goto_1
    if-nez v3, :cond_3

    .line 1712
    return-void

    .line 1720
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "shouldClearData":Z
    :cond_3
    nop

    .line 1722
    new-instance v0, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1724
    .local v0, "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1725
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1727
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v1, p1, p3, v0, v4}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1731
    goto :goto_2

    .line 1729
    :catch_0
    move-exception v1

    .line 1734
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    .line 1735
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

    .line 1737
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1749
    goto :goto_3

    .line 1738
    :catch_1
    move-exception v1

    .line 1740
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 1741
    const-string v6, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Interrupted while waiting for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " data to be cleared"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1743
    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1741
    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1749
    nop

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 1752
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    if-eqz v1, :cond_5

    .line 1753
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clearing app data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " timed out"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1755
    invoke-static {v2, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1753
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    .end local v4    # "timeoutMark":J
    :cond_5
    monitor-exit v3

    .line 1759
    return-void

    .line 1758
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 1714
    .end local v0    # "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    :catch_2
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to clear data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1717
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1715
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-void
.end method

.method public static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 9
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p3, "userBackupThread"    # Landroid/os/HandlerThread;
    .param p4, "baseStateDir"    # Ljava/io/File;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "transportManager"    # Lcom/android/server/backup/TransportManager;

    .line 515
    new-instance v8, Lcom/android/server/backup/UserBackupManagerService;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;-><init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    return-object v8
.end method

.method static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 11
    .param p0, "userId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/BackupManagerService;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/server/backup/UserBackupManagerService;"
        }
    .end annotation

    .line 457
    .local p3, "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    nop

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    const-string v1, "backup_transport"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "currentTransport":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 465
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting with transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {p0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v9, Lcom/android/server/backup/TransportManager;

    invoke-direct {v9, p0, p1, p3, v0}, Lcom/android/server/backup/TransportManager;-><init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 472
    .local v9, "transportManager":Lcom/android/server/backup/TransportManager;
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    .line 473
    .local v1, "baseStateDir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getDataDir(I)Ljava/io/File;

    move-result-object v10

    .line 475
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

    .line 477
    .local v6, "userBackupThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    move-object v8, v10

    invoke-static/range {v3 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;

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

    .line 2568
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2569
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataChanged but no participant pkg=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2571
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2569
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    return-void

    .line 2581
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2583
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2586
    new-instance v1, Lcom/android/server/backup/keyvalue/BackupRequest;

    invoke-direct {v1, p1}, Lcom/android/server/backup/keyvalue/BackupRequest;-><init>(Ljava/lang/String;)V

    .line 2587
    .local v1, "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2598
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 2601
    .end local v1    # "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 2605
    return-void

    .line 2601
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

    .line 2611
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2611
    const-string v3, "android.permission.BACKUP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2614
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    monitor-exit v0

    return-object v1

    .line 2615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2619
    :cond_0
    const-string v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2620
    const-string v0, "@pm@"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    .line 2622
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2623
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2624
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

    .line 2225
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2226
    .local v0, "numPackages":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2227
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2228
    .local v2, "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v3, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2229
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2226
    .end local v2    # "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2232
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4120
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 4121
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v1, "Defined backup agents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 4123
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4124
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4125
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 4126
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4127
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 4129
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4133
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 4134
    .local v3, "userPrefix":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4135
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Backup Manager is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    if-eqz v5, :cond_1

    const-string v5, "enabled"

    goto :goto_1

    :cond_1
    const-string v5, "disabled"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4136
    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v5, :cond_2

    const-string/jumbo v5, "not "

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setup complete / "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4137
    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "not "

    goto :goto_3

    :cond_3
    const-string v5, ""

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pending init"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4135
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-restore is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-eqz v5, :cond_4

    const-string v5, "enabled"

    goto :goto_4

    :cond_4
    const-string v5, "disabled"

    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v0, :cond_5

    const-string v0, "Backup currently running"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Backup in progress"

    goto :goto_5

    :cond_6
    const-string v0, "No backups running"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last backup pass started: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " (now = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4141
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  next scheduled: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v5}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Transport whitelist:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4146
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 4147
    .local v5, "transport":Landroid/content/ComponentName;
    const-string v6, "    "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4148
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    .end local v5    # "transport":Landroid/content/ComponentName;
    goto :goto_6

    .line 4151
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Available transports:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4152
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 4153
    .local v5, "transports":[Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 4154
    array-length v6, v5

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_a

    aget-object v0, v5, v8

    move-object v9, v0

    .line 4155
    .local v9, "t":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v10}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "  * "

    goto :goto_8

    .line 4156
    :cond_8
    const-string v10, "    "

    :goto_8
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4155
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4158
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4159
    invoke-virtual {v11, v9}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4160
    .local v0, "dir":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "       destination: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4161
    invoke-virtual {v11, v9}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4160
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "       intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4163
    invoke-virtual {v11, v9}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4162
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_9

    aget-object v13, v10, v12

    .line 4165
    .local v13, "f":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "       "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4166
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v16, v8

    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " state bytes"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4165
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4164
    .end local v13    # "f":Ljava/io/File;
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v16

    goto :goto_9

    .line 4168
    .end local v0    # "dir":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_a

    .line 4164
    .restart local v0    # "dir":Ljava/io/File;
    :cond_9
    move/from16 v16, v8

    .line 4171
    .end local v0    # "dir":Ljava/io/File;
    goto :goto_b

    .line 4168
    :catch_1
    move-exception v0

    move/from16 v16, v8

    .line 4169
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    :try_start_3
    const-string v7, "BackupManagerService"

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v10, "Error in transport"

    invoke-static {v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "t":Ljava/lang/String;
    :goto_b
    add-int/lit8 v8, v16, 0x1

    goto/16 :goto_7

    .line 4175
    :cond_a
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    .line 4177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Pending init: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4178
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4179
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_c

    .line 4182
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Ancestral: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4183
    iget-wide v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Current:   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4185
    iget-wide v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4187
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4188
    .local v0, "numPackages":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Participants:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4189
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, v0, :cond_d

    .line 4190
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4191
    .local v7, "uid":I
    const-string v8, "  uid: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4192
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4193
    iget-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    .line 4194
    .local v8, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4195
    .local v10, "app":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4196
    .end local v10    # "app":Ljava/lang/String;
    goto :goto_e

    .line 4189
    .end local v7    # "uid":I
    .end local v8    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 4199
    .end local v6    # "i":I
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Ancestral packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4200
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v7, :cond_e

    const-string/jumbo v7, "none"

    goto :goto_f

    :cond_e
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4199
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4201
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-eqz v6, :cond_f

    .line 4202
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4203
    .local v7, "pkg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4204
    .end local v7    # "pkg":Ljava/lang/String;
    goto :goto_10

    .line 4207
    :cond_f
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v6}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v6

    .line 4208
    .local v6, "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Ever backed up: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4209
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4210
    .local v8, "pkg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4211
    .end local v8    # "pkg":Ljava/lang/String;
    goto :goto_11

    .line 4213
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Pending key/value backup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4214
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 4215
    .local v8, "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4216
    .end local v8    # "req":Lcom/android/server/backup/keyvalue/BackupRequest;
    goto :goto_12

    .line 4218
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Full backup queue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4219
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 4220
    .local v8, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    const-string v9, "    "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4221
    iget-wide v9, v8, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 4222
    const-string v9, " : "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4223
    iget-object v9, v8, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    .end local v8    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    goto :goto_13

    .line 4225
    .end local v0    # "numPackages":I
    .end local v5    # "transports":[Ljava/lang/String;
    .end local v6    # "processedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    monitor-exit v4

    .line 4226
    return-void

    .line 4225
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private fullBackupAllowable(Ljava/lang/String;)Z
    .locals 9
    .param p1, "transportName"    # Ljava/lang/String;

    .line 2268
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BackupManagerService"

    if-nez v0, :cond_0

    .line 2269
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2271
    const-string v3, "Transport not registered; full data backup not performed"

    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2269
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return v1

    .line 2279
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2280
    .local v0, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2281
    .local v3, "stateDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "@pm@"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2282
    .local v4, "pmState":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    .line 2284
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Full backup requested but dataset not yet initialized"

    .line 2286
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2284
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    return v1

    .line 2298
    .end local v0    # "transportDirName":Ljava/lang/String;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "pmState":Ljava/io/File;
    :cond_1
    nop

    .line 2300
    const/4 v0, 0x1

    return v0

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "e":Ljava/lang/Exception;
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get transport name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2295
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2293
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    return v1
.end method

.method private getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2726
    new-instance v0, Ljava/io/File;

    .line 2727
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "serial_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2729
    invoke-static {v0}, Lcom/android/server/backup/utils/FileUtils;->createNewFile(Ljava/io/File;)Ljava/io/File;

    .line 2731
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    const-string/jumbo v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .locals 3
    .param p1, "operationType"    # I

    .line 1965
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1971
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/4 v0, -0x1

    return v0

    .line 1969
    :cond_0
    const/16 v0, 0x12

    return v0

    .line 1967
    :cond_1
    const/16 v0, 0x11

    return v0
.end method

.method public static getSetupCompleteSettingForUser(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 530
    nop

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 530
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private initPackageTracking()V
    .locals 8

    .line 906
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 907
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

    .line 909
    .local v0, "tokenStream":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 910
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 911
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 912
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 914
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 915
    .local v2, "numPackages":I
    if-ltz v2, :cond_0

    .line 916
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 917
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 918
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 919
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    nop

    .end local v4    # "pkgName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "version":I
    .end local v2    # "numPackages":I
    .end local v3    # "i":I
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 907
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 926
    .end local v0    # "tokenStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Unable to read token file"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 923
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 925
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "No ancestral data"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v0    # "fnf":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 930
    :goto_3
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 931
    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->init()V

    .line 933
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 936
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 939
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 940
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 941
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 942
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 943
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 944
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 946
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 944
    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 952
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 953
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 954
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 957
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v7, 0x0

    .line 955
    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 961
    return-void

    .line 936
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

    .line 1238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    sub-long/2addr v0, v2

    .line 1239
    .local v0, "timeMs":J
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms after first request (delay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1239
    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .end local v0    # "timeMs":J
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1253
    .local v0, "stateDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1255
    new-instance v1, Ljava/io/File;

    const-string v2, "_need_init_"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1256
    .local v1, "initSentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1258
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1261
    const-wide/32 v3, 0xea60

    .line 1262
    .local v3, "delay":J
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    .line 1263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 1262
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1264
    .end local v3    # "delay":J
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1266
    :cond_0
    :goto_0
    return-void
.end method

.method private parseLeftoverJournals()V
    .locals 7

    .line 1116
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1117
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

    .line 1118
    .local v2, "journal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1120
    :try_start_0
    new-instance v3, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;

    invoke-direct {v3, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$W51Aw9Pu9AOsFVYQgIZy31INmwI;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    goto :goto_1

    .line 1130
    :catch_0
    move-exception v3

    .line 1131
    .local v3, "e":Ljava/io/IOException;
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    .end local v2    # "journal":Lcom/android/server/backup/DataChangedJournal;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1135
    :cond_1
    return-void
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    .line 964
    move-object/from16 v1, p0

    const-string v2, "Package "

    const-string v3, "BackupManagerService"

    const/4 v4, 0x0

    .line 965
    .local v4, "changed":Z
    const/4 v5, 0x0

    .line 966
    .local v5, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 967
    invoke-static {v0, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v6

    .line 969
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 970
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v9, v0

    .line 971
    .local v9, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v10, v0

    .line 972
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object v11, v0

    .line 973
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v12, v0

    .line 974
    .local v12, "version":I
    const/4 v0, 0x1

    if-eq v12, v0, :cond_0

    .line 975
    :try_start_4
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown backup schedule version "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1043
    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 983
    return-object v0

    .line 970
    .end local v12    # "version":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    .line 987
    .restart local v12    # "version":I
    :cond_0
    :try_start_8
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v13, v0

    .line 988
    .local v13, "numPackages":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 994
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v13}, Ljava/util/HashSet;-><init>(I)V

    move-object v14, v0

    .line 996
    .local v14, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    if-ge v15, v13, :cond_3

    .line 997
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 998
    .local v16, "pkgName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 999
    .local v19, "lastBackup":J
    move-object/from16 v7, v16

    .end local v16    # "pkgName":Ljava/lang/String;
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v14, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1001
    :try_start_9
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v21, v4

    const/4 v4, 0x0

    .end local v4    # "changed":Z
    .local v21, "changed":Z
    :try_start_a
    invoke-virtual {v0, v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1002
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v4, :cond_2

    :try_start_b
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 1003
    invoke-static {v4, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1005
    new-instance v4, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .local v8, "version":I
    .local v12, "lastBackup":J
    .local v16, "numPackages":I
    :try_start_c
    invoke-direct {v4, v7, v12, v13}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move/from16 v20, v8

    goto :goto_2

    .line 1012
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    move/from16 v20, v8

    goto :goto_3

    .line 1003
    .end local v8    # "version":I
    .end local v16    # "numPackages":I
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :cond_1
    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .restart local v8    # "version":I
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    goto :goto_1

    .line 1012
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v8    # "version":I
    .end local v16    # "numPackages":I
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :catch_1
    move-exception v0

    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    move/from16 v20, v8

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .restart local v8    # "version":I
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    goto :goto_3

    .line 1002
    .end local v8    # "version":I
    .end local v16    # "numPackages":I
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :cond_2
    move v8, v12

    move/from16 v16, v13

    move-wide/from16 v12, v19

    .line 1008
    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .restart local v8    # "version":I
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    :goto_1
    :try_start_d
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    move-object/from16 v19, v0

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v19, "pkg":Landroid/content/pm/PackageInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move/from16 v20, v8

    .end local v8    # "version":I
    .local v20, "version":I
    :try_start_e
    const-string v8, " no longer eligible for full backup"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1017
    .end local v19    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_2
    goto :goto_4

    .line 1012
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v20    # "version":I
    .restart local v8    # "version":I
    :catch_3
    move-exception v0

    move/from16 v20, v8

    .end local v8    # "version":I
    .restart local v20    # "version":I
    goto :goto_3

    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .local v19, "lastBackup":J
    :catch_4
    move-exception v0

    move/from16 v16, v13

    move-wide/from16 v22, v19

    move/from16 v20, v12

    move-wide/from16 v12, v22

    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    .restart local v20    # "version":I
    goto :goto_3

    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    .restart local v19    # "lastBackup":J
    :catch_5
    move-exception v0

    move/from16 v21, v4

    move/from16 v16, v13

    move-wide/from16 v22, v19

    move/from16 v20, v12

    move-wide/from16 v12, v22

    .line 1014
    .end local v4    # "changed":Z
    .end local v13    # "numPackages":I
    .end local v19    # "lastBackup":J
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v12, "lastBackup":J
    .restart local v16    # "numPackages":I
    .restart local v20    # "version":I
    .restart local v21    # "changed":Z
    :goto_3
    :try_start_f
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, " not installed; dropping from full backup"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v12    # "lastBackup":J
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    move/from16 v12, v20

    move/from16 v4, v21

    goto/16 :goto_0

    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    .local v12, "version":I
    .restart local v13    # "numPackages":I
    :cond_3
    move/from16 v21, v4

    move/from16 v20, v12

    move/from16 v16, v13

    .line 1022
    .end local v4    # "changed":Z
    .end local v12    # "version":I
    .end local v13    # "numPackages":I
    .end local v15    # "i":I
    .restart local v16    # "numPackages":I
    .restart local v20    # "version":I
    .restart local v21    # "changed":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v4, v21

    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    :goto_5
    :try_start_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1023
    .local v2, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 1024
    invoke-static {v7, v8}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1026
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1036
    new-instance v7, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v12, 0x0

    invoke-direct {v7, v8, v12, v13}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    const/4 v4, 0x1

    .line 1040
    .end local v2    # "app":Landroid/content/pm/PackageInfo;
    :cond_4
    goto :goto_5

    .line 1042
    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1043
    .end local v14    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "numPackages":I
    .end local v20    # "version":I
    :try_start_11
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .end local v11    # "in":Ljava/io/DataInputStream;
    :try_start_12
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 1047
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    goto :goto_d

    .line 970
    .end local v4    # "changed":Z
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "changed":Z
    :catchall_1
    move-exception v0

    move-object v2, v0

    move/from16 v4, v21

    goto :goto_6

    .end local v21    # "changed":Z
    .restart local v4    # "changed":Z
    :catchall_2
    move-exception v0

    move/from16 v21, v4

    move-object v2, v0

    :goto_6
    :try_start_14
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_15
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_7
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move/from16 v21, v4

    move-object v2, v0

    :goto_8
    :try_start_16
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v7, v0

    :try_start_17
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_9
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_7
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move/from16 v21, v4

    move-object v2, v0

    :goto_a
    :try_start_18
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object v7, v0

    :try_start_19
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "changed":Z
    .end local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_b
    throw v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    .line 1043
    .end local v9    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "changed":Z
    .restart local v5    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    move/from16 v21, v4

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "Unable to read backup schedule"

    invoke-static {v2, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1046
    const/4 v5, 0x0

    goto :goto_d

    .line 969
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move/from16 v21, v4

    .line 1050
    :goto_d
    if-nez v5, :cond_8

    .line 1053
    const/4 v4, 0x1

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 1055
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1056
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v3, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1058
    new-instance v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v7, v8, v9}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1056
    :cond_7
    const-wide/16 v8, 0x0

    .line 1060
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_f
    goto :goto_e

    .line 1063
    :cond_8
    if-eqz v4, :cond_9

    .line 1064
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1066
    :cond_9
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

    .line 1503
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1516
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :cond_0
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .line 1468
    if-nez p1, :cond_0

    .line 1469
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string/jumbo v1, "removePackageParticipants with null list"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-void

    .line 1483
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1485
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1486
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1487
    invoke-direct {p0, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1495
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1483
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    :cond_2
    return-void
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 3155
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3157
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3158
    return-void
.end method

.method private startConfirmationUi(ILjava/lang/String;)Z
    .locals 3
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 3138
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3139
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v1, "com.android.backupconfirm"

    const-string v2, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3141
    const-string v1, "conftoken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3142
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3143
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3146
    .end local v0    # "confIntent":Landroid/content/Intent;
    nop

    .line 3147
    const/4 v0, 0x1

    return v0

    .line 3144
    :catch_0
    move-exception v0

    .line 3145
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private updateStateForTransport(Ljava/lang/String;)V
    .locals 9
    .param p1, "newTransportName"    # Ljava/lang/String;

    .line 3600
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "backup_transport"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3604
    const-string v0, "BMS.updateStateForTransport()"

    .line 3605
    .local v0, "callerLogString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3606
    invoke-virtual {v1, p1, v0}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    .line 3607
    .local v1, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const-wide/16 v2, 0x0

    const-string v4, "Transport "

    const-string v5, "BackupManagerService"

    if-eqz v1, :cond_0

    .line 3609
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    .line 3610
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3622
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_0

    .line 3611
    :catch_0
    move-exception v6

    .line 3614
    .local v6, "e":Ljava/lang/Exception;
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3615
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not available: current token = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3617
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3615
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    goto :goto_1

    .line 3625
    :cond_0
    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not registered: current token = 0"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3627
    invoke-static {v6, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3625
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    iput-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 3636
    :goto_1
    return-void
.end method

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 2
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 3161
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3162
    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3164
    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3165
    :catch_0
    move-exception v1

    :goto_1
    goto :goto_0

    .line 3167
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 3168
    return-void

    .line 3167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeFullBackupScheduleAsync()V
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1112
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 2630
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2631
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    goto :goto_0

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to backup journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2635
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2633
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2639
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

    .line 3185
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3187
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3185
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3201
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3202
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    .line 3203
    .local v3, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v3, :cond_2

    .line 3204
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3205
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3207
    if-eqz p2, :cond_1

    .line 3208
    instance-of v4, v3, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz v4, :cond_0

    .line 3209
    const/4 v4, 0x2

    goto :goto_0

    .line 3210
    :cond_0
    const/16 v4, 0xa

    :goto_0
    nop

    .line 3212
    .local v4, "verb":I
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3213
    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 3215
    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 3223
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3224
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 3225
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3226
    nop

    .end local v4    # "verb":I
    .end local v5    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3227
    :cond_1
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "User rejected full backup/restore operation"

    .line 3229
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3227
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    goto :goto_1

    .line 3235
    :cond_2
    const-string v4, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Attempted to ack full backup/restore with invalid token"

    .line 3237
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3235
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3243
    .end local v3    # "params":Lcom/android/server/backup/params/AdbParams;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3244
    nop

    .line 3245
    return-void

    .line 3241
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

    .line 3243
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

    .line 3244
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

    .line 2890
    move-object/from16 v1, p0

    move/from16 v13, p4

    move/from16 v14, p6

    move-object/from16 v15, p10

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "adbBackup"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    .line 2893
    .local v16, "callingUserHandle":I
    if-nez v16, :cond_4

    .line 2898
    if-nez v14, :cond_1

    .line 2899
    if-nez v13, :cond_1

    .line 2903
    if-eqz v15, :cond_0

    array-length v0, v15

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2904
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Backup requested but neither shared nor any apps named"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2912
    .local v17, "oldId":J
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v0, :cond_2

    .line 2913
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Backup not supported before setup"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2977
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2984
    goto :goto_1

    .line 2978
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2979
    .local v0, "e":Ljava/io/IOException;
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2981
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2979
    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2986
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    return-void

    .line 2918
    :cond_2
    :try_start_2
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting backup: apks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " obb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " shared="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " all="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " system="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " includekeyvalue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " pkgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2920
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2918
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Beginning adb backup..."

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
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

    .line 2942
    .local v2, "params":Lcom/android/server/backup/params/AdbBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    move v3, v0

    .line 2943
    .local v3, "token":I
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2944
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2945
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2949
    :try_start_4
    const-string v0, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting backup confirmation UI, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2951
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2949
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const-string v0, "fullback"

    invoke-direct {v1, v3, v0}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2955
    const-string v0, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Unable to launch backup confirmation UI"

    .line 2957
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2955
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2977
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2984
    goto :goto_2

    .line 2978
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2979
    .restart local v0    # "e":Ljava/io/IOException;
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing output for adb backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2981
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2979
    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2986
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Adb backup processing complete."

    invoke-static {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    return-void

    .line 2963
    :cond_3
    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2968
    invoke-direct {v1, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2972
    const-string v0, "BackupManagerService"

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Waiting for backup completion..."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    invoke-direct {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2977
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v3    # "token":I
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2984
    goto :goto_3

    .line 2978
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2979
    .restart local v0    # "e":Ljava/io/IOException;
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing output for adb backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2981
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2979
    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2986
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Adb backup processing complete."

    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    nop

    .line 2988
    return-void

    .line 2945
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

    .line 2976
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

    .line 2977
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2984
    goto :goto_4

    .line 2978
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2979
    .restart local v0    # "e":Ljava/io/IOException;
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2981
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2979
    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2986
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Adb backup processing complete."

    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    throw v2

    .line 2894
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

    .line 3059
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "adbRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3062
    .local v0, "callingUserHandle":I
    if-nez v0, :cond_2

    .line 3066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3069
    .local v1, "oldId":J
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v3, :cond_0

    .line 3070
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Full restore not permitted before setup"

    .line 3072
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3070
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3114
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3120
    goto :goto_0

    .line 3115
    :catch_0
    move-exception v3

    .line 3116
    .local v3, "e":Ljava/io/IOException;
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3118
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3116
    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3122
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    return-void

    .line 3076
    :cond_0
    :try_start_2
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Beginning restore..."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    new-instance v3, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v3, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3079
    .local v3, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    .line 3080
    .local v4, "token":I
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3081
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3082
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3086
    :try_start_4
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting restore confirmation UI, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3088
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3086
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    const-string v5, "fullrest"

    invoke-direct {p0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3092
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "Unable to launch restore confirmation"

    .line 3094
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3092
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3114
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3120
    goto :goto_1

    .line 3115
    :catch_1
    move-exception v5

    .line 3116
    .local v5, "e":Ljava/io/IOException;
    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3118
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3116
    const-string v7, "BackupManagerService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3122
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "adb restore processing complete."

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BackupManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    return-void

    .line 3100
    :cond_1
    :try_start_6
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3105
    invoke-direct {p0, v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 3109
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "Waiting for restore completion..."

    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-direct {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3114
    .end local v3    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "token":I
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 3120
    goto :goto_2

    .line 3115
    :catch_2
    move-exception v3

    .line 3116
    .local v3, "e":Ljava/io/IOException;
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to close fd after adb restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3118
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3116
    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3122
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "adb restore processing complete."

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    nop

    .line 3124
    return-void

    .line 3082
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

    .line 3113
    .end local v3    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "token":I
    .restart local v0    # "callingUserHandle":I
    .restart local v1    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v3

    .line 3114
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 3120
    goto :goto_3

    .line 3115
    :catch_3
    move-exception v4

    .line 3116
    .local v4, "e":Ljava/io/IOException;
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after adb restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3118
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3116
    const-string v6, "BackupManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3122
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "adb restore processing complete."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    throw v3

    .line 3063
    .end local v1    # "oldId":J
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .line 3754
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3755
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 3756
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3758
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3756
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3762
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_0

    .line 3764
    :cond_0
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3766
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3764
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3773
    monitor-exit v0

    .line 3774
    return-void

    .line 3773
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3783
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3784
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 3785
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3786
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    goto :goto_0

    .line 3788
    :cond_0
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " claiming agent disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3790
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3788
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3797
    monitor-exit v0

    .line 3798
    return-void

    .line 3797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public backupNow()V
    .locals 8

    .line 2819
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "backupNow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2823
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    .line 2824
    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v2

    .line 2825
    .local v2, "result":Landroid/os/PowerSaveState;
    iget-boolean v3, v2, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_0

    .line 2827
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Not running backup while in battery save mode"

    .line 2829
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2827
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    goto :goto_1

    .line 2836
    :cond_0
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Scheduling immediate backup pass"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2840
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v4, :cond_1

    .line 2850
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2851
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2856
    goto :goto_0

    .line 2852
    :catch_0
    move-exception v4

    .line 2853
    .local v4, "ce":Landroid/app/PendingIntent$CanceledException;
    :try_start_3
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v7, "Run init intent cancelled"

    .line 2855
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2853
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    .end local v4    # "ce":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2877
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    return-void

    .line 2859
    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2862
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 2871
    :cond_2
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2872
    .local v3, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2874
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2877
    .end local v2    # "result":Landroid/os/PowerSaveState;
    .end local v3    # "message":Landroid/os/Message;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2878
    nop

    .line 2879
    return-void

    .line 2863
    .restart local v2    # "result":Landroid/os/PowerSaveState;
    :cond_3
    :goto_2
    :try_start_6
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup pass but enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " setupComplete="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2865
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2863
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2877
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2867
    return-void

    .line 2859
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "oldId":J
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2877
    .end local v2    # "result":Landroid/os/PowerSaveState;
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2878
    throw v2
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;

    .line 1160
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 28
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 2314
    move-object/from16 v11, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2317
    .local v12, "now":J
    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    monitor-enter v1

    .line 2318
    :try_start_0
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v14, v2

    .line 2319
    .local v14, "fullBackupInterval":J
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v2

    move-wide v9, v2

    .line 2320
    .local v9, "keyValueBackupInterval":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 2321
    const/4 v1, 0x0

    .line 2322
    .local v1, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide v2, v14

    .line 2324
    .local v2, "latency":J
    iget-boolean v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v0, :cond_0

    move-wide/from16 v26, v9

    goto/16 :goto_9

    .line 2337
    :cond_0
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x4

    .line 2338
    invoke-virtual {v0, v5}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v8

    .line 2339
    .local v8, "result":Landroid/os/PowerSaveState;
    iget-boolean v0, v8, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v0, :cond_1

    .line 2341
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2343
    const-string v5, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2341
    const-string v5, "BackupManagerService"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v5, v9, v10, v6}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2347
    return v4

    .line 2351
    :cond_1
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2353
    const-string v5, "Beginning scheduled full backup operation"

    invoke-static {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2351
    const-string v5, "BackupManagerService"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    iget-object v7, v11, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2358
    :try_start_1
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v0, :cond_2

    .line 2359
    :try_start_2
    const-string v0, "BackupManagerService"

    iget v5, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v6, "Backup triggered but one already/still running!"

    .line 2361
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2359
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    .line 2510
    :catchall_0
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    goto/16 :goto_8

    .line 2369
    :cond_2
    const/4 v0, 0x1

    .line 2375
    .local v0, "runBackup":Z
    :goto_0
    :try_start_3
    iget-object v5, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    if-nez v5, :cond_3

    .line 2378
    :try_start_4
    const-string v5, "BackupManagerService"

    iget v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Backup queue empty; doing nothing"

    .line 2380
    invoke-static {v6, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2378
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2383
    const/4 v0, 0x0

    .line 2384
    move-wide v4, v2

    move-object/from16 v27, v8

    move-object v8, v1

    goto/16 :goto_7

    .line 2387
    :cond_3
    const/4 v4, 0x0

    .line 2389
    .local v4, "headBusy":Z
    :try_start_5
    iget-object v5, v11, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    .line 2390
    .local v5, "transportName":Ljava/lang/String;
    invoke-direct {v11, v5}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-nez v6, :cond_4

    .line 2397
    const/4 v0, 0x0

    .line 2401
    move-wide v2, v9

    .line 2404
    :cond_4
    if-eqz v0, :cond_b

    .line 2405
    :try_start_6
    iget-object v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v18, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_start_7
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v1, v6

    .line 2406
    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-wide/from16 v19, v2

    .end local v2    # "latency":J
    .local v19, "latency":J
    :try_start_8
    iget-wide v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    sub-long v2, v12, v2

    .line 2407
    .local v2, "timeSinceRun":J
    cmp-long v6, v2, v14

    if-ltz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 2408
    .end local v0    # "runBackup":Z
    .local v6, "runBackup":Z
    :goto_1
    if-nez v6, :cond_6

    .line 2418
    sub-long v18, v14, v2

    .line 2419
    .end local v19    # "latency":J
    .local v18, "latency":J
    move v0, v6

    move-object/from16 v27, v8

    move-wide/from16 v4, v18

    move-object v8, v1

    goto/16 :goto_7

    .line 2423
    .end local v18    # "latency":J
    .restart local v19    # "latency":J
    :cond_6
    :try_start_9
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-wide/from16 v21, v2

    .end local v2    # "timeSinceRun":J
    .local v21, "timeSinceRun":J
    :try_start_a
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    iget v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move/from16 v23, v4

    const/4 v4, 0x0

    .end local v4    # "headBusy":Z
    .local v23, "headBusy":Z
    :try_start_b
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2425
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v2, :cond_7

    .line 2439
    :try_start_c
    iget-object v2, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2440
    const/4 v4, 0x1

    .line 2441
    .end local v23    # "headBusy":Z
    .restart local v4    # "headBusy":Z
    move v0, v6

    move-object/from16 v27, v8

    goto/16 :goto_6

    .line 2510
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "headBusy":Z
    .end local v5    # "transportName":Ljava/lang/String;
    .end local v6    # "runBackup":Z
    .end local v21    # "timeSinceRun":J
    :catchall_1
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    move-wide/from16 v2, v19

    goto/16 :goto_8

    .line 2469
    .restart local v5    # "transportName":Ljava/lang/String;
    .restart local v6    # "runBackup":Z
    .restart local v21    # "timeSinceRun":J
    .restart local v23    # "headBusy":Z
    :catch_0
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v27, v8

    move/from16 v4, v23

    goto/16 :goto_4

    .line 2444
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_d
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 2445
    .local v2, "privFlags":I
    and-int/lit16 v3, v2, 0x2000

    if-nez v3, :cond_8

    :try_start_e
    iget-object v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2446
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
    move v4, v3

    .line 2449
    .end local v23    # "headBusy":Z
    .restart local v4    # "headBusy":Z
    if-eqz v4, :cond_9

    .line 2450
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const-wide/32 v25, 0x36ee80

    add-long v23, v23, v25

    iget-object v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    move-object/from16 v18, v0

    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .local v18, "appInfo":Landroid/content/pm/PackageInfo;
    const v0, 0x6ddd00

    .line 2452
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move/from16 v25, v2

    .end local v2    # "privFlags":I
    .local v25, "privFlags":I
    int-to-long v2, v0

    add-long v2, v23, v2

    .line 2454
    .local v2, "nextEligible":J
    new-instance v0, Ljava/text/SimpleDateFormat;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move/from16 v23, v4

    .end local v4    # "headBusy":Z
    .restart local v23    # "headBusy":Z
    :try_start_10
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v4, "BackupManagerService"
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v24, v5

    .end local v5    # "transportName":Ljava/lang/String;
    .local v24, "transportName":Ljava/lang/String;
    :try_start_11
    iget v5, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move/from16 v26, v6

    .end local v6    # "runBackup":Z
    .local v26, "runBackup":Z
    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v27, v8

    .end local v8    # "result":Landroid/os/PowerSaveState;
    .local v27, "result":Landroid/os/PowerSaveState;
    :try_start_13
    const-string v8, "Full backup time but "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is busy; deferring to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2462
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2457
    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2455
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    nop

    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    sub-long v4, v2, v14

    invoke-virtual {v11, v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_3

    .line 2469
    .end local v2    # "nextEligible":J
    .end local v18    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v25    # "privFlags":I
    :catch_1
    move-exception v0

    move/from16 v4, v23

    goto :goto_4

    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :catch_2
    move-exception v0

    move-object/from16 v27, v8

    move/from16 v4, v23

    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    goto :goto_4

    .end local v26    # "runBackup":Z
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v6    # "runBackup":Z
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :catch_3
    move-exception v0

    move/from16 v26, v6

    move-object/from16 v27, v8

    move/from16 v4, v23

    .end local v6    # "runBackup":Z
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v26    # "runBackup":Z
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    goto :goto_4

    .line 2449
    .end local v23    # "headBusy":Z
    .end local v24    # "transportName":Ljava/lang/String;
    .end local v26    # "runBackup":Z
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    .local v2, "privFlags":I
    .restart local v4    # "headBusy":Z
    .restart local v5    # "transportName":Ljava/lang/String;
    .restart local v6    # "runBackup":Z
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :cond_9
    move-object/from16 v18, v0

    move/from16 v25, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v27, v8

    .line 2475
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "privFlags":I
    .end local v4    # "headBusy":Z
    .end local v5    # "transportName":Ljava/lang/String;
    .end local v6    # "runBackup":Z
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v23    # "headBusy":Z
    .restart local v24    # "transportName":Ljava/lang/String;
    .restart local v26    # "runBackup":Z
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    :goto_3
    move/from16 v4, v23

    move/from16 v0, v26

    goto/16 :goto_6

    .line 2469
    .end local v24    # "transportName":Ljava/lang/String;
    .end local v26    # "runBackup":Z
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v5    # "transportName":Ljava/lang/String;
    .restart local v6    # "runBackup":Z
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :catch_4
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v27, v8

    move/from16 v4, v23

    .end local v5    # "transportName":Ljava/lang/String;
    .end local v6    # "runBackup":Z
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v24    # "transportName":Ljava/lang/String;
    .restart local v26    # "runBackup":Z
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    goto :goto_4

    .end local v23    # "headBusy":Z
    .end local v24    # "transportName":Ljava/lang/String;
    .end local v26    # "runBackup":Z
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v4    # "headBusy":Z
    .restart local v5    # "transportName":Ljava/lang/String;
    .restart local v6    # "runBackup":Z
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :catch_5
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v27, v8

    .end local v4    # "headBusy":Z
    .end local v5    # "transportName":Ljava/lang/String;
    .end local v6    # "runBackup":Z
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v23    # "headBusy":Z
    .restart local v24    # "transportName":Ljava/lang/String;
    .restart local v26    # "runBackup":Z
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    goto :goto_4

    .end local v21    # "timeSinceRun":J
    .end local v23    # "headBusy":Z
    .end local v24    # "transportName":Ljava/lang/String;
    .end local v26    # "runBackup":Z
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .local v2, "timeSinceRun":J
    .restart local v4    # "headBusy":Z
    .restart local v5    # "transportName":Ljava/lang/String;
    .restart local v6    # "runBackup":Z
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :catch_6
    move-exception v0

    move-wide/from16 v21, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v27, v8

    .line 2474
    .end local v2    # "timeSinceRun":J
    .end local v5    # "transportName":Ljava/lang/String;
    .end local v6    # "runBackup":Z
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .local v0, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21    # "timeSinceRun":J
    .restart local v24    # "transportName":Ljava/lang/String;
    .restart local v26    # "runBackup":Z
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    :goto_4
    :try_start_14
    iget-object v2, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    move v0, v2

    .end local v26    # "runBackup":Z
    .local v2, "runBackup":Z
    goto :goto_6

    .line 2510
    .end local v0    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "runBackup":Z
    .end local v4    # "headBusy":Z
    .end local v21    # "timeSinceRun":J
    .end local v24    # "transportName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v7

    move-wide/from16 v2, v19

    move-object/from16 v25, v27

    move-wide/from16 v26, v9

    goto/16 :goto_8

    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    move-wide/from16 v2, v19

    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    goto/16 :goto_8

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v19    # "latency":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .local v2, "latency":J
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .local v18, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :catchall_4
    move-exception v0

    move-wide/from16 v19, v2

    move-object/from16 v16, v7

    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    move-object/from16 v1, v18

    .end local v2    # "latency":J
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v19    # "latency":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    goto/16 :goto_8

    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v19    # "latency":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v2    # "latency":J
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move-object/from16 v16, v7

    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "latency":J
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v19    # "latency":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    goto/16 :goto_8

    .line 2404
    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v19    # "latency":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .local v0, "runBackup":Z
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v2    # "latency":J
    .restart local v4    # "headBusy":Z
    .restart local v5    # "transportName":Ljava/lang/String;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    :cond_b
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v27, v8

    .line 2477
    .end local v2    # "latency":J
    .end local v5    # "transportName":Ljava/lang/String;
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v19    # "latency":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    :goto_6
    if-nez v4, :cond_d

    move-object v8, v1

    move-wide/from16 v4, v19

    .line 2479
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v19    # "latency":J
    .local v4, "latency":J
    .local v8, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :goto_7
    if-nez v0, :cond_c

    .line 2481
    :try_start_15
    const-string v1, "BackupManagerService"

    iget v2, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2483
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2481
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    move-wide v1, v4

    .line 2488
    .local v1, "deferTime":J
    iget v3, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v6, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    move/from16 v18, v0

    .end local v0    # "runBackup":Z
    .local v18, "runBackup":Z
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v6, v1, v2, v0}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2489
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    const/4 v3, 0x0

    return v3

    .line 2510
    .end local v1    # "deferTime":J
    .end local v18    # "runBackup":Z
    :catchall_6
    move-exception v0

    move-wide v2, v4

    move-object/from16 v16, v7

    move-object v1, v8

    move-object/from16 v25, v27

    move-wide/from16 v26, v9

    goto/16 :goto_8

    .line 2493
    .restart local v0    # "runBackup":Z
    :cond_c
    move/from16 v18, v0

    .end local v0    # "runBackup":Z
    .restart local v18    # "runBackup":Z
    :try_start_16
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2494
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move v2, v1

    .line 2495
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v3, v2, [Ljava/lang/String;

    iget-object v0, v8, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 2496
    .local v3, "pkg":[Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "BMS.beginFullBackup()"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move-object/from16 v1, p0

    move/from16 v22, v2

    move-object v2, v0

    move-wide/from16 v23, v4

    .end local v4    # "latency":J
    .local v23, "latency":J
    move/from16 v4, v16

    move-object/from16 v5, p1

    move-object/from16 v16, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move-object/from16 v25, v27

    .end local v8    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .local v17, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v25, "result":Landroid/os/PowerSaveState;
    move-object/from16 v8, v19

    move-wide/from16 v26, v9

    .end local v9    # "keyValueBackupInterval":J
    .local v26, "keyValueBackupInterval":J
    move/from16 v9, v20

    move-object/from16 v10, v21

    :try_start_17
    invoke-static/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 2508
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2509
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, v11, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2510
    .end local v3    # "pkg":[Ljava/lang/String;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v18    # "runBackup":Z
    monitor-exit v16
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 2512
    return v22

    .line 2510
    :catchall_7
    move-exception v0

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    goto :goto_8

    .end local v17    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v23    # "latency":J
    .end local v25    # "result":Landroid/os/PowerSaveState;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v4    # "latency":J
    .restart local v8    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v9    # "keyValueBackupInterval":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    :catchall_8
    move-exception v0

    move-wide/from16 v23, v4

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v25, v27

    move-wide/from16 v26, v9

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    .end local v4    # "latency":J
    .end local v8    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v9    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v17    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v23    # "latency":J
    .restart local v25    # "result":Landroid/os/PowerSaveState;
    .restart local v26    # "keyValueBackupInterval":J
    goto :goto_8

    .line 2477
    .end local v17    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v23    # "latency":J
    .end local v25    # "result":Landroid/os/PowerSaveState;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v0    # "runBackup":Z
    .local v1, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v4, "headBusy":Z
    .restart local v9    # "keyValueBackupInterval":J
    .restart local v19    # "latency":J
    .restart local v27    # "result":Landroid/os/PowerSaveState;
    :cond_d
    move-object/from16 v16, v7

    move-object/from16 v25, v27

    move-wide/from16 v26, v9

    .end local v9    # "keyValueBackupInterval":J
    .end local v27    # "result":Landroid/os/PowerSaveState;
    .restart local v25    # "result":Landroid/os/PowerSaveState;
    .restart local v26    # "keyValueBackupInterval":J
    move-wide/from16 v2, v19

    move-object/from16 v8, v25

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2510
    .end local v0    # "runBackup":Z
    .end local v4    # "headBusy":Z
    .end local v19    # "latency":J
    .end local v25    # "result":Landroid/os/PowerSaveState;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v2    # "latency":J
    .local v8, "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :catchall_9
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v16, v7

    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .local v18, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v25    # "result":Landroid/os/PowerSaveState;
    .restart local v26    # "keyValueBackupInterval":J
    goto :goto_8

    .end local v18    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v25    # "result":Landroid/os/PowerSaveState;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v8    # "result":Landroid/os/PowerSaveState;
    .restart local v9    # "keyValueBackupInterval":J
    :catchall_a
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v25, v8

    move-wide/from16 v26, v9

    .end local v8    # "result":Landroid/os/PowerSaveState;
    .end local v9    # "keyValueBackupInterval":J
    .restart local v25    # "result":Landroid/os/PowerSaveState;
    .restart local v26    # "keyValueBackupInterval":J
    :goto_8
    :try_start_18
    monitor-exit v16
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_8

    .line 2324
    .end local v25    # "result":Landroid/os/PowerSaveState;
    .end local v26    # "keyValueBackupInterval":J
    .restart local v9    # "keyValueBackupInterval":J
    :cond_e
    move-wide/from16 v26, v9

    .line 2332
    .end local v9    # "keyValueBackupInterval":J
    .restart local v26    # "keyValueBackupInterval":J
    :goto_9
    const/4 v4, 0x0

    return v4

    .line 2320
    .end local v1    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "latency":J
    .end local v14    # "fullBackupInterval":J
    .end local v26    # "keyValueBackupInterval":J
    :catchall_c
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    throw v0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .line 3911
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRestoreSession: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3913
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3911
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    const/4 v0, 0x1

    .line 3919
    .local v0, "needPermission":Z
    if-nez p2, :cond_0

    .line 3920
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    .line 3922
    if-eqz p1, :cond_0

    .line 3923
    const/4 v1, 0x0

    .line 3925
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

    .line 3932
    nop

    .line 3934
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3938
    const/4 v0, 0x0

    goto :goto_0

    .line 3926
    :catch_0
    move-exception v2

    .line 3927
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3929
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3927
    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
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

    .line 3943
    .end local v1    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3944
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "beginRestoreSession"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3948
    :cond_1
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3950
    const-string/jumbo v2, "restoring self on current transport; no permission needed"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3948
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    :goto_1
    monitor-enter p0

    .line 3957
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3958
    const-string v1, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Restore session requested but one already active"

    .line 3960
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3958
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    monitor-exit p0

    return-object v2

    .line 3964
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    if-eqz v1, :cond_3

    .line 3965
    const-string v1, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Restore session requested but currently running backups"

    .line 3967
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3965
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    monitor-exit p0

    return-object v2

    .line 3972
    :cond_3
    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3973
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 3974
    invoke-virtual {v3}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v3

    .line 3973
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3975
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3976
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v1

    .line 3975
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .line 1607
    const/4 v0, 0x0

    .line 1608
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1609
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1610
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-interface {v3, v4, p2, v5}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1613
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "awaiting agent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 1618
    .local v3, "timeoutMark":J
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_0

    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    .line 1621
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1627
    :goto_1
    goto :goto_0

    .line 1622
    :catch_0
    move-exception v5

    .line 1624
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "BackupManagerService"

    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Interrupted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 1626
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1631
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    if-eqz v5, :cond_1

    .line 1632
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1634
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1632
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1638
    :cond_1
    const-string v2, "BackupManagerService"

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    .line 1644
    .end local v3    # "timeoutMark":J
    :cond_2
    goto :goto_2

    .line 1642
    :catch_1
    move-exception v2

    .line 1645
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1646
    if-nez v0, :cond_3

    .line 1647
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    .line 1649
    :cond_3
    return-object v0

    .line 1645
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

    .line 1901
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "cancelBackups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1907
    .local v0, "oldToken":J
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    .local v2, "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1909
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1910
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/Operation;

    .line 1911
    .local v5, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1912
    .local v6, "token":I
    iget v7, v5, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1913
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1909
    .end local v5    # "op":Lcom/android/server/backup/internal/Operation;
    .end local v6    # "token":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1916
    .end local v4    # "i":I
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1917
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

    .line 1918
    .local v4, "token":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 1919
    .end local v4    # "token":Ljava/lang/Integer;
    goto :goto_1

    .line 1922
    :cond_2
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x36ee80

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1923
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v5, 0x6ddd00

    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1925
    .end local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1926
    nop

    .line 1927
    return-void

    .line 1916
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

    .line 1925
    .end local v2    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "oldToken":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1926
    throw v2
.end method

.method public clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1666
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1667
    return-void
.end method

.method public clearApplicationDataBeforeRestore(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1674
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 1675
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2743
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBackupData() of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2745
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2743
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x8000000

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2761
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 2766
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2766
    const-string v4, "android.permission.BACKUP"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2768
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .local v1, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 2778
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->getPackagesCopy()Ljava/util/Set;

    move-result-object v1

    .line 2781
    .restart local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2788
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2789
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2790
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v5, "BMS.clearBackupData()"

    .line 2792
    invoke-virtual {v4, p1, v5}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v4

    .line 2793
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v4, :cond_1

    .line 2795
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v6, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v6, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2797
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2798
    monitor-exit v2

    return-void

    .line 2800
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2801
    .local v5, "oldId":J
    new-instance v3, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TD-nE027xyQbZ7zQ3L8rJfQM2V4;

    invoke-direct {v3, p0, v4}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TD-nE027xyQbZ7zQ3L8rJfQM2V4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 2804
    .local v3, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2805
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v8, 0x4

    new-instance v9, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v9, v4, v0, v3}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2808
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2809
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2810
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

    .line 2812
    :cond_2
    :goto_1
    return-void

    .line 2754
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2755
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' - not clearing backup data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2757
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2755
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return-void
.end method

.method public clearPendingInits()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 861
    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 3
    .param p1, "currentSession"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3981
    monitor-enter p0

    .line 3982
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_0

    .line 3983
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "ending non-current restore session"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3986
    :cond_0
    const-string v0, "BackupManagerService"

    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Clearing restore session and halting timeout"

    .line 3988
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3986
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3992
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 3994
    :goto_0
    monitor-exit p0

    .line 3995
    return-void

    .line 3994
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2645
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2646
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2647
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2655
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2649
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2647
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    return-void

    .line 2659
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService$4;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 2664
    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2560
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2561
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2562
    return-void
.end method

.method public deviceIsEncrypted()Z
    .locals 5

    .line 2175
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 2177
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2175
    :goto_0
    return v0

    .line 2179
    :catch_0
    move-exception v1

    .line 2182
    .local v1, "e":Ljava/lang/Exception;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with storagemanager service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2184
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2182
    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4097
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4099
    .local v0, "identityToken":J
    if-eqz p3, :cond_3

    .line 4100
    :try_start_0
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 4101
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "agents"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4102
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4103
    return-void

    .line 4104
    :cond_0
    :try_start_1
    const-string/jumbo v5, "transportclients"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4105
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4106
    return-void

    .line 4107
    :cond_1
    :try_start_2
    const-string/jumbo v5, "transportstats"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4108
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p2}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4109
    return-void

    .line 4100
    .end local v4    # "arg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4113
    :cond_3
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4116
    nop

    .line 4117
    return-void

    .line 4115
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4116
    throw v2
.end method

.method public endFullBackup()V
    .locals 3

    .line 2522
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/UserBackupManagerService$3;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2542
    .local v0, "endFullBackupRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "end-full-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2543
    return-void
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .line 2238
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .line 2239
    .local v0, "newEntry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2243
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 2249
    const/4 v2, -0x1

    .line 2250
    .local v2, "which":I
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_1

    .line 2251
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 2252
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 2253
    .local v3, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-wide v4, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v4, v4, p2

    if-gtz v4, :cond_0

    .line 2254
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2255
    goto :goto_1

    .line 2251
    .end local v3    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2259
    :cond_1
    :goto_1
    if-gez v2, :cond_2

    .line 2261
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2263
    .end local v2    # "which":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2264
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 2265
    return-void

    .line 2263
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3131
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "excludeKeysFromRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/UserBackupPreferences;->addExcludedKeys(Ljava/lang/String;Ljava/util/List;)V

    .line 3134
    return-void
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "packages"    # [Ljava/lang/String;

    .line 4070
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "filterAppsEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4075
    .local v0, "oldToken":J
    :try_start_0
    const-string v2, "BMS.filterAppsEligibleForBackup"

    .line 4076
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4077
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 4078
    .local v3, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 4079
    .local v4, "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 4080
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 4081
    invoke-static {v3, v7, v8, v9}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4083
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4079
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4086
    :cond_1
    if-eqz v3, :cond_2

    .line 4087
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 4089
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4091
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4089
    return-object v5

    .line 4091
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v4    # "eligibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4092
    throw v2
.end method

.method public filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 3571
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipUserFacingData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3572
    return-object p1

    .line 3575
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3576
    .local v0, "filteredPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 3577
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3578
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3580
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will skip backup/restore for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    goto :goto_0

    .line 3584
    :cond_2
    return-object v0
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 18
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 2992
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "fullTransportBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 2997
    .local v13, "callingUserHandle":I
    if-nez v13, :cond_2

    .line 3001
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v14

    .line 3002
    .local v14, "transportName":Ljava/lang/String;
    invoke-direct {v11, v14}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    move-result v0

    const-string v15, "BackupManagerService"

    if-nez v0, :cond_0

    .line 3003
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3005
    const-string v1, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3003
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3010
    :cond_0
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "fullTransportBackup()"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3015
    .local v16, "oldId":J
    :try_start_0
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3016
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

    .line 3028
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3029
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "full-transport-master"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3032
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3033
    nop

    .line 3040
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3041
    .local v2, "now":J
    array-length v0, v12

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    aget-object v5, v12, v4

    .line 3042
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v11, v5, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3041
    .end local v5    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3045
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "now":J
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3046
    nop

    .line 3050
    .end local v16    # "oldId":J
    :goto_2
    iget v0, v11, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v1, "Done with full transport backup."

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    return-void

    .line 3034
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v16    # "oldId":J
    :catch_0
    move-exception v0

    .line 3037
    goto :goto_0

    .line 3045
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3046
    throw v0

    .line 2998
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

    .line 873
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 874
    .local v0, "token":I
    if-gez v0, :cond_0

    neg-int v0, v0

    .line 875
    :cond_0
    and-int/lit16 v0, v0, -0x100

    .line 876
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 877
    return v0
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 702
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

    .line 809
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralSerialNumber()J
    .locals 3

    .line 2712
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2713
    .local v0, "af":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2714
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2713
    :cond_0
    return-wide v1

    .line 2712
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2714
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_0
    move-exception v0

    .line 2715
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2717
    const-string v2, "Unable to write to work profile serial number file:"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2715
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2720
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1766
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreToken"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 1770
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1771
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->hasBeenProcessed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1778
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    move-wide v0, v3

    .line 1780
    :cond_0
    monitor-exit v2

    .line 1784
    return-wide v0

    .line 1780
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getBackupHandler()Landroid/os/Handler;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .locals 1

    .line 4234
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3644
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getConfigurationIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3654
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 3655
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3656
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get configuration intent from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3658
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3656
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConstants()Lcom/android/server/backup/BackupManagerConstants;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOpLock()Ljava/lang/Object;
    .locals 1

    .line 805
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

    .line 801
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentToken()J
    .locals 2

    .line 847
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    .line 3347
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    .line 3356
    .local v0, "currentTransport":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .locals 4

    .line 3365
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransportComponent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3369
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3369
    return-object v2

    .line 3373
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3374
    throw v2

    .line 3370
    :catch_0
    move-exception v2

    .line 3371
    .local v2, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const/4 v3, 0x0

    .line 3373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3371
    return-object v3
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3700
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementIntent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3711
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    .line 3712
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3713
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get management intent from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3715
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3713
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3727
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDataManagementLabel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3731
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3738
    .local v0, "label":Ljava/lang/CharSequence;
    return-object v0

    .line 3739
    .end local v0    # "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 3740
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get management label from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3744
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3742
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3740
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "transportName"    # Ljava/lang/String;

    .line 3676
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getDestinationString"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3687
    .local v0, "string":Ljava/lang/String;
    return-object v0

    .line 3688
    .end local v0    # "string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3689
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get destination string from transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3693
    invoke-virtual {v0}, Lcom/android/server/backup/transport/TransportNotRegisteredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3691
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3689
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    const/4 v1, 0x0

    return-object v1
.end method

.method public getExcludedRestoreKeys(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupPreferences;->getExcludedRestoreKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method getPackageTrackingReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

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

    .line 757
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

    .line 855
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

    .line 793
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 678
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    return v0
.end method

.method public getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cancelAll"    # Z

    .line 2073
    const/4 v0, 0x0

    .line 2074
    .local v0, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2075
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    .line 2087
    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2088
    .local v3, "state":I
    :goto_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2091
    const-string v2, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    const/4 v0, 0x0

    .line 2095
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1

    .line 2096
    :cond_1
    if-nez v3, :cond_3

    .line 2098
    const-string v5, "BackupManagerService"

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cancel: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2100
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2098
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iput v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 2110
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/server/backup/internal/Operation;->type:I

    if-ne v2, v4, :cond_3

    .line 2111
    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v4, v0, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v4}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2114
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2115
    .end local v3    # "state":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_4

    .line 2122
    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v1, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    .line 2124
    :cond_4
    return-void

    .line 2115
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

    .line 1155
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method initializeBackupEnableState()V
    .locals 1

    .line 662
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(I)Z

    move-result v0

    .line 663
    .local v0, "isEnabled":Z
    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    .line 664
    return-void
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 5
    .param p1, "transportNames"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    .line 2668
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "initializeTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeTransport(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2672
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2670
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2677
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 2678
    new-instance v2, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$pLslHGi1wuuGrjS32QbMlDjlGbM;

    invoke-direct {v2, p0}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$pLslHGi1wuuGrjS32QbMlDjlGbM;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 2679
    .local v2, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    nop

    .end local v2    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2683
    nop

    .line 2684
    return-void

    .line 2682
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2683
    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4048
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isAppEligibleForBackup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4051
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4053
    .local v0, "oldToken":J
    :try_start_0
    const-string v2, "BMS.isAppEligibleForBackup"

    .line 4054
    .local v2, "callerLogString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 4055
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 4056
    .local v3, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 4057
    invoke-static {v3, p1, v4, v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    .line 4059
    .local v4, "eligible":Z
    if-eqz v3, :cond_0

    .line 4060
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4062
    :cond_0
    nop

    .line 4064
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4062
    return v4

    .line 4064
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v3    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v4    # "eligible":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4065
    throw v2
.end method

.method public isBackupEnabled()Z
    .locals 3

    .line 3340
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .locals 5

    .line 2128
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2130
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    .line 2131
    .local v2, "op":Lcom/android/server/backup/internal/Operation;
    iget v3, v2, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v3, :cond_0

    .line 2132
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2129
    .end local v2    # "op":Lcom/android/server/backup/internal/Operation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2135
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 2136
    const/4 v0, 0x0

    return v0

    .line 2135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBackupRunning()Z
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method public isSetupComplete()Z
    .locals 1

    .line 727
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    return v0
.end method

.method public synthetic lambda$clearBackupData$3$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 2803
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initializeTransports$2$UserBackupManagerService(Ljava/lang/String;)V
    .locals 1
    .param p1, "caller"    # Ljava/lang/String;

    .line 2678
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method

.method public synthetic lambda$parseLeftoverJournals$0$UserBackupManagerService(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1121
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 1123
    const-string v1, "Found stale backup journal, scheduling"

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method public synthetic lambda$requestBackup$1$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 1847
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$restoreAtInstall$6$UserBackupManagerService(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 3862
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3863
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 3864
    return-void
.end method

.method public synthetic lambda$selectBackupTransportAsync$5$UserBackupManagerService(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 6
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3527
    const/4 v0, 0x0

    .line 3528
    .local v0, "transportName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3529
    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->registerAndSelectTransport(Landroid/content/ComponentName;)I

    move-result v1

    .line 3530
    .local v1, "result":I
    const-string v2, "BackupManagerService"

    if-nez v1, :cond_0

    .line 3532
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3533
    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 3534
    invoke-direct {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3541
    goto :goto_0

    .line 3535
    :catch_0
    move-exception v3

    .line 3536
    .local v3, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3538
    const-string v5, "Transport got unregistered"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3536
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    const/4 v1, -0x1

    .line 3545
    .end local v3    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3546
    :try_start_1
    invoke-interface {p2, v0}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 3548
    :cond_1
    invoke-interface {p2, v1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3557
    :goto_1
    goto :goto_2

    .line 3550
    :catch_1
    move-exception v3

    .line 3551
    .local v3, "e":Landroid/os/RemoteException;
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3553
    const-string v5, "ISelectBackupTransportCallback listener not available"

    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3551
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public synthetic lambda$setBackupEnabled$4$UserBackupManagerService(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "transportNames"    # Ljava/util/List;
    .param p2, "transportDirNames"    # Ljava/util/List;
    .param p3, "name"    # Ljava/lang/String;

    .line 3287
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3297
    .local v0, "dirName":Ljava/lang/String;
    nop

    .line 3298
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3299
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3300
    return-void

    .line 3288
    .end local v0    # "dirName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3290
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3292
    const-string v2, "Unexpected unregistered transport"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3290
    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3296
    return-void
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .locals 3

    .line 3387
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 3

    .line 3379
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1555
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getBackupFinishedNotificationReceivers()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1558
    .local v3, "receiver":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1559
    .local v4, "notification":Landroid/content/Intent;
    const-string v5, "android.intent.action.BACKUP_FINISHED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    const v5, 0x10000020

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1563
    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1557
    .end local v3    # "receiver":Ljava/lang/String;
    .end local v4    # "notification":Landroid/content/Intent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/ProcessedPackagesJournal;->addPackage(Ljava/lang/String;)V

    .line 1568
    return-void
.end method

.method public makeMetadataAgent()Landroid/app/backup/BackupAgent;
    .locals 3

    .line 885
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;I)V

    .line 886
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 887
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 888
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

    .line 895
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 897
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    .line 898
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 899
    return-object v0
.end method

.method public opComplete(IJ)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "result"    # J

    .line 4009
    const/4 v0, 0x0

    .line 4010
    .local v0, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4011
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/Operation;

    move-object v0, v2

    .line 4012
    if-eqz v0, :cond_2

    .line 4013
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4016
    const/4 v0, 0x0

    .line 4017
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 4018
    :cond_0
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4020
    const-string v2, "BackupManagerService"

    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received duplicate ack for token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4025
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4022
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4020
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    const/4 v0, 0x0

    .line 4028
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 4029
    :cond_1
    iget v2, v0, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v2, :cond_2

    .line 4032
    iput v3, v0, Lcom/android/server/backup/internal/Operation;->state:I

    .line 4035
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 4036
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4039
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v1, :cond_3

    .line 4040
    iget-object v1, v0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 4041
    .local v1, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4042
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4044
    .end local v1    # "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    .line 4036
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

    .line 1932
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    .line 1933
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1935
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1933
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return-void

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/backup/internal/Operation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1958
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v2

    invoke-virtual {v1, v2, p1, v3, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1960
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1961
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1962
    return-void

    .line 1961
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

    .line 1996
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1998
    monitor-exit v0

    .line 1999
    return-void

    .line 1998
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

    .line 1143
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    .line 1144
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1145
    return-object v0
.end method

.method public recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;
    .param p3, "transportDirName"    # Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1181
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1182
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "_need_init_"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1184
    .local v2, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 1188
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v3

    .line 1193
    :goto_0
    goto :goto_1

    .line 1196
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1197
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1199
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "initPendingFile":Ljava/io/File;
    :goto_1
    monitor-exit v0

    .line 1200
    return-void

    .line 1199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeOperation(I)V
    .locals 5
    .param p1, "token"    # I

    .line 2012
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2013
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2014
    const-string v1, "BackupManagerService"

    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate remove for operation. token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2014
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2018
    monitor-exit v0

    .line 2019
    return-void

    .line 2018
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

    .line 1793
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

    .line 1802
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "requestBackup"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string v0, "BackupManagerService"

    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_8

    array-length v5, v2

    if-lt v5, v6, :cond_8

    .line 1813
    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    const/16 v8, -0x7d1

    if-eqz v5, :cond_6

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v5, :cond_0

    goto/16 :goto_4

    .line 1833
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 1835
    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    .line 1834
    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1836
    .local v5, "transportDirName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const-string v9, "BMS.requestBackup()"

    .line 1837
    invoke-virtual {v0, v9}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v15, v0

    .line 1844
    .local v15, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    nop

    .line 1846
    new-instance v11, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$sAYsrY5C5zAl7EgKgwo188kx6JE;

    .local v11, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v11, v1, v15}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$sAYsrY5C5zAl7EgKgwo188kx6JE;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1850
    .local v10, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 1851
    .local v9, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v2

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v12, v2, v4

    .line 1852
    .local v12, "packageName":Ljava/lang/String;
    const-string v0, "@pm@"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1853
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    goto :goto_2

    .line 1857
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x8000000

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v12, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1859
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1860
    invoke-static {v13, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1862
    goto :goto_2

    .line 1864
    :cond_2
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1865
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1867
    :cond_3
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1872
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    goto :goto_2

    .line 1869
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v6, -0x7d2

    invoke-static {v13, v12, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1851
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "packageName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_0

    .line 1874
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

    .line 1875
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1874
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1890
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move/from16 v12, v16

    .line 1892
    .local v12, "nonIncrementalBackup":Z
    :goto_3
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1893
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

    .line 1895
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1896
    return v16

    .line 1838
    .end local v0    # "msg":Landroid/os/Message;
    .end local v5    # "transportDirName":Ljava/lang/String;
    .end local v12    # "nonIncrementalBackup":Z
    .end local v15    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v18    # "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    :catch_1
    move-exception v0

    .line 1839
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1840
    const/16 v2, 0x32

    const/4 v5, 0x1

    invoke-static {v14, v2, v4, v5, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1843
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v3

    .line 1814
    .end local v0    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_6
    :goto_4
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup requested but enabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " setupComplete="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1816
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1814
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    invoke-static {v13, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1822
    iget-boolean v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v0, :cond_7

    .line 1823
    const/16 v0, 0xd

    goto :goto_5

    .line 1824
    :cond_7
    const/16 v0, 0xe

    :goto_5
    nop

    .line 1825
    .local v0, "logTag":I
    const/4 v2, 0x3

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 1827
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    return v8

    .line 1805
    .end local v0    # "logTag":I
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_8
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v5, "No packages named for backup request"

    invoke-static {v2, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-static {v13, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1807
    const/16 v0, 0x31

    const/4 v2, 0x1

    invoke-static {v14, v0, v4, v2, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    .line 1810
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

    .line 1207
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    invoke-virtual {v1}, Lcom/android/server/backup/ProcessedPackagesJournal;->reset()V

    .line 1210
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 1214
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1216
    .local v4, "sf":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_need_init_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1217
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1214
    .end local v4    # "sf":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1220
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1223
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1224
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1225
    .local v0, "numParticipants":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1226
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1227
    .local v3, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 1228
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1229
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1230
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 1225
    .end local v3    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1233
    .end local v0    # "numParticipants":I
    .end local v2    # "i":I
    :cond_3
    monitor-exit v1

    .line 1234
    return-void

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1220
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

    .line 3805
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v2, "BackupManagerService"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    .line 3806
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " attemping install-time restore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3808
    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3806
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    return-void

    .line 3816
    :cond_0
    const/4 v0, 0x0

    .line 3818
    .local v0, "skip":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v11

    .line 3820
    .local v11, "restoreSet":J
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAtInstall pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3827
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " restoreSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3829
    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3822
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3820
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-nez v3, :cond_1

    .line 3833
    const/4 v0, 0x1

    .line 3836
    :cond_1
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3837
    const-string v14, "BMS.restoreAtInstall()"

    invoke-virtual {v3, v14}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v15

    .line 3838
    .local v15, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v15, :cond_2

    .line 3839
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "No transport client"

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    const/4 v0, 0x1

    .line 3843
    :cond_2
    iget-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    if-nez v3, :cond_3

    .line 3845
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-restorable state: auto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3847
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3845
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_0

    .line 3843
    :cond_3
    move/from16 v16, v0

    .line 3853
    .end local v0    # "skip":Z
    .local v16, "skip":Z
    :goto_0
    if-nez v16, :cond_4

    .line 3859
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 3861
    new-instance v10, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;

    invoke-direct {v10, v1, v15}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$TB8LUl0TwUK9CmmdepXioEU4Qxg;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;)V

    .line 3871
    .local v10, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3872
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3873
    move-object v3, v15

    move-wide v6, v11

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {v3 .. v10}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3881
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3889
    nop

    .end local v0    # "msg":Landroid/os/Message;
    .end local v10    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_1

    .line 3882
    :catch_0
    move-exception v0

    .line 3884
    .local v0, "e":Ljava/lang/Exception;
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to contact transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3887
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3886
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3884
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    const/16 v16, 0x1

    .line 3892
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    if-eqz v16, :cond_6

    .line 3895
    if-eqz v15, :cond_5

    .line 3896
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, v15, v14}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 3901
    :cond_5
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Finishing install immediately"

    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
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

    .line 3904
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v3, p2

    :goto_2
    goto :goto_3

    .line 3892
    :cond_6
    move/from16 v3, p2

    .line 3906
    :goto_3
    return-void
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .line 2551
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2552
    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .locals 18
    .param p1, "transportMinLatency"    # J

    .line 2198
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2199
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2203
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 2204
    .local v3, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 2205
    .local v5, "timeSinceLast":J
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    .local v7, "interval":J
    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    sub-long v9, v7, v5

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    .line 2207
    .local v9, "appLatency":J
    :goto_0
    move-wide/from16 v11, p1

    :try_start_1
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 2208
    .local v13, "latency":J
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v16, v3

    .end local v3    # "upcomingLastBackup":J
    .local v16, "upcomingLastBackup":J
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v0, v15, v13, v14, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 2209
    .end local v5    # "timeSinceLast":J
    .end local v7    # "interval":J
    .end local v9    # "appLatency":J
    .end local v13    # "latency":J
    .end local v16    # "upcomingLastBackup":J
    goto :goto_1

    .line 2211
    :cond_1
    move-wide/from16 v11, p1

    const-string v0, "BackupManagerService"

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Full backup queue empty; not scheduling"

    .line 2213
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2211
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    :goto_1
    monitor-exit v2

    .line 2218
    return-void

    .line 2217
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
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3487
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3492
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3493
    .local v2, "previousTransportName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    .line 3494
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransport(transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): previous transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3496
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3494
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3502
    nop

    .line 3504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3502
    return-object v2

    .line 3504
    .end local v2    # "previousTransportName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3505
    throw v2
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 7
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .line 3514
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "selectBackupTransportAsync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3519
    .local v0, "oldId":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 3520
    .local v2, "transportString":Ljava/lang/String;
    const-string v3, "BackupManagerService"

    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransportAsync(transport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3522
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3520
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v4, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$076XriH8-AsUaXKFvRearB4ERls;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$076XriH8-AsUaXKFvRearB4ERls;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3560
    nop

    .end local v2    # "transportString":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3561
    nop

    .line 3562
    return-void

    .line 3560
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3561
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

    .line 839
    .local p1, "ancestralPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 840
    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .locals 4
    .param p1, "ancestralSerialNumber"    # J

    .line 2690
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAncestralSerialNumber"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ancestral work profile id to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2694
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2692
    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumberFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2697
    .local v0, "af":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2698
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2704
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_0
    goto :goto_1

    .line 2696
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .end local p1    # "ancestralSerialNumber":J
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2698
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "ancestralSerialNumber":J
    :catch_0
    move-exception v0

    .line 2699
    .local v0, "e":Ljava/io/IOException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 2701
    const-string v3, "Unable to write to work profile serial mapping file:"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2699
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2705
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method setAncestralSerialNumberFile(Ljava/io/File;)V
    .locals 0
    .param p1, "ancestralSerialNumberFile"    # Ljava/io/File;

    .line 2736
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 2737
    return-void
.end method

.method public setAncestralToken(J)V
    .locals 0
    .param p1, "ancestralToken"    # J

    .line 843
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 844
    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 6
    .param p1, "doAutoRestore"    # Z

    .line 3321
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3328
    .local v0, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3329
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_auto_restore"

    .line 3330
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3329
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3331
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 3332
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3335
    nop

    .line 3336
    return-void

    .line 3332
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

    .line 3334
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "doAutoRestore":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3335
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 11
    .param p1, "enable"    # Z

    .line 3249
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup enabled => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3256
    .local v0, "oldId":J
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3257
    .local v2, "wasEnabled":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3258
    :try_start_1
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-static {v3, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    .line 3259
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 3260
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3262
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3263
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v4, :cond_0

    .line 3265
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-static {v4, v5, v6}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 3266
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_1

    .line 3267
    :cond_0
    if-nez p1, :cond_2

    .line 3273
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 3278
    if-eqz v2, :cond_2

    iget-boolean v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-eqz v4, :cond_2

    .line 3281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3282
    .local v4, "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3283
    .local v5, "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v7, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$C404OP5-rQYG326aUSsvijaNzdg;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    .line 3303
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 3304
    nop

    .line 3306
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3307
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3304
    const/4 v9, 0x1

    invoke-virtual {p0, v9, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3303
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3309
    .end local v6    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3313
    .end local v4    # "transportNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "transportDirNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3315
    .end local v2    # "wasEnabled":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3316
    nop

    .line 3317
    return-void

    .line 3313
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

    .line 3260
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

    .line 3315
    .end local v2    # "wasEnabled":Z
    .restart local v0    # "oldId":J
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    .restart local p1    # "enable":Z
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3316
    throw v2
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .line 1150
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupRunning(Z)V
    .locals 0
    .param p1, "backupRunning"    # Z

    .line 769
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 770
    return-void
.end method

.method public setClearingData(Z)V
    .locals 0
    .param p1, "clearingData"    # Z

    .line 781
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 782
    return-void
.end method

.method public setCurrentToken(J)V
    .locals 0
    .param p1, "currentToken"    # J

    .line 851
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 852
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 723
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 724
    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .locals 0
    .param p1, "journal"    # Lcom/android/server/backup/DataChangedJournal;

    .line 831
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 832
    return-void
.end method

.method public setLastBackupPass(J)V
    .locals 0
    .param p1, "lastBackupPass"    # J

    .line 773
    iput-wide p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    .line 774
    return-void
.end method

.method setPowerManager(Landroid/os/PowerManager;)V
    .locals 0
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    .line 711
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 712
    return-void
.end method

.method public setRestoreInProgress(Z)V
    .locals 0
    .param p1, "restoreInProgress"    # Z

    .line 789
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 790
    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .locals 0
    .param p1, "runningFullBackupTask"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 865
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 866
    return-void
.end method

.method public setSetupComplete(Z)V
    .locals 0
    .param p1, "setupComplete"    # Z

    .line 731
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 732
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 745
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->access$100(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 746
    return-void
.end method

.method public shouldSkipPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3595
    const-string v0, "com.android.wallpaperbackup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldSkipUserFacingData()Z
    .locals 3

    .line 3589
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backup_skip_user_facing_packages"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .line 3172
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3173
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3174
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3175
    monitor-exit v0

    .line 3176
    return-void

    .line 3175
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

    .line 2141
    if-nez p1, :cond_0

    .line 2143
    return-void

    .line 2148
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 2153
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.backupconfirm"

    .line 2154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2158
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2169
    :cond_1
    goto :goto_0

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "e":Landroid/os/RemoteException;
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected tearDownService()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->stop()V

    .line 670
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerConstants;->stop()V

    .line 671
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v0}, Lcom/android/server/backup/internal/BackupHandler;->stop()V

    .line 675
    return-void
.end method

.method public unbindAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 1655
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    goto :goto_0

    .line 1656
    :catch_0
    move-exception v0

    .line 1659
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

    .line 3442
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "updateTransportAttributes"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    const-string/jumbo v0, "transportComponent can\'t be null"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3446
    const-string/jumbo v0, "name can\'t be null"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3447
    const-string v0, "currentDestinationString can\'t be null"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3449
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

    .line 3454
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3455
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3456
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3457
    .local v0, "transportUid":I
    move/from16 v12, p1

    if-ne v12, v0, :cond_3

    .line 3462
    .end local v0    # "transportUid":I
    nop

    .line 3464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3466
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

    .line 3474
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3475
    nop

    .line 3476
    return-void

    .line 3474
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3475
    throw v0

    .line 3458
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

    .line 3460
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

    .line 3461
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

    .line 3423
    nop

    .line 3424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3423
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 3431
    return-void
.end method

.method public waitUntilOperationComplete(I)Z
    .locals 4
    .param p1, "token"    # I

    .line 2027
    const/4 v0, 0x0

    .line 2028
    .local v0, "finalState":I
    const/4 v1, 0x0

    .line 2029
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2031
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/Operation;

    move-object v1, v3

    .line 2032
    if-nez v1, :cond_0

    .line 2034
    goto :goto_2

    .line 2036
    :cond_0
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 2038
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2039
    :catch_0
    move-exception v3

    .line 2040
    :goto_1
    goto :goto_0

    .line 2052
    :cond_1
    :try_start_2
    iget v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    move v0, v3

    .line 2053
    nop

    .line 2057
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2059
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 2060
    if-eqz v1, :cond_2

    .line 2061
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v3, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2067
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2

    .line 2057
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

    .line 1575
    const-string v0, "BackupManagerService"

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    .local v1, "af":Ljava/io/RandomAccessFile;
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1580
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1581
    iget-wide v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1584
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 1585
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_1

    .line 1587
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1589
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ancestral packages:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1592
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1591
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1589
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1595
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1597
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 1599
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1601
    .end local v1    # "af":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 1575
    .restart local v1    # "af":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1599
    .end local v1    # "af":Ljava/io/RandomAccessFile;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService;
    :catch_0
    move-exception v1

    .line 1600
    .local v1, "e":Ljava/io/IOException;
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "Unable to write token file:"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1602
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method
