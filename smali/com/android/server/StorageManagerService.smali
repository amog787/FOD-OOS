.class Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;,
        Lcom/android/server/StorageManagerService$Callbacks;,
        Lcom/android/server/StorageManagerService$UnmountObbAction;,
        Lcom/android/server/StorageManagerService$MountObbAction;,
        Lcom/android/server/StorageManagerService$ObbAction;,
        Lcom/android/server/StorageManagerService$ObbException;,
        Lcom/android/server/StorageManagerService$ObbActionHandler;,
        Lcom/android/server/StorageManagerService$AppFuseMountScope;,
        Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;,
        Lcom/android/server/StorageManagerService$ObbState;,
        Lcom/android/server/StorageManagerService$WatchedLockedUsers;,
        Lcom/android/server/StorageManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_SEEN_MILLIS:Ljava/lang/String; = "lastSeenMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field private static final DEFAULT_FUSE_ENABLED:Z = true

.field private static final EMULATE_FBE_SUPPORTED:Z = true

.field private static final ENABLE_ISOLATED_STORAGE:Z

.field public static final FAILED_MOUNT_RESET_TIMEOUT_SECONDS:I = 0xa

.field private static final FUSE_ENABLED:Ljava/lang/String; = "fuse_enabled"

.field private static final H_ABORT_IDLE_MAINT:I = 0xc

.field private static final H_BOOT_COMPLETED:I = 0xd

.field private static final H_COMPLETE_UNLOCK_USER:I = 0xe

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_RUN_IDLE_MAINT:I = 0xb

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_STATE_CHANGED:I = 0xf

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field private static final ISOLATED_STORAGE_ENABLED:Ljava/lang/String; = "isolated_storage_enabled"

.field public static final KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final LOCAL_LOGV:Z

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x2

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "StorageManagerService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final WATCHDOG_ENABLE:Z = true

.field private static final WHITELIST_FOR_REQUESTING_INSTALL_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZRAM_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.zram_enabled"

.field public static sMediaStoreAuthorityProcessName:Ljava/lang/String;

.field static sSelf:Lcom/android/server/StorageManagerService;


# instance fields
.field private mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

.field private final mAppFuseLock:Ljava/lang/Object;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

.field private volatile mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDownloadsAuthorityAppId:I

.field private volatile mExternalStorageAuthorityAppId:I

.field private final mFuseMountedUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mIsAutomotive:Z

.field private final mIsFuseEnabled:Z

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private final mListener:Landroid/os/IVoldListener;

.field private mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mMediaStoreAuthorityAppId:I

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

.field private mMoveTargetUuid:Ljava/lang/String;

.field private mNextAppFuseName:I

.field private final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMonitorsForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPrimaryStorageUuid:Ljava/lang/String;

.field private mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private volatile mSecureKeyguardShowing:Z

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field private final mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

.field private volatile mStoraged:Landroid/os/IStoraged;

.field private mSystemUnlockedUsers:[I

.field private final mUidsWithLegacyExternalStorage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mVold:Landroid/os/IVold;

.field private final mVoldAppDataIsolationEnabled:Z

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 222
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 228
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/StorageManagerService;->ENABLE_ISOLATED_STORAGE:Z

    .line 254
    const-string v0, "com.oneplus.brickmode"

    const-string v1, "com.oneplus.filemanager"

    const-string v2, "com.oneplus.screenrecord"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->WHITELIST_FOR_REQUESTING_INSTALL_PACKAGES:Ljava/util/List;

    .line 335
    const-string v0, "StorageManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.debug.sm.all"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    .line 338
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    sput-boolean v1, Lcom/android/server/StorageManagerService;->DEBUG_ONEPLUS:Z

    .line 365
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 479
    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/(?:data|media|obb|sandbox)/)([^/]+)(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    .line 585
    const-string/jumbo v0, "password"

    const-string v1, "default"

    const-string/jumbo v2, "pattern"

    const-string/jumbo v3, "pin"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 1840
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 261
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 378
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 390
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 428
    new-instance v0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    .line 431
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 435
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 438
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 442
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 448
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 456
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 458
    iput v0, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 460
    iput v0, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 467
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 469
    iput v0, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 594
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 595
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 596
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 622
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 625
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 628
    new-instance v3, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 638
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 641
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    .line 862
    new-instance v3, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1352
    new-instance v3, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 3994
    new-instance v3, Lcom/android/server/StorageManagerService$14;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$14;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    .line 1841
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 1844
    nop

    .line 1845
    const-string/jumbo v3, "persist.sys.isolated_storage"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1844
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sys.isolated_storage_snapshot"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string/jumbo v3, "persist.sys.fuse"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    .line 1851
    if-eqz v3, :cond_0

    const-string/jumbo v3, "persist.sys.vold_app_data_isolation_enabled"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    .line 1853
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1854
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 1855
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 1856
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1858
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "StorageManagerService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1860
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 1863
    new-instance v2, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1865
    new-instance v2, Lcom/android/server/storage/StorageSessionController;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    invoke-direct {v2, v3, v4}, Lcom/android/server/storage/StorageSessionController;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 1867
    new-instance v2, Lcom/android/server/pm/Installer;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1868
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->onStart()V

    .line 1871
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 1872
    .local v2, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1873
    .local v3, "systemDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "last-fstrim"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1874
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1878
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1879
    :catch_0
    move-exception v4

    .line 1880
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create fstrim record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StorageManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 1883
    :cond_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1886
    :goto_1
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 1887
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "storage.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "storage-settings"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1889
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1890
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 1891
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1893
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1895
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v4

    .line 1896
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1897
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1898
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v5, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1900
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1901
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1902
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1906
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1909
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    .line 1911
    return-void

    .line 1902
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1891
    .end local v5    # "userFilter":Landroid/content/IntentFilter;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->servicesReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/StorageManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/StorageManagerService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # J

    .line 218
    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/StorageManagerService;Landroid/os/IVold;)Landroid/os/IVold;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IVold;

    .line 218
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/StorageManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->completeUnlockUser(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/StorageManagerService;)Lcom/android/server/pm/Installer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/StorageManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 218
    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$4102(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)Landroid/os/IStoraged;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IStoraged;

    .line 218
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IVoldTaskListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/PersistableBundle;

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/IVoldTaskListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/PersistableBundle;

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/StorageManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/StorageManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    return-void
.end method

.method static synthetic access$5300()Z
    .locals 1

    .line 218
    sget-boolean v0, Lcom/android/server/StorageManagerService;->ENABLE_ISOLATED_STORAGE:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/StorageManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/StorageManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/StorageManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Lcom/android/server/StorageManagerService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/StorageManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/StorageManagerService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/StorageManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget v0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/StorageManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;

    .line 218
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    return v0
.end method

.method static synthetic access$6800()Ljava/util/List;
    .locals 1

    .line 218
    sget-object v0, Lcom/android/server/StorageManagerService;->WHITELIST_FOR_REQUESTING_INSTALL_PACKAGES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/StorageManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # I

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onStopUser(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/StorageManagerService;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StorageManagerService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V

    return-void
.end method

.method private addInternalVolumeLocked()V
    .locals 4

    .line 1076
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1078
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 1079
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1080
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 6
    .param p1, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4010
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4011
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4013
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-nez v1, :cond_0

    .line 4014
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 4015
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4017
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 4018
    .local v3, "o":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v4, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4022
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_0

    .line 4019
    .restart local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4025
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_2
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4027
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4040
    nop

    .line 4042
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4043
    return-void

    .line 4028
    :catch_0
    move-exception v2

    .line 4033
    .local v2, "e":Landroid/os/RemoteException;
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4034
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4035
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4039
    :cond_3
    throw v2
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .locals 6
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3886
    and-int/lit8 v0, p1, 0x1

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_0

    .line 3887
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3892
    :cond_0
    and-int/lit8 p1, p1, -0x3

    .line 3893
    and-int/lit8 p1, p1, -0x5

    .line 3898
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3899
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3901
    .local v2, "token":J
    const/16 v4, 0x1a

    :try_start_0
    invoke-virtual {v0, v4, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is actively using camera; letting them defy reserved cached data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3904
    or-int/lit8 p1, p1, 0x4

    .line 3907
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3908
    nop

    .line 3910
    return p1

    .line 3907
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3908
    throw v1
.end method

.method private bootCompleted()V
    .locals 2

    .line 2113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 2114
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2115
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->updateFusePropFromSettings()V

    .line 2116
    return-void
.end method

.method private completeUnlockUser(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 1205
    if-nez p1, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->migrateLegacyObbData()V

    .line 1209
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->onKeyguardStateChanged(Z)V

    .line 1213
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1214
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    if-eqz v2, :cond_2

    .line 1215
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 1216
    .local v5, "unlockedUser":I
    if-ne v5, p1, :cond_1

    .line 1218
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeUnlockUser called for already unlocked user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    monitor-exit v1

    return-void

    .line 1215
    .end local v5    # "unlockedUser":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1223
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1224
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1225
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1226
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1227
    .local v4, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1229
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v5

    .line 1230
    .local v5, "envState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5, v5}, Lcom/android/server/StorageManagerService$Callbacks;->access$2900(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-static {v3}, Lcom/oneplus/os/storage/OnePlusStorageInjector;->isUsbStorage(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1234
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, p1}, Lcom/oneplus/os/storage/OnePlusStorageInjector;->broadcastForUnmountedMediaStorage(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 1223
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v5    # "envState":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1239
    .end local v2    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1240
    monitor-exit v1

    .line 1241
    return-void

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private connectStoraged()V
    .locals 5

    .line 1939
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1940
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1942
    :try_start_0
    new-instance v1, Lcom/android/server/StorageManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    goto :goto_0

    .line 1950
    :catch_0
    move-exception v1

    .line 1951
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1955
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1956
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_1

    .line 1958
    :cond_1
    const-string v1, "StorageManagerService"

    const-string/jumbo v2, "storaged not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :goto_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-nez v1, :cond_2

    .line 1962
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$1Q-KZa2Hx_KUWPEktCctvDhjjtQ;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$1Q-KZa2Hx_KUWPEktCctvDhjjtQ;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1966
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 1968
    :goto_2
    return-void
.end method

.method private connectVold()V
    .locals 5

    .line 1971
    const-string/jumbo v0, "vold"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1972
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1974
    :try_start_0
    new-instance v1, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1984
    goto :goto_0

    .line 1982
    :catch_0
    move-exception v1

    .line 1983
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1987
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_1

    .line 1988
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1990
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v2, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1991
    :catch_1
    move-exception v2

    .line 1992
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1993
    const-string/jumbo v3, "vold listener rejected; trying again"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1994
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 1996
    :cond_1
    const-string/jumbo v2, "vold not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :goto_2
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v1, :cond_2

    .line 2000
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$43y8_l8yNNnpxoU9-BJAIKmuH5I;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$43y8_l8yNNnpxoU9-BJAIKmuH5I;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 2004
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 2006
    :goto_3
    return-void
.end method

.method private copyLocaleFromMountService()V
    .locals 7

    .line 1329
    :try_start_0
    const-string v0, "SystemLocale"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1332
    .local v0, "systemLocale":Ljava/lang/String;
    nop

    .line 1333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    return-void

    .line 1337
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from mount service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StorageManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1339
    .local v1, "locale":Ljava/util/Locale;
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1340
    .local v4, "config":Landroid/content/res/Configuration;
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1342
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1345
    goto :goto_0

    .line 1343
    :catch_0
    move-exception v5

    .line 1344
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Error setting system locale from mount service"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1348
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.locale"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    return-void

    .line 1330
    .end local v0    # "systemLocale":Ljava/lang/String;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v4    # "config":Landroid/content/res/Configuration;
    :catch_1
    move-exception v0

    .line 1331
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 4319
    if-eqz p1, :cond_0

    .line 4321
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4323
    goto :goto_0

    .line 4322
    :catch_0
    move-exception v0

    .line 4325
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 4309
    if-eqz p1, :cond_0

    .line 4311
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4313
    goto :goto_0

    .line 4312
    :catch_0
    move-exception v0

    .line 4315
    :cond_0
    :goto_0
    return-void
.end method

.method private encodeBytes([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .line 3286
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3287
    const-string v0, "!"

    return-object v0

    .line 3289
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enforceAdminUser()V
    .locals 7

    .line 1821
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1822
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1824
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1826
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    .local v4, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1829
    nop

    .line 1830
    if-eqz v4, :cond_0

    .line 1833
    return-void

    .line 1831
    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1828
    .end local v4    # "isAdmin":Z
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1829
    throw v4
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;

    .line 1794
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 574
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 575
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 576
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_0
    monitor-exit v0

    return-object v1

    .line 579
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 514
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 515
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object v3

    .line 513
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 538
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    const-string v1, "emulated;0"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 540
    :cond_0
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 543
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 492
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 493
    monitor-exit v0

    return-object v1

    .line 495
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 503
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 501
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No volume found for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "partGuid"    # Ljava/lang/String;
    .param p2, "fsUuid"    # Ljava/lang/String;

    .line 2518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    goto :goto_0

    .line 2519
    :catch_0
    move-exception v0

    .line 2520
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2522
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .line 2124
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2125
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 2127
    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private static getLastAccessTime(Landroid/app/AppOpsManager;ILjava/lang/String;[I)J
    .locals 9
    .param p0, "manager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I

    .line 2094
    const-wide/16 v0, 0x0

    .line 2095
    .local v0, "maxTime":J
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v2

    .line 2096
    .local v2, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 2097
    .local v4, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 2098
    .local v6, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2100
    .end local v6    # "op":Landroid/app/AppOpsManager$OpEntry;
    goto :goto_1

    .line 2101
    .end local v4    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_0
    goto :goto_0

    .line 2102
    :cond_1
    return-wide v0
.end method

.method private getMountMode(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4328
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountModeInternal(ILjava/lang/String;)I

    move-result v0

    .line 4329
    .local v0, "mode":I
    sget-boolean v1, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 4330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolved mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4331
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4330
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    :cond_0
    return v0
.end method

.method private getMountModeInternal(ILjava/lang/String;)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v9, p1

    .line 4339
    const/4 v10, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4340
    return v10

    .line 4343
    :cond_0
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4344
    .local v0, "packagesForUid":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4346
    return v10

    .line 4348
    :cond_1
    if-nez p2, :cond_2

    .line 4349
    aget-object v2, v0, v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v2

    .end local p2    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 4348
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_2
    move-object/from16 v11, p2

    .line 4352
    .end local p2    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    :goto_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4353
    return v10

    .line 4356
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v2, v9}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->isExternalStorageService(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4360
    const/4 v2, 0x7

    return v2

    .line 4363
    :cond_4
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    iget v2, v1, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v2, v4, :cond_5

    iget v2, v1, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 4364
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 4368
    :cond_5
    return v3

    .line 4371
    :cond_6
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v4, "android.permission.ACCESS_MTP"

    invoke-interface {v2, v4, v9}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    const/4 v12, 0x1

    if-nez v2, :cond_7

    move v2, v12

    goto :goto_1

    :cond_7
    move v2, v10

    :goto_1
    move v13, v2

    .line 4373
    .local v13, "hasMtp":Z
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_8

    if-eqz v13, :cond_8

    .line 4374
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 4375
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4374
    invoke-interface {v2, v11, v10, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4376
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4378
    return v3

    .line 4383
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_8
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v8, 0x3b

    move/from16 v5, p1

    move-object v6, v11

    invoke-static/range {v2 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    move v14, v2

    .line 4385
    .local v14, "hasRead":Z
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v8, 0x3c

    move/from16 v5, p1

    move-object v6, v11

    invoke-static/range {v2 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 4390
    .local v2, "hasWrite":Z
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v4, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-interface {v3, v4, v9}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    move v3, v12

    goto :goto_2

    :cond_9
    move v3, v10

    .line 4392
    .local v3, "hasFull":Z
    :goto_2
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 4393
    const/4 v4, 0x6

    return v4

    .line 4398
    :cond_a
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v4, v5, v9}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_b

    move v4, v12

    goto :goto_3

    :cond_b
    move v4, v10

    .line 4400
    .local v4, "hasInstall":Z
    :goto_3
    const/4 v5, 0x0

    .line 4405
    .local v5, "hasInstallOp":Z
    array-length v6, v0

    move v7, v10

    :goto_4
    if-ge v7, v6, :cond_d

    aget-object v8, v0, v7

    .line 4406
    .local v8, "uidPackageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v10, 0x42

    invoke-interface {v15, v10, v9, v8}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c

    .line 4408
    const/4 v5, 0x1

    .line 4409
    goto :goto_5

    .line 4405
    .end local v8    # "uidPackageName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    goto :goto_4

    .line 4412
    :cond_d
    :goto_5
    if-nez v4, :cond_e

    if-eqz v5, :cond_f

    :cond_e
    if-eqz v2, :cond_f

    .line 4413
    const/4 v6, 0x5

    return v6

    .line 4418
    :cond_f
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v7, 0x57

    invoke-interface {v6, v7, v9, v11}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v6, :cond_10

    move v10, v12

    goto :goto_6

    :cond_10
    const/4 v10, 0x0

    :goto_6
    move v6, v10

    .line 4421
    .local v6, "hasLegacy":Z
    if-eqz v6, :cond_11

    if-eqz v2, :cond_11

    .line 4422
    const/4 v7, 0x3

    return v7

    .line 4423
    :cond_11
    if-eqz v6, :cond_12

    if-eqz v14, :cond_12

    .line 4424
    const/4 v7, 0x2

    return v7

    .line 4426
    :cond_12
    return v12

    .line 4428
    .end local v0    # "packagesForUid":[Ljava/lang/String;
    .end local v2    # "hasWrite":Z
    .end local v3    # "hasFull":Z
    .end local v4    # "hasInstall":Z
    .end local v5    # "hasInstallOp":Z
    .end local v6    # "hasLegacy":Z
    .end local v13    # "hasMtp":Z
    .end local v14    # "hasRead":Z
    :catch_0
    move-exception v0

    goto :goto_7

    .end local v11    # "packageName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v11, p2

    .line 4431
    .end local p2    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :goto_7
    const/4 v2, 0x0

    return v2
.end method

.method private getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 2043
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2046
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2043
    const/high16 v2, 0xc0000

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private handleBootCompleted()V
    .locals 0

    .line 2119
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 2120
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 2121
    return-void
.end method

.method private handleDaemonConnected()V
    .locals 2

    .line 1316
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1317
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1321
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_progress()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->copyLocaleFromMountService()V

    .line 1324
    :cond_0
    return-void
.end method

.method private handleSystemReady()V
    .locals 6

    .line 916
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 919
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 920
    const-string/jumbo v1, "zram_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 919
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 928
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 931
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "zramPropValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 933
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 938
    :cond_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 939
    const-string/jumbo v2, "isolated_storage_remote"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Lcom/android/server/StorageManagerService$3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 938
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 948
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 949
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 948
    const-string/jumbo v3, "storage_native_boot"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 953
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 954
    return-void
.end method

.method private initIfBootedAndConnected()V
    .locals 10

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thinking about init, mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDaemonConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_1

    .line 1087
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 1092
    .local v0, "initLocked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1094
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1096
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 1097
    :try_start_0
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6}, Landroid/os/IVold;->lockUserKey(I)V

    goto :goto_1

    .line 1099
    :cond_0
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v9

    .line 1100
    invoke-direct {p0, v8}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    .line 1099
    invoke-interface {v5, v6, v7, v9, v8}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_1
    goto :goto_2

    .line 1102
    :catch_0
    move-exception v5

    .line 1103
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 1107
    .end local v0    # "initLocked":Z
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    return-void
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1589
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 1596
    return v1

    .line 1594
    :cond_0
    nop

    .line 1599
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v5, 0x8

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 1608
    return v1

    .line 1606
    :cond_1
    nop

    .line 1611
    return v4
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1801
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1803
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 1804
    .local v1, "isUsbRestricted":Z
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1805
    nop

    .line 1806
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1805
    const-string/jumbo v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 1809
    :cond_0
    const/4 v2, 0x0

    .line 1810
    .local v2, "isTypeRestricted":Z
    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eq v3, v4, :cond_1

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    .line 1812
    :cond_1
    nop

    .line 1814
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1813
    const-string/jumbo v5, "no_physical_media"

    invoke-virtual {v0, v5, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    .line 1817
    :cond_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_0
    return v4
.end method

.method private isSystemUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 3391
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .line 2857
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    .line 2858
    return v0

    .line 2861
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2862
    return v1

    .line 2865
    :cond_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v3, 0x10000000

    .line 2866
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2865
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 2873
    .local v2, "packageUid":I
    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1044
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez p1, :cond_0

    return-void

    .line 1046
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1048
    .local v0, "token":J
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1050
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v5, "media"

    const/high16 v6, 0xc0000

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 1056
    .local v4, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_2

    .line 1057
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    .local v5, "am":Landroid/app/IActivityManager;
    :try_start_1
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1060
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, -0x1

    const-string/jumbo v9, "vold reset"

    .line 1059
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    goto :goto_1

    .line 1064
    :catch_0
    move-exception v6

    .line 1067
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v5    # "am":Landroid/app/IActivityManager;
    :cond_2
    goto :goto_0

    .line 1069
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    nop

    .line 1071
    return-void

    .line 1069
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    throw v2
.end method

.method private maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V
    .locals 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "newState"    # I

    .line 1742
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    return-void

    .line 1746
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1747
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_7

    iget v1, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_1

    goto :goto_3

    .line 1752
    :cond_1
    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 1754
    .local v1, "label":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v4, :cond_5

    const/4 v5, 0x3

    if-ne p2, v5, :cond_3

    goto :goto_1

    .line 1757
    :cond_3
    if-eqz p2, :cond_4

    const/16 v5, 0x8

    if-ne p2, v5, :cond_6

    .line 1759
    :cond_4
    const v5, 0x3345e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_2

    .line 1756
    :cond_5
    :goto_1
    const v5, 0x3345d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1761
    :cond_6
    :goto_2
    return-void

    .line 1748
    .end local v1    # "label":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void
.end method

.method private mount(Landroid/os/storage/VolumeInfo;)V
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2284
    const-string v0, "StorageManagerService"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounting volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v4, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    new-instance v5, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v5, p0, p1}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 2313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounted volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    goto :goto_0

    .line 2314
    :catch_0
    move-exception v1

    .line 2315
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2317
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    goto :goto_0

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1255
    monitor-exit v0

    .line 1256
    return-void

    .line 1255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .locals 5
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .line 1491
    const/4 v0, 0x0

    .line 1492
    .local v0, "volumeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1493
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1494
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1495
    add-int/lit8 v0, v0, 0x1

    .line 1492
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x5000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1502
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1504
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1506
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1507
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_2

    .line 1508
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1511
    :cond_2
    iput v0, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1512
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->access$3900(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1513
    return-void
.end method

.method private onMoveStatusLocked(I)V
    .locals 5
    .param p1, "status"    # I

    .line 1765
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-string v1, "StorageManagerService"

    if-nez v0, :cond_0

    .line 1766
    const-string v0, "Odd, status but no move requested"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    return-void

    .line 1772
    :cond_0
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    goto :goto_0

    .line 1773
    :catch_0
    move-exception v0

    .line 1778
    :goto_0
    const/16 v0, 0x52

    const-string v2, "Move to "

    if-ne p1, v0, :cond_1

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " copy phase finshed; persisting"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1782
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1785
    :cond_1
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finished with status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1789
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1791
    :cond_2
    return-void
.end method

.method private onStopUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUserStopping(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    goto :goto_0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    .line 1266
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1269
    :cond_0
    return-void
.end method

.method private onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUnlockUser(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1199
    return-void
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .locals 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1517
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->isOnlyCoreApps()Z

    move-result v0

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_0

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return-void

    .line 1521
    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1522
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1524
    .local v0, "amInternal":Landroid/app/ActivityManagerInternal;
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    const/4 v3, 0x0

    .line 1525
    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1527
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is no longer running."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1526
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void

    .line 1531
    :cond_1
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const-string v3, "Found primary storage at "

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1532
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1533
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 1535
    .local v7, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v8, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 1536
    const-string/jumbo v9, "private"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1537
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1539
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1540
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1542
    :cond_2
    iget-object v8, v7, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1545
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1546
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1549
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_3
    :goto_0
    goto/16 :goto_1

    :cond_4
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_8

    .line 1551
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const-string/jumbo v7, "primary_physical"

    invoke-static {v7, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 1552
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1555
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v6

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1562
    :cond_5
    invoke-static {p1}, Lcom/oneplus/os/storage/OnePlusStorageInjector;->isUsbStorage(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1563
    const-string v2, "Make visible for usb storage."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1570
    :cond_6
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1571
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1574
    :cond_7
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1575
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1577
    :cond_8
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v2, v4, :cond_9

    .line 1578
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1580
    :cond_9
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v2, v5, :cond_a

    .line 1581
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1582
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1584
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping automatic mounting of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :goto_1
    return-void
.end method

.method private onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V
    .locals 12
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 1652
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1655
    :try_start_0
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1656
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1657
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v1, :cond_1

    .line 1658
    new-instance v2, Landroid/os/storage/VolumeRecord;

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 1659
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1661
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1662
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1664
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1667
    :cond_1
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1668
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1672
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1673
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1675
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1677
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 1681
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V

    .line 1688
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    :try_end_1
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1691
    goto :goto_1

    .line 1689
    :catch_0
    move-exception v1

    .line 1690
    .local v1, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    const-string v2, "StorageManagerService"

    const-string v3, "Failed to notify volume state changed to the Storage Service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1692
    .end local v1    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :goto_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1693
    :try_start_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->access$4000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1697
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1698
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1700
    const-string v3, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1701
    const-string v3, "android.os.storage.extra.FS_UUID"

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    const/high16 v3, 0x5000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1704
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1707
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 1708
    .local v2, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1710
    .local v3, "newStateEnv":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1714
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_7

    aget v8, v4, v7

    .line 1715
    .local v8, "userId":I
    invoke-virtual {p1, v8}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1716
    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9, v8, v6}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 1718
    .local v9, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1720
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2, v3}, Lcom/android/server/StorageManagerService$Callbacks;->access$2900(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    .end local v8    # "userId":I
    .end local v9    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1726
    :cond_7
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-eqz v4, :cond_8

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v5, :cond_9

    :cond_8
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v5, :cond_9

    .line 1734
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1737
    :cond_9
    invoke-direct {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V

    .line 1738
    .end local v2    # "oldStateEnv":Ljava/lang/String;
    .end local v3    # "newStateEnv":Ljava/lang/String;
    monitor-exit v1

    .line 1739
    return-void

    .line 1738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1675
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 1616
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1617
    if-eq p3, v1, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1619
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    if-eqz v0, :cond_1

    .line 1620
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v0

    .line 1621
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1645
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1648
    .end local v0    # "userId":I
    :cond_1
    :goto_0
    return-void
.end method

.method private prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 3397
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3398
    return-void

    .line 3401
    :cond_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3402
    .local v0, "um":Landroid/os/UserManager;
    const-class v1, Landroid/os/UserManagerInternal;

    .line 3403
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 3405
    .local v1, "umInternal":Landroid/os/UserManagerInternal;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3407
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3408
    const/4 v4, 0x3

    .local v4, "flags":I
    goto :goto_1

    .line 3409
    .end local v4    # "flags":I
    :cond_2
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3410
    const/4 v4, 0x1

    .line 3415
    .restart local v4    # "flags":I
    :goto_1
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget v7, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-direct {p0, v5, v6, v7, v4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V

    .line 3416
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "flags":I
    goto :goto_0

    .line 3417
    :cond_3
    return-void
.end method

.method private prepareUserStorageInternal(Ljava/lang/String;III)V
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    .line 3429
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V

    .line 3432
    if-eqz p1, :cond_0

    .line 3433
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3434
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 3435
    .local v1, "info":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget v2, v1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3436
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Installer;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3441
    .end local v0    # "storage":Landroid/os/storage/StorageManager;
    .end local v1    # "info":Landroid/os/storage/VolumeInfo;
    :cond_0
    goto :goto_0

    .line 3439
    :catch_0
    move-exception v0

    .line 3440
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3442
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private readSettingsLocked()V
    .locals 12

    .line 2133
    const-string v0, "Failed reading metadata"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2134
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2136
    const/4 v2, 0x0

    .line 2138
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 2139
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2140
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2143
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 2144
    const/4 v4, 0x2

    if-ne v5, v4, :cond_0

    .line 2145
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2146
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v8, "volumes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2147
    const-string/jumbo v8, "version"

    invoke-static {v3, v8, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 2148
    .local v8, "version":I
    const-string/jumbo v9, "ro.vold.primary_physical"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2150
    .local v9, "primaryPhysical":Z
    const/4 v11, 0x3

    if-ge v8, v11, :cond_2

    if-lt v8, v4, :cond_1

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move v6, v10

    :cond_2
    :goto_1
    move v4, v6

    .line 2152
    .local v4, "validAttr":Z
    if-eqz v4, :cond_4

    .line 2153
    const-string/jumbo v6, "primaryStorageUuid"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    goto :goto_2

    .line 2156
    .end local v4    # "validAttr":Z
    .end local v8    # "version":I
    .end local v9    # "primaryPhysical":Z
    :cond_3
    const-string/jumbo v4, "volume"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2157
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 2158
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 2156
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_4
    :goto_2
    nop

    .line 2160
    .end local v7    # "tag":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 2143
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :cond_5
    goto :goto_5

    .line 2169
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 2166
    :catch_0
    move-exception v3

    .line 2167
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2169
    nop

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_6

    .line 2164
    :catch_1
    move-exception v3

    .line 2165
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2169
    nop

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2170
    throw v0

    .line 2162
    :catch_2
    move-exception v0

    .line 2169
    :goto_5
    nop

    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2170
    nop

    .line 2171
    return-void
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .locals 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2202
    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2203
    .local v0, "type":I
    const-string v1, "fsUuid"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2204
    .local v1, "fsUuid":Ljava/lang/String;
    new-instance v2, Landroid/os/storage/VolumeRecord;

    invoke-direct {v2, v0, v1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 2205
    .local v2, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 2206
    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2207
    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2208
    const-string v3, "createdMillis"

    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 2209
    const-string/jumbo v3, "lastSeenMillis"

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 2210
    const-string/jumbo v3, "lastTrimMillis"

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 2211
    const-string/jumbo v3, "lastBenchMillis"

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 2212
    return-object v2
.end method

.method private refreshFuseSettings()V
    .locals 4

    .line 1023
    const-string/jumbo v0, "storage_native_boot"

    const-string v1, "fuse_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1025
    .local v0, "isFuseEnabled":I
    const-string/jumbo v1, "persist.sys.fflag.override.settings_fuse"

    const-string v2, "StorageManagerService"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1026
    const-string v3, "Device Config flag for FUSE is enabled, turn Settings fuse flag on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1030
    const-string v3, "Device Config flag for FUSE is disabled, turn Settings fuse flag off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_1
    :goto_0
    return-void
.end method

.method private refreshIsolatedStorageSettings()V
    .locals 5

    .line 987
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 989
    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "isolated_storage_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 987
    const-string/jumbo v2, "isolated_storage_remote"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 992
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isolated_storage_local"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 994
    .local v0, "local":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1000
    .local v1, "remote":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1001
    const/4 v2, 0x0

    .local v2, "res":Z
    goto :goto_0

    .line 1002
    .end local v2    # "res":Z
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1003
    const/4 v2, 0x1

    .restart local v2    # "res":Z
    goto :goto_0

    .line 1004
    .end local v2    # "res":Z
    :cond_1
    if-ne v1, v2, :cond_2

    .line 1005
    const/4 v2, 0x0

    .restart local v2    # "res":Z
    goto :goto_0

    .line 1006
    .end local v2    # "res":Z
    :cond_2
    if-ne v1, v3, :cond_3

    .line 1007
    const/4 v2, 0x1

    .restart local v2    # "res":Z
    goto :goto_0

    .line 1009
    .end local v2    # "res":Z
    :cond_3
    const/4 v2, 0x1

    .line 1012
    .restart local v2    # "res":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Isolated storage local flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and remote flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " resolved to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StorageManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "persist.sys.isolated_storage"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method private refreshZramSettings()V
    .locals 5

    .line 962
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    return-void

    .line 969
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 967
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "zram_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_1

    .line 970
    move-object v2, v3

    goto :goto_0

    :cond_1
    const-string v2, "0"

    .line 971
    .local v2, "desiredPropertyValue":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 975
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 978
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111011b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 983
    :cond_2
    return-void
.end method

.method private remountAppStorageDirs(Ljava/util/Map;I)V
    .locals 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2264
    .local p1, "pidPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2265
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2266
    .local v2, "pid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2267
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remounting storage for pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2269
    invoke-virtual {v4, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2270
    .local v4, "sharedPackages":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v5

    .line 2272
    .local v5, "uid":I
    array-length v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v6

    :goto_1
    move-object v6, v7

    .line 2274
    .local v6, "packages":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v7, v5, v2, v6}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    nop

    .line 2278
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "pid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "sharedPackages":[Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    goto :goto_0

    .line 2275
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "pid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "sharedPackages":[Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2279
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "pid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "sharedPackages":[Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private remountUidExternalStorage(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .line 2634
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 2636
    return-void

    .line 2640
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->remountUid(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2643
    goto :goto_0

    .line 2641
    :catch_0
    move-exception v0

    .line 2642
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2644
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 4
    .param p1, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 4046
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4047
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4048
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 4049
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4050
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 4052
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4053
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    :cond_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4058
    return-void
.end method

.method private resetIfBootedAndConnected()V
    .locals 8

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thinking about reset, mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDaemonConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_4

    .line 1113
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1114
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1116
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v4, Lcom/android/server/-$$Lambda$StorageManagerService$r27LXIZ-GHtEGwWREPUZctEIq8I;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$r27LXIZ-GHtEGwWREPUZctEIq8I;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/storage/StorageSessionController;->onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1121
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->killMediaProvider(Ljava/util/List;)V

    .line 1125
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1127
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 1130
    .local v3, "systemUnlockedUsers":[I
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1131
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1133
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1134
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    :try_start_1
    const-string v2, "StorageManagerService"

    const-string v4, "Resetting vold..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2}, Landroid/os/IVold;->reset()V

    .line 1140
    const-string v2, "StorageManagerService"

    const-string v4, "Reset vold"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1144
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v5, v6, v7}, Landroid/os/IVold;->onUserAdded(II)V

    .line 1145
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 1146
    :cond_1
    array-length v2, v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget v5, v3, v4

    .line 1147
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v6, v5}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1148
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v6, v5}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1146
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1150
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    if-eqz v2, :cond_3

    .line 1151
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/StorageManagerService;->restoreAllUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V

    .line 1153
    :cond_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v4, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v2, v4}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 1154
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v2, v4}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1157
    goto :goto_3

    .line 1155
    :catch_0
    move-exception v2

    .line 1156
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "StorageManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1134
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "systemUnlockedUsers":[I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1159
    .end local v0    # "userManager":Landroid/os/UserManager;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    :goto_3
    return-void
.end method

.method private restoreAllUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V
    .locals 7
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p3, "systemUnlockedUsers"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1163
    .local p2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 1164
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 1165
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1166
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1167
    .local v2, "userId":I
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1168
    goto :goto_0

    .line 1170
    :cond_0
    invoke-static {p3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1171
    goto :goto_0

    .line 1173
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    .line 1174
    .local v3, "unlockingOrUnlocked":Z
    if-nez v3, :cond_2

    .line 1175
    goto :goto_0

    .line 1177
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNLOCK_USER lost from vold reset, will retry, user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, v2}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1179
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v4, v2}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1180
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1181
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userId":I
    .end local v3    # "unlockingOrUnlocked":Z
    goto :goto_0

    .line 1182
    :cond_3
    return-void
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 524
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string/jumbo v0, "internal"

    return-object v0

    .line 527
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 528
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_2

    iget-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 529
    :cond_2
    :goto_0
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private servicesReady()V
    .locals 5

    .line 2009
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2011
    nop

    .line 2012
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2011
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2013
    nop

    .line 2014
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2013
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2016
    const-string/jumbo v0, "media"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2017
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 2018
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 2019
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 2022
    :cond_0
    const-string v1, "downloads"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2023
    if-eqz v0, :cond_1

    .line 2024
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 2027
    :cond_1
    const-string v1, "com.android.externalstorage.documents"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2028
    if-eqz v0, :cond_2

    .line 2029
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 2032
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-nez v1, :cond_3

    .line 2034
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 2036
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x57

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    goto :goto_0

    .line 2037
    :catch_0
    move-exception v1

    .line 2040
    :cond_3
    :goto_0
    return-void
.end method

.method private shouldBenchmark()Z
    .locals 12

    .line 548
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 550
    .local v0, "benchInterval":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 551
    return v3

    .line 552
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 553
    return v4

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 557
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 558
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 559
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeRecord;

    .line 560
    .local v7, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long/2addr v8, v10

    .line 562
    .local v8, "benchAge":J
    cmp-long v10, v8, v0

    if-ltz v10, :cond_2

    .line 563
    monitor-exit v2

    return v4

    .line 557
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v8    # "benchAge":J
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 567
    .end local v5    # "i":I
    :cond_3
    monitor-exit v2

    return v3

    .line 568
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2064
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2069
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2071
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2069
    const v3, 0x4c2000

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 2073
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x57

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2075
    .local v3, "hasLegacy":Z
    :goto_1
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2078
    .end local v3    # "hasLegacy":Z
    goto :goto_2

    .line 2076
    :catch_0
    move-exception v3

    .line 2077
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check legacy op for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2079
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_0

    .line 2081
    :cond_1
    new-instance v1, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 2088
    .local v1, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 2089
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    return-void
.end method

.method private start()V
    .locals 0

    .line 1934
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 1935
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 1936
    return-void
.end method

.method private supportsBlockCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v0

    return v0
.end method

.method private systemReady()V
    .locals 2

    .line 2106
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2107
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2109
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2110
    return-void
.end method

.method private unmount(Landroid/os/storage/VolumeInfo;)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2330
    const-string v0, "StorageManagerService"

    :try_start_0
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2331
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    :cond_0
    goto :goto_0

    .line 2338
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2333
    :catch_1
    move-exception v1

    .line 2334
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_1
    const-string v2, "Failed unmount mirror data"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2336
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 2337
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2340
    goto :goto_2

    .line 2339
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2341
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private updateFusePropFromSettings()V
    .locals 4

    .line 1918
    const-string/jumbo v0, "persist.sys.fflag.override.settings_fuse"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1920
    .local v0, "settingsFuseFlag":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FUSE flags. Settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". Default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggling persist.sys.fuse to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.fuse"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "fuse_prop"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1931
    :cond_0
    return-void
.end method

.method private updateLegacyStorageApps(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "hasLegacy"    # Z

    .line 2050
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2051
    if-eqz p3, :cond_0

    .line 2052
    :try_start_0
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has legacy storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2057
    :cond_0
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have legacy storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2060
    :goto_0
    monitor-exit v0

    .line 2061
    return-void

    .line 2060
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .locals 8
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 895
    const-string v0, "Thread "

    const-string v1, "StorageManagerService"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 898
    .local v2, "startMillis":J
    :goto_0
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 899
    return-void

    .line 901
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " still waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    goto :goto_1

    .line 904
    :catch_0
    move-exception v4

    .line 905
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupt while waiting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    goto :goto_2

    .line 908
    :cond_1
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " gave up waiting for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 907
    :cond_2
    :goto_2
    goto/16 :goto_0
.end method

.method private warnOnNotMounted()V
    .locals 4

    .line 2843
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2844
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2845
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 2846
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2848
    monitor-exit v0

    return-void

    .line 2844
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2851
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2853
    const-string v0, "StorageManagerService"

    const-string v1, "No primary storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    return-void

    .line 2851
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeSettingsLocked()V
    .locals 7

    .line 2175
    const-string/jumbo v0, "volumes"

    const/4 v1, 0x0

    .line 2177
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 2179
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2180
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2181
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2182
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2183
    const-string/jumbo v3, "version"

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2184
    const-string/jumbo v3, "primaryStorageUuid"

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2185
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2186
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 2187
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 2188
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v2, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 2186
    .end local v6    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2190
    .end local v5    # "i":I
    :cond_0
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2193
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "size":I
    goto :goto_1

    .line 2194
    :catch_0
    move-exception v0

    .line 2195
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 2196
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2199
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .locals 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    const/4 v0, 0x0

    const-string/jumbo v1, "volume"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2217
    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    const-string/jumbo v3, "type"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2218
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string v3, "fsUuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2219
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2220
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2221
    iget v2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2222
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string v4, "createdMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2223
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-string/jumbo v4, "lastSeenMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2224
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string/jumbo v4, "lastTrimMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2225
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    const-string/jumbo v4, "lastBenchMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2226
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2227
    return-void
.end method


# virtual methods
.method public abortChanges(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3233
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 3234
    return-void

    .line 3230
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abortIdleMaint(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2608
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2611
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    goto :goto_0

    .line 2623
    :catch_0
    move-exception v0

    .line 2624
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2626
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public abortIdleMaintenance()V
    .locals 1

    .line 2630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 2631
    return-void
.end method

.method public addUserKeyAuth(II[B[B)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 3302
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3308
    goto :goto_0

    .line 3306
    :catch_0
    move-exception v0

    .line 3307
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .param p4, "flags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 3959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    .line 3961
    or-int/lit8 v0, p4, 0x8

    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 3963
    .local v0, "allocatableBytes":J
    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 3966
    or-int/lit8 v2, p4, 0x10

    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 3968
    .local v2, "cacheClearable":J
    add-long v4, v0, v2

    cmp-long v4, p2, v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 3969
    :cond_0
    new-instance v4, Landroid/os/ParcelableException;

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to allocate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " because only "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " allocatable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3974
    .end local v2    # "cacheClearable":J
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 3975
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3979
    .local v3, "token":J
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 3980
    .local v5, "path":Ljava/io/File;
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2

    .line 3981
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    goto :goto_1

    .line 3983
    :cond_2
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    .line 3986
    :goto_1
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3990
    .end local v5    # "path":Ljava/io/File;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3991
    nop

    .line 3992
    return-void

    .line 3990
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 3987
    :catch_0
    move-exception v5

    .line 3988
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Landroid/os/ParcelableException;

    invoke-direct {v6, v5}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "allocatableBytes":J
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "bytes":J
    .end local p4    # "flags":I
    .end local p5    # "callingPackage":Ljava/lang/String;
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3990
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "allocatableBytes":J
    .restart local v2    # "storage":Landroid/os/storage/StorageManager;
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "bytes":J
    .restart local p4    # "flags":I
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3991
    throw v5
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 2364
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    nop

    .line 2399
    return-void

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .line 3020
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3025
    return v2

    .line 3028
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3029
    const-string p2, ""

    goto :goto_0

    .line 3030
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3038
    :goto_0
    nop

    .line 3039
    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3038
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 3040
    .local v1, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const-string v3, "default_password"

    .line 3042
    .local v3, "currentPassword":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 3045
    goto :goto_1

    .line 3043
    :catch_0
    move-exception v4

    .line 3044
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, p1, v3, p2}, Landroid/os/IVold;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3050
    :try_start_2
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3053
    goto :goto_2

    .line 3051
    :catch_1
    move-exception v4

    .line 3052
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t sanitize password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3054
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 3055
    :catch_2
    move-exception v4

    .line 3056
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3057
    return v2

    .line 3031
    .end local v1    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v3    # "currentPassword":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearPassword()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3251
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can clear password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeClearPassword()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3256
    return-void

    .line 3257
    :catch_0
    move-exception v0

    .line 3258
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3259
    return-void
.end method

.method public clearUserKeyAuth(II[B[B)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 3320
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3323
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3326
    goto :goto_0

    .line 3324
    :catch_0
    move-exception v0

    .line 3325
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3327
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public commitChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3211
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->commitChanges()V

    .line 3212
    return-void

    .line 3208
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUserKey(IIZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "ephemeral"    # Z

    .line 3265
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3271
    goto :goto_0

    .line 3269
    :catch_0
    move-exception v0

    .line 3270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3272
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .line 2959
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2971
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1}, Landroid/os/IVold;->fdeCheckPassword(Ljava/lang/String;)V

    .line 2972
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$kHfrfIqfu8okPHuGRmwjnqh0v3g;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$kHfrfIqfu8okPHuGRmwjnqh0v3g;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2979
    const/4 v0, 0x0

    return v0

    .line 2983
    :catch_0
    move-exception v1

    .line 2984
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2985
    const/4 v0, -0x1

    return v0

    .line 2980
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2981
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "fdeCheckPassword failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2982
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0

    .line 2963
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyUserKey(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3276
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3282
    goto :goto_0

    .line 3280
    :catch_0
    move-exception v0

    .line 3281
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 3446
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3449
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3452
    goto :goto_0

    .line 3450
    :catch_0
    move-exception v0

    .line 3451
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3453
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4550
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StorageManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4552
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v1, 0xa0

    const-string v2, "  "

    invoke-direct {v0, p2, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4553
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4554
    :try_start_0
    const-string v2, "Disks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4555
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4556
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4557
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    .line 4558
    .local v3, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v3, v0}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4556
    .end local v3    # "disk":Landroid/os/storage/DiskInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4560
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4562
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4563
    const-string v2, "Volumes:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4564
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4565
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4566
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 4567
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v4, "private"

    iget-object v5, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 4568
    :cond_2
    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4565
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4570
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4572
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4573
    const-string v2, "Records:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4575
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4576
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 4577
    .local v3, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4575
    .end local v3    # "note":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4579
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4581
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4584
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4585
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v2

    .line 4586
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v2, :cond_5

    .line 4587
    const-string v3, "Internal storage total size: N/A"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 4589
    :cond_5
    const-string v3, "Internal storage ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4591
    const-string v3, ") total size: "

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4592
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4593
    const-string v3, " ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4594
    sget-object v3, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 4595
    const-string v3, " MiB)"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4598
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local unlocked users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System unlocked users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4602
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4603
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Isolated storage, local feature flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isolated_storage_local"

    .line 4605
    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4604
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Isolated storage, remote feature flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isolated_storage_remote"

    .line 4607
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4606
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Isolated storage, resolved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forced scoped storage app list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "storage_native_boot"

    const-string v6, "forced_scoped_storage_whitelist"

    .line 4610
    invoke-static {v5, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4609
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAutomotive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4613
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "cr":Landroid/content/ContentResolver;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4615
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 4616
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4617
    const-string/jumbo v1, "mObbMounts:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4618
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4619
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4620
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4621
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4622
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4623
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4624
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4625
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 4626
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/StorageManagerService$ObbState;

    .line 4627
    .local v6, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4628
    .end local v6    # "obbState":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_6

    .line 4629
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4630
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_5

    .line 4631
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4633
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4634
    const-string/jumbo v3, "mObbPathToStateMap:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4635
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4636
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 4637
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4638
    .local v3, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4639
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4640
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4641
    const-string v5, " -> "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4642
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4643
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_7

    .line 4644
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4645
    nop

    .end local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    .end local v3    # "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4647
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4648
    const-string v1, "Last maintenance: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4649
    iget-wide v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4650
    return-void

    .line 4645
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4613
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .line 2991
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2995
    const-string p2, ""

    goto :goto_0

    .line 2996
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3005
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVold;->fdeEnable(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3009
    nop

    .line 3011
    return v1

    .line 3006
    :catch_0
    move-exception v0

    .line 3007
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3008
    const/4 v1, -0x1

    return v1

    .line 2997
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fixateNewestUserKeyAuth(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3334
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3337
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    goto :goto_0

    .line 3338
    :catch_0
    move-exception v0

    .line 3339
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3341
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public fixupAppDir(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 3457
    sget-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3458
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "StorageManagerService"

    if-eqz v1, :cond_1

    .line 3459
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to fixup an app dir without a userId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    return-void

    .line 3464
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3465
    .local v1, "userId":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 3466
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3468
    .local v4, "uid":I
    :try_start_1
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3471
    goto :goto_0

    .line 3469
    :catch_0
    move-exception v5

    .line 3470
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to fixup app dir for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3474
    .end local v1    # "userId":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3475
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find package to fixup app dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 3472
    :catch_2
    move-exception v1

    .line 3473
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid userId in path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3476
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    goto :goto_1

    .line 3478
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid application-specific directory"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :goto_1
    return-void
.end method

.method public forgetAllVolumes()V
    .locals 6

    .line 2494
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2496
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2498
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2499
    .local v2, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 2500
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2501
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2503
    :cond_0
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v4, v2}, Lcom/android/server/StorageManagerService$Callbacks;->access$5100(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2497
    .end local v2    # "fsUuid":Ljava/lang/String;
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2505
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2507
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2508
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2511
    :cond_2
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2512
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2513
    monitor-exit v0

    .line 2514
    return-void

    .line 2513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 2470
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2472
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2476
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2477
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2479
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$5100(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2483
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2484
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2485
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2488
    :cond_1
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2489
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2490
    return-void

    .line 2489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 5
    .param p1, "volId"    # Ljava/lang/String;

    .line 2345
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2347
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2348
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2350
    .local v1, "fsUuid":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2355
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2359
    :cond_0
    goto :goto_0

    .line 2357
    :catch_0
    move-exception v2

    .line 2358
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2360
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 2526
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2533
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2566
    :cond_0
    const-string v0, "StorageManagerService"

    const-string v1, "Skipping fstrim - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2534
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2570
    :goto_1
    nop

    .line 2571
    return-void

    .line 2568
    :catch_0
    move-exception v0

    .line 2569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .locals 24
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3915
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v3

    .line 3917
    .end local p2    # "flags":I
    .local v3, "flags":I
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 3918
    .local v5, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 3919
    .local v6, "stats":Landroid/app/usage/StorageStatsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3925
    .local v7, "token":J
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3927
    .local v0, "path":Ljava/io/File;
    const-wide/16 v9, 0x0

    .line 3928
    .local v9, "usable":J
    const-wide/16 v11, 0x0

    .line 3929
    .local v11, "lowReserved":J
    const-wide/16 v13, 0x0

    .line 3930
    .local v13, "fullReserved":J
    const-wide/16 v15, 0x0

    .line 3932
    .local v15, "cacheClearable":J
    and-int/lit8 v17, v3, 0x10

    if-nez v17, :cond_0

    .line 3933
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 3934
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 3935
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 3938
    :cond_0
    and-int/lit8 v17, v3, 0x8

    move-wide/from16 v18, v11

    .end local v11    # "lowReserved":J
    .local v18, "lowReserved":J
    const-wide/16 v11, 0x0

    if-nez v17, :cond_2

    .line 3939
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 3940
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v20

    .line 3941
    .local v20, "cacheTotal":J
    invoke-virtual {v5, v0, v3}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v22

    .line 3942
    .local v22, "cacheReserved":J
    move-object/from16 p2, v0

    .end local v0    # "path":Ljava/io/File;
    .local p2, "path":Ljava/io/File;
    sub-long v0, v20, v22

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v15, v0

    goto :goto_0

    .line 3939
    .end local v20    # "cacheTotal":J
    .end local v22    # "cacheReserved":J
    .end local p2    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_1
    move-object/from16 p2, v0

    .end local v0    # "path":Ljava/io/File;
    .restart local p2    # "path":Ljava/io/File;
    goto :goto_0

    .line 3938
    .end local p2    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_2
    move-object/from16 p2, v0

    .line 3945
    .end local v0    # "path":Ljava/io/File;
    .restart local p2    # "path":Ljava/io/File;
    :goto_0
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3

    .line 3946
    add-long v0, v9, v15

    sub-long/2addr v0, v13

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3953
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3946
    return-wide v0

    .line 3948
    :cond_3
    add-long v0, v9, v15

    sub-long v0, v0, v18

    :try_start_1
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3953
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3948
    return-wide v0

    .line 3953
    .end local v9    # "usable":J
    .end local v13    # "fullReserved":J
    .end local v15    # "cacheClearable":J
    .end local v18    # "lowReserved":J
    .end local p2    # "path":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3950
    :catch_0
    move-exception v0

    .line 3951
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "flags":I
    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    .end local v6    # "stats":Landroid/app/usage/StorageStatsManager;
    .end local v7    # "token":J
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3953
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "flags":I
    .restart local v5    # "storage":Landroid/os/storage/StorageManager;
    .restart local v6    # "stats":Landroid/app/usage/StorageStatsManager;
    .restart local v7    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3954
    throw v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3856
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 3857
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3860
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3862
    .local v2, "stats":Landroid/app/usage/StorageStatsManager;
    :try_start_0
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3862
    return-wide v3

    .line 3864
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3865
    throw v3
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 3871
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3875
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3876
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3880
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    return-wide v2

    .line 3880
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 3877
    :catch_0
    move-exception v2

    .line 3878
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/os/ParcelableException;

    invoke-direct {v3, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "uid":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3880
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "uid":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3881
    throw v2
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 4

    .line 3823
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3824
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    .line 3825
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3826
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    .line 3825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3828
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3829
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncryptionState()I
    .locals 3

    .line 2946
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeComplete()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2951
    :catch_0
    move-exception v0

    .line 2952
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2953
    const/4 v1, -0x1

    return v1
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3139
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3144
    return-object v1

    .line 3148
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3149
    :catch_0
    move-exception v0

    .line 3150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3151
    return-object v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 2878
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2880
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2883
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2884
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2885
    .local v1, "state":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2886
    if-nez v1, :cond_0

    .line 2887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find OBB mounted at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    const/4 v0, 0x0

    return-object v0

    .line 2891
    :cond_0
    iget-object v0, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2885
    .end local v1    # "state":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3238
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can retrieve password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3243
    :catch_0
    move-exception v0

    .line 3244
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3245
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPasswordType()I
    .locals 3

    .line 3097
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPasswordType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3102
    :catch_0
    move-exception v0

    .line 3103
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3104
    const/4 v1, -0x1

    return v1
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .line 2763
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2765
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .locals 44
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 3657
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3659
    .local v4, "userId":I
    and-int/lit16 v0, v3, 0x100

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v7, v0

    .line 3660
    .local v7, "forWrite":Z
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    move v8, v0

    .line 3661
    .local v8, "realState":Z
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    move v9, v0

    .line 3662
    .local v9, "includeInvisible":Z
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v6

    :goto_3
    move v10, v0

    .line 3667
    .local v10, "includeRecent":Z
    invoke-direct {v1, v6}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v11

    .line 3673
    .local v11, "systemUserUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v12, v1, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    invoke-static {v0, v12}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v12

    .line 3679
    .local v12, "callerIsMediaStore":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3681
    .local v13, "token":J
    :try_start_0
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 3682
    invoke-virtual {v0, v4}, Landroid/os/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    move v15, v0

    .line 3683
    .local v15, "userIsDemo":Z
    invoke-virtual {v1, v4}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v0

    move/from16 v16, v0

    .line 3684
    .local v16, "userKeyUnlocked":Z
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    move/from16 v5, p1

    invoke-virtual {v0, v5, v2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move/from16 v18, v0

    .line 3686
    .local v18, "storagePermission":Z
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3687
    nop

    .line 3689
    const/4 v0, 0x0

    .line 3691
    .local v0, "foundPrimary":Z
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v19

    .line 3692
    .local v20, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v21, v19

    .line 3693
    .local v21, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3694
    const/16 v22, 0x0

    move/from16 v43, v22

    move/from16 v22, v0

    move/from16 v0, v43

    .local v0, "i":I
    .local v22, "foundPrimary":Z
    :goto_4
    :try_start_1
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-ge v0, v3, :cond_13

    .line 3695
    :try_start_2
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3696
    .local v3, "volId":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 3699
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    sget-boolean v23, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    if-eqz v23, :cond_4

    move-wide/from16 v23, v13

    .end local v13    # "token":J
    .local v23, "token":J
    :try_start_3
    const-string v13, "StorageManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v25, v15

    .end local v15    # "userIsDemo":Z
    .local v25, "userIsDemo":Z
    :try_start_4
    const-string v15, "getVolumeList: vol("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 3775
    .end local v0    # "i":I
    .end local v3    # "volId":Ljava/lang/String;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v25    # "userIsDemo":Z
    .restart local v15    # "userIsDemo":Z
    :catchall_0
    move-exception v0

    move/from16 v25, v15

    move/from16 v27, v7

    move v5, v8

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    .end local v15    # "userIsDemo":Z
    .restart local v25    # "userIsDemo":Z
    goto/16 :goto_13

    .line 3699
    .end local v23    # "token":J
    .end local v25    # "userIsDemo":Z
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v13    # "token":J
    .restart local v15    # "userIsDemo":Z
    :cond_4
    move-wide/from16 v23, v13

    move/from16 v25, v15

    .line 3701
    .end local v13    # "token":J
    .end local v15    # "userIsDemo":Z
    .restart local v23    # "token":J
    .restart local v25    # "userIsDemo":Z
    :goto_5
    :try_start_5
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    const/4 v14, 0x2

    if-eqz v13, :cond_7

    if-eq v13, v14, :cond_5

    const/4 v15, 0x5

    if-eq v13, v15, :cond_7

    goto :goto_6

    .line 3706
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v13

    if-ne v13, v4, :cond_6

    .line 3709
    sget-boolean v13, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    if-eqz v13, :cond_8

    const-string v13, "StorageManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVolumeList: userId = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", packageName = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", path = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3715
    :cond_6
    :goto_6
    goto :goto_b

    .line 3775
    .end local v0    # "i":I
    .end local v3    # "volId":Ljava/lang/String;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_1
    move-exception v0

    move/from16 v27, v7

    move v5, v8

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    goto/16 :goto_13

    .line 3704
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_7
    nop

    .line 3718
    :cond_8
    :goto_7
    const/4 v13, 0x0

    .line 3719
    .local v13, "match":Z
    if-eqz v7, :cond_9

    .line 3720
    invoke-virtual {v5, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v13, v14

    goto :goto_a

    .line 3722
    :cond_9
    :try_start_7
    invoke-virtual {v5, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-nez v14, :cond_b

    if-eqz v9, :cond_a

    .line 3723
    :try_start_8
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v14, :cond_a

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v14, 0x1

    :goto_9
    move v13, v14

    .line 3725
    :goto_a
    if-nez v13, :cond_c

    .line 3694
    .end local v3    # "volId":Ljava/lang/String;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v13    # "match":Z
    :goto_b
    move/from16 v27, v7

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    goto/16 :goto_f

    .line 3727
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v13    # "match":Z
    :cond_c
    const/4 v14, 0x0

    .line 3728
    .local v14, "reportUnmounted":Z
    if-eqz v12, :cond_d

    move/from16 v27, v7

    goto/16 :goto_c

    .line 3733
    :cond_d
    if-nez v11, :cond_e

    .line 3734
    const/4 v14, 0x1

    .line 3735
    :try_start_9
    const-string v15, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v27, v7

    .end local v7    # "forWrite":Z
    .local v27, "forWrite":Z
    :try_start_a
    const-string v7, "Reporting "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " unmounted due to system locked"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_c

    .line 3775
    .end local v0    # "i":I
    .end local v3    # "volId":Ljava/lang/String;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v13    # "match":Z
    .end local v14    # "reportUnmounted":Z
    .end local v27    # "forWrite":Z
    .restart local v7    # "forWrite":Z
    :catchall_2
    move-exception v0

    move/from16 v27, v7

    move v5, v8

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    .end local v7    # "forWrite":Z
    .restart local v27    # "forWrite":Z
    goto/16 :goto_13

    .line 3736
    .end local v27    # "forWrite":Z
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v7    # "forWrite":Z
    .restart local v13    # "match":Z
    .restart local v14    # "reportUnmounted":Z
    :cond_e
    move/from16 v27, v7

    .end local v7    # "forWrite":Z
    .restart local v27    # "forWrite":Z
    :try_start_b
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/4 v7, 0x2

    if-ne v2, v7, :cond_f

    if-nez v16, :cond_f

    .line 3737
    const/4 v14, 0x1

    .line 3738
    :try_start_c
    const-string v2, "StorageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reporting "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "unmounted due to "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " locked"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3775
    .end local v0    # "i":I
    .end local v3    # "volId":Ljava/lang/String;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v13    # "match":Z
    .end local v14    # "reportUnmounted":Z
    :catchall_3
    move-exception v0

    move v5, v8

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    goto/16 :goto_13

    .line 3739
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v13    # "match":Z
    .restart local v14    # "reportUnmounted":Z
    :cond_f
    if-nez v18, :cond_10

    if-nez v8, :cond_10

    .line 3740
    const-string v2, "StorageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reporting "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "unmounted due to missing permissions"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 3741
    const/4 v14, 0x1

    .line 3744
    :cond_10
    :goto_c
    :try_start_d
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v4, v14}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 3748
    .local v2, "userVol":Landroid/os/storage/StorageVolume;
    sget-boolean v7, Lcom/android/server/StorageManagerService;->DEBUG_ONEPLUS:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v7, :cond_11

    :try_start_e
    const-string v7, "StorageManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    .end local v3    # "volId":Ljava/lang/String;
    .local v26, "volId":Ljava/lang/String;
    const-string v3, "getVolumeList: userVol = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", getInternalPath = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getInternalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_d

    .end local v26    # "volId":Ljava/lang/String;
    .restart local v3    # "volId":Ljava/lang/String;
    :cond_11
    move-object/from16 v26, v3

    .line 3750
    .end local v3    # "volId":Ljava/lang/String;
    .restart local v26    # "volId":Ljava/lang/String;
    :goto_d
    :try_start_f
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v3, :cond_12

    .line 3751
    move-object/from16 v3, v20

    const/4 v7, 0x0

    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :try_start_10
    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 3752
    const/4 v7, 0x1

    move/from16 v22, v7

    .end local v22    # "foundPrimary":Z
    .local v7, "foundPrimary":Z
    goto :goto_e

    .line 3775
    .end local v0    # "i":I
    .end local v2    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7    # "foundPrimary":Z
    .end local v13    # "match":Z
    .end local v14    # "reportUnmounted":Z
    .end local v26    # "volId":Ljava/lang/String;
    .restart local v22    # "foundPrimary":Z
    :catchall_4
    move-exception v0

    move v5, v8

    move-object/from16 v15, v21

    goto/16 :goto_13

    .line 3754
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v0    # "i":I
    .restart local v2    # "userVol":Landroid/os/storage/StorageVolume;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v13    # "match":Z
    .restart local v14    # "reportUnmounted":Z
    .restart local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v26    # "volId":Ljava/lang/String;
    :cond_12
    move-object/from16 v3, v20

    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :try_start_11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3756
    :goto_e
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v15, v21

    .end local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v15, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_12
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 3694
    .end local v2    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v13    # "match":Z
    .end local v14    # "reportUnmounted":Z
    .end local v26    # "volId":Ljava/lang/String;
    :goto_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v20, v3

    move-object/from16 v21, v15

    move-wide/from16 v13, v23

    move/from16 v15, v25

    move/from16 v7, v27

    move/from16 v3, p3

    goto/16 :goto_4

    .line 3775
    .end local v0    # "i":I
    :catchall_5
    move-exception v0

    move v5, v8

    goto/16 :goto_13

    .end local v15    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v15, v21

    move v5, v8

    .end local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_13

    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v15    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_7
    move-exception v0

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    move v5, v8

    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v15    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_13

    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v15    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "forWrite":Z
    .local v7, "forWrite":Z
    .restart local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_8
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    move v5, v8

    .end local v7    # "forWrite":Z
    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v15    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "forWrite":Z
    goto/16 :goto_13

    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v23    # "token":J
    .end local v25    # "userIsDemo":Z
    .end local v27    # "forWrite":Z
    .restart local v7    # "forWrite":Z
    .local v13, "token":J
    .local v15, "userIsDemo":Z
    .restart local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_9
    move-exception v0

    move/from16 v27, v7

    move-wide/from16 v23, v13

    move/from16 v25, v15

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    move v5, v8

    .end local v7    # "forWrite":Z
    .end local v13    # "token":J
    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v15, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "token":J
    .restart local v25    # "userIsDemo":Z
    .restart local v27    # "forWrite":Z
    goto/16 :goto_13

    .line 3694
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v23    # "token":J
    .end local v25    # "userIsDemo":Z
    .end local v27    # "forWrite":Z
    .restart local v0    # "i":I
    .restart local v7    # "forWrite":Z
    .restart local v13    # "token":J
    .local v15, "userIsDemo":Z
    .restart local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_13
    move/from16 v27, v7

    move-wide/from16 v23, v13

    move/from16 v25, v15

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    .line 3759
    .end local v0    # "i":I
    .end local v7    # "forWrite":Z
    .end local v13    # "token":J
    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v15, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "token":J
    .restart local v25    # "userIsDemo":Z
    .restart local v27    # "forWrite":Z
    if-eqz v10, :cond_17

    .line 3760
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v20, 0x240c8400

    sub-long v13, v13, v20

    .line 3761
    .local v13, "lastWeek":J
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 3762
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 3765
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v5, v2, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-eqz v5, :cond_14

    move v5, v8

    goto :goto_11

    .line 3768
    :cond_14
    move v5, v8

    .end local v8    # "realState":Z
    .local v5, "realState":Z
    :try_start_14
    iget-wide v7, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-wide/16 v20, 0x0

    cmp-long v7, v7, v20

    if-lez v7, :cond_15

    iget-wide v7, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    cmp-long v7, v7, v13

    if-gez v7, :cond_15

    .line 3769
    iget-object v7, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/os/storage/VolumeRecord;->buildStorageVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 3770
    .local v7, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3771
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3761
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v7    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_15
    :goto_11
    add-int/lit8 v0, v0, 0x1

    move v8, v5

    goto :goto_10

    .end local v5    # "realState":Z
    .restart local v8    # "realState":Z
    :cond_16
    move v5, v8

    .end local v8    # "realState":Z
    .restart local v5    # "realState":Z
    goto :goto_12

    .line 3775
    .end local v0    # "i":I
    .end local v5    # "realState":Z
    .end local v13    # "lastWeek":J
    .restart local v8    # "realState":Z
    :catchall_a
    move-exception v0

    move v5, v8

    .end local v8    # "realState":Z
    .restart local v5    # "realState":Z
    goto/16 :goto_13

    .line 3759
    .end local v5    # "realState":Z
    .restart local v8    # "realState":Z
    :cond_17
    move v5, v8

    .line 3775
    .end local v8    # "realState":Z
    .restart local v5    # "realState":Z
    :goto_12
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 3779
    if-eqz v25, :cond_18

    .line 3780
    const-string v2, "demo"

    .line 3781
    .local v2, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsMediaDirectory()Ljava/io/File;

    move-result-object v6

    .line 3782
    .local v6, "path":Ljava/io/File;
    const/4 v7, 0x0

    .line 3783
    .local v7, "primary":Z
    const/4 v8, 0x0

    .line 3784
    .local v8, "removable":Z
    const/4 v13, 0x1

    .line 3785
    .local v13, "emulated":Z
    const/4 v14, 0x0

    .line 3786
    .local v14, "allowMassStorage":Z
    const-wide/16 v20, 0x0

    .line 3787
    .local v20, "maxFileSize":J
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v39, v0

    .line 3788
    .local v39, "user":Landroid/os/UserHandle;
    const-string/jumbo v0, "mounted_ro"

    .line 3789
    .local v0, "envState":Ljava/lang/String;
    move-object/from16 v26, v0

    .end local v0    # "envState":Ljava/lang/String;
    .local v26, "envState":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v42, v2

    const v2, 0x104000e

    .end local v2    # "id":Ljava/lang/String;
    .local v42, "id":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3791
    .local v0, "description":Ljava/lang/String;
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-string v29, "demo"

    const-string v40, "demo"

    const-string/jumbo v41, "mounted_ro"

    move-object/from16 v28, v2

    move-object/from16 v30, v6

    move-object/from16 v31, v6

    move-object/from16 v32, v0

    invoke-direct/range {v28 .. v41}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3795
    .end local v0    # "description":Ljava/lang/String;
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "primary":Z
    .end local v8    # "removable":Z
    .end local v13    # "emulated":Z
    .end local v14    # "allowMassStorage":Z
    .end local v20    # "maxFileSize":J
    .end local v26    # "envState":Ljava/lang/String;
    .end local v39    # "user":Landroid/os/UserHandle;
    .end local v42    # "id":Ljava/lang/String;
    :cond_18
    if-nez v22, :cond_19

    .line 3796
    const-string v0, "StorageManagerService"

    const-string v2, "No primary storage defined yet; hacking together a stub"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3801
    .local v0, "primaryPhysical":Z
    const-string/jumbo v2, "stub_primary"

    .line 3802
    .restart local v2    # "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 3803
    .restart local v6    # "path":Ljava/io/File;
    iget-object v7, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3804
    .local v7, "description":Ljava/lang/String;
    const/4 v8, 0x1

    .line 3805
    .local v8, "primary":Z
    move/from16 v34, v0

    .line 3806
    .local v34, "removable":Z
    xor-int/lit8 v35, v0, 0x1

    .line 3807
    .local v35, "emulated":Z
    const/4 v13, 0x0

    .line 3808
    .local v13, "allowMassStorage":Z
    const-wide/16 v20, 0x0

    .line 3809
    .restart local v20    # "maxFileSize":J
    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v39, v14

    .line 3810
    .local v39, "owner":Landroid/os/UserHandle;
    const/4 v14, 0x0

    .line 3811
    .local v14, "uuid":Ljava/lang/String;
    const-string/jumbo v17, "removed"

    .line 3813
    .local v17, "state":Ljava/lang/String;
    move/from16 v26, v0

    .end local v0    # "primaryPhysical":Z
    .local v26, "primaryPhysical":Z
    new-instance v0, Landroid/os/storage/StorageVolume;

    const/16 v33, 0x1

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-string/jumbo v29, "stub_primary"

    const-string/jumbo v41, "removed"

    move-object/from16 v28, v0

    move-object/from16 v30, v6

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v40, v14

    invoke-direct/range {v28 .. v41}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3818
    .end local v2    # "id":Ljava/lang/String;
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "primary":Z
    .end local v13    # "allowMassStorage":Z
    .end local v14    # "uuid":Ljava/lang/String;
    .end local v17    # "state":Ljava/lang/String;
    .end local v20    # "maxFileSize":J
    .end local v26    # "primaryPhysical":Z
    .end local v34    # "removable":Z
    .end local v35    # "emulated":Z
    .end local v39    # "owner":Landroid/os/UserHandle;
    :cond_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    return-object v0

    .line 3775
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "realState":Z
    .end local v23    # "token":J
    .end local v25    # "userIsDemo":Z
    .end local v27    # "forWrite":Z
    .local v7, "forWrite":Z
    .local v8, "realState":Z
    .local v13, "token":J
    .local v15, "userIsDemo":Z
    .local v20, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_b
    move-exception v0

    move/from16 v27, v7

    move v5, v8

    move-wide/from16 v23, v13

    move/from16 v25, v15

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    .end local v7    # "forWrite":Z
    .end local v8    # "realState":Z
    .end local v13    # "token":J
    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v21    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5    # "realState":Z
    .local v15, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "token":J
    .restart local v25    # "userIsDemo":Z
    .restart local v27    # "forWrite":Z
    :goto_13
    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_13

    .line 3686
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "realState":Z
    .end local v15    # "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "userKeyUnlocked":Z
    .end local v18    # "storagePermission":Z
    .end local v22    # "foundPrimary":Z
    .end local v23    # "token":J
    .end local v25    # "userIsDemo":Z
    .end local v27    # "forWrite":Z
    .restart local v7    # "forWrite":Z
    .restart local v8    # "realState":Z
    .restart local v13    # "token":J
    :catchall_d
    move-exception v0

    move/from16 v27, v7

    move v5, v8

    move-wide/from16 v23, v13

    .end local v7    # "forWrite":Z
    .end local v8    # "realState":Z
    .end local v13    # "token":J
    .restart local v5    # "realState":Z
    .restart local v23    # "token":J
    .restart local v27    # "forWrite":Z
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3687
    throw v0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 4
    .param p1, "flags"    # I

    .line 3845
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3846
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeRecord;

    .line 3847
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3848
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    aput-object v3, v1, v2

    .line 3847
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3850
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3851
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "flags"    # I

    .line 3834
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3835
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    .line 3836
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3837
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    aput-object v3, v1, v2

    .line 3836
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3839
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3840
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConvertibleToFBE()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3161
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->isConvertibleToFbe()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3166
    :catch_0
    move-exception v0

    .line 3167
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3168
    const/4 v1, 0x0

    return v1
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 2896
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2897
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2898
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2899
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserKeyUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 3385
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v1, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$connectStoraged$3$StorageManagerService()V
    .locals 0

    .line 1963
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 1964
    return-void
.end method

.method public synthetic lambda$connectVold$4$StorageManagerService()V
    .locals 0

    .line 2001
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 2002
    return-void
.end method

.method public synthetic lambda$decryptStorage$6$StorageManagerService()V
    .locals 2

    .line 2974
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2977
    goto :goto_0

    .line 2975
    :catch_0
    move-exception v0

    .line 2976
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2978
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public synthetic lambda$handleSystemReady$0$StorageManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 950
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 951
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshFuseSettings()V

    .line 952
    return-void
.end method

.method public synthetic lambda$onVolumeStateChangedLocked$2$StorageManagerService(Landroid/os/storage/VolumeInfo;I)V
    .locals 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "userId"    # I

    .line 1624
    const/4 v0, 0x0

    .line 1628
    .local v0, "pidPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    const-string v3, "StorageManagerService"

    if-ge v1, v2, :cond_0

    .line 1630
    :try_start_0
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 1631
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityManagerInternal;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1632
    goto :goto_1

    .line 1633
    :catch_0
    move-exception v2

    .line 1634
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v4, "Some processes are starting, retry"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1628
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1639
    .end local v1    # "i":I
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 1640
    invoke-direct {p0, v0, p2}, Lcom/android/server/StorageManagerService;->remountAppStorageDirs(Ljava/util/Map;I)V

    goto :goto_2

    .line 1642
    :cond_1
    const-string v1, "Not able to getStorageNotOptimizedProcesses() after 5 retries"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :goto_2
    return-void
.end method

.method public synthetic lambda$resetIfBootedAndConnected$1$StorageManagerService()V
    .locals 2

    .line 1118
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1119
    return-void
.end method

.method public synthetic lambda$setDebugFlags$5$StorageManagerService()V
    .locals 2

    .line 2753
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 2754
    return-void
.end method

.method public lastMaintenance()J
    .locals 2

    .line 1307
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3369
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3372
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3376
    nop

    .line 3378
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3379
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v1, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->remove(I)V

    .line 3380
    monitor-exit v0

    .line 3381
    return-void

    .line 3380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3373
    :catch_0
    move-exception v0

    .line 3374
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3375
    return-void
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .line 3586
    const-string v0, ": "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3587
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3588
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sys.user."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".ce_available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3591
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    const-string v5, "Failed to prepare "

    if-eqz v4, :cond_9

    .line 3596
    if-nez v2, :cond_1

    const/4 v4, 0x0

    .line 3597
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 3598
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3602
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 3604
    .local v4, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v4, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3606
    const/4 v6, 0x0

    .line 3608
    .local v6, "appFile":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v7

    .line 3611
    nop

    .line 3613
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 3614
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3615
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3619
    :cond_2
    sget-object v7, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 3620
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Invalid mkdirs path: "

    if-eqz v8, :cond_8

    .line 3622
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3628
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3629
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-eq v2, v8, :cond_6

    .line 3637
    :cond_4
    const-string v8, "/storage/ace"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    .line 3638
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " does not match calling user id "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3644
    :cond_6
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v8, p2, v1}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3647
    nop

    .line 3649
    return-void

    .line 3645
    :catch_0
    move-exception v8

    .line 3646
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3623
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " does not contain calling package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3651
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not a known app path."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3609
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v5

    .line 3610
    .local v5, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to resolve "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3592
    .end local v4    # "appOps":Landroid/app/AppOpsManager;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "appFile":Ljava/io/File;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitor()V
    .locals 2

    .line 4656
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->monitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4659
    goto :goto_0

    .line 4657
    :catch_0
    move-exception v0

    .line 4658
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4660
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;

    .line 2253
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2255
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2256
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2260
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    .line 2261
    return-void

    .line 2257
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restricted by policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    .locals 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I
    .param p6, "obbInfo"    # Landroid/content/res/ObbInfo;

    .line 2905
    const-string/jumbo v0, "rawPath cannot be null"

    move-object v9, p1

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2906
    const-string v0, "canonicalPath cannot be null"

    move-object/from16 v10, p2

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2907
    const-string/jumbo v0, "token cannot be null"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2908
    const-string/jumbo v0, "obbIfno cannot be null"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2911
    .local v0, "callingUid":I
    new-instance v13, Lcom/android/server/StorageManagerService$ObbState;

    const/4 v8, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move v5, v0

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    move-object v3, v13

    .line 2913
    .local v3, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v7, Lcom/android/server/StorageManagerService$MountObbAction;

    move-object v1, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;ILandroid/content/res/ObbInfo;)V

    .line 2914
    .local v1, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, v2, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2918
    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .locals 8

    .line 3523
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3527
    .local v0, "uid":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3528
    const/4 v2, 0x0

    .line 3529
    .local v2, "newlyCreated":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v3, :cond_0

    .line 3530
    new-instance v3, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v3}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 3531
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v5, "AppFuseBridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3532
    const/4 v2, 0x1

    .line 3535
    :cond_0
    :try_start_1
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3537
    .local v3, "name":I
    :try_start_2
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 3538
    invoke-virtual {v5, v6}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3537
    return-object v4

    .line 3539
    :catch_0
    move-exception v4

    .line 3540
    .local v4, "e":Lcom/android/internal/os/FuseUnavailableMountException;
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 3542
    :try_start_4
    const-string v6, "StorageManagerService"

    const-string v7, ""

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3543
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v5

    .line 3546
    :cond_1
    :try_start_6
    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3550
    .end local v3    # "name":I
    .end local v4    # "e":Lcom/android/internal/os/FuseUnavailableMountException;
    nop

    .line 3551
    .end local v2    # "newlyCreated":Z
    :try_start_7
    monitor-exit v1

    goto :goto_0

    .line 3548
    .restart local v2    # "newlyCreated":Z
    :catch_1
    move-exception v3

    .line 3549
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    throw v4

    .line 3551
    .end local v2    # "newlyCreated":Z
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2
.end method

.method public needsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3219
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3220
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method public onAwakeStateChanged(Z)V
    .locals 0
    .param p1, "isAwake"    # Z

    .line 1279
    return-void
.end method

.method public onDaemonConnected()V
    .locals 2

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1312
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1313
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .line 1285
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    .line 1286
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 1288
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    goto :goto_1

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "mountId"    # I
    .param p2, "fileId"    # I
    .param p3, "mode"    # I

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openProxyFileDescriptor: mountId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    const/high16 v0, 0x30000000

    and-int/2addr p3, v0

    .line 3571
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3572
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_0

    .line 3573
    const-string v2, "StorageManagerService"

    const-string v3, "FuseBridge has not been created"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    monitor-exit v1

    return-object v0

    .line 3576
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 3577
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "mountId":I
    .end local p2    # "fileId":I
    .end local p3    # "mode":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3578
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "mountId":I
    .restart local p2    # "fileId":I
    .restart local p3    # "mode":I
    :catch_0
    move-exception v1

    .line 3579
    .local v1, "error":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    const-string v3, "The mount point has already been invalid"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3580
    return-object v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .line 2430
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2431
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2433
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2435
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2436
    const-string/jumbo v1, "partitionMixed"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2439
    goto :goto_0

    .line 2437
    :catch_0
    move-exception v1

    .line 2438
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2440
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 2416
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2417
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2419
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2421
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2422
    const-string/jumbo v1, "partitionPrivate"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    goto :goto_0

    .line 2423
    :catch_0
    move-exception v1

    .line 2424
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2426
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 2403
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2405
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2407
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2408
    const-string/jumbo v1, "partitionPublic"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2411
    goto :goto_0

    .line 2409
    :catch_0
    move-exception v1

    .line 2410
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2412
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    .line 3421
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3423
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V

    .line 3424
    return-void
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IStorageEventListener;

    .line 2235
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    .line 2236
    return-void
.end method

.method runIdleMaint(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2574
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2581
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2595
    :cond_0
    const-string v1, "Skipping idle maintenance - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2582
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v2, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Landroid/os/IVold;->runIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2599
    :goto_1
    goto :goto_2

    .line 2597
    :catch_0
    move-exception v1

    .line 2598
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2600
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public runIdleMaintenance()V
    .locals 1

    .line 2604
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 2605
    return-void
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1295
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1296
    return-void
.end method

.method public runMaintenance()V
    .locals 1

    .line 1301
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 1303
    return-void
.end method

.method public setDebugFlags(II)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 2648
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2650
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2655
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2659
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2664
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2666
    .local v3, "token":J
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2667
    .local v0, "emulateFbe":Z
    :goto_0
    :try_start_0
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2672
    .end local v0    # "emulateFbe":Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2673
    goto :goto_1

    .line 2672
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2673
    throw v0

    .line 2660
    .end local v3    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2656
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation not supported on device with native FBE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2676
    :cond_3
    :goto_1
    and-int/lit8 v0, p2, 0x3

    const/16 v3, 0xa

    if-eqz v0, :cond_6

    .line 2679
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    .line 2680
    const-string v0, "force_on"

    .local v0, "value":Ljava/lang/String;
    goto :goto_2

    .line 2681
    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 2682
    const-string v0, "force_off"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_2

    .line 2684
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    .line 2687
    .restart local v0    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2689
    .local v4, "token":J
    :try_start_1
    const-string/jumbo v6, "persist.sys.adoptable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2694
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2695
    goto :goto_3

    .line 2694
    :catchall_1
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2695
    throw v1

    .line 2698
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_6
    :goto_3
    and-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_9

    .line 2701
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    .line 2702
    const-string v0, "force_on"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_4

    .line 2703
    .end local v0    # "value":Ljava/lang/String;
    :cond_7
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_8

    .line 2704
    const-string v0, "force_off"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_4

    .line 2706
    .end local v0    # "value":Ljava/lang/String;
    :cond_8
    const-string v0, ""

    .line 2709
    .restart local v0    # "value":Ljava/lang/String;
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2711
    .restart local v4    # "token":J
    :try_start_2
    const-string/jumbo v6, "persist.sys.sdcardfs"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2716
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2717
    goto :goto_5

    .line 2716
    :catchall_2
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2717
    throw v1

    .line 2720
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_9
    :goto_5
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_b

    .line 2721
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    move v0, v1

    .line 2723
    .local v0, "enabled":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2725
    .local v1, "token":J
    :try_start_3
    const-string/jumbo v4, "persist.sys.virtual_disk"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2730
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2731
    goto :goto_6

    .line 2730
    :catchall_3
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2731
    throw v3

    .line 2734
    .end local v0    # "enabled":Z
    .end local v1    # "token":J
    :cond_b
    :goto_6
    and-int/lit16 v0, p2, 0xc0

    if-eqz v0, :cond_e

    .line 2737
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_c

    .line 2738
    const/4 v0, 0x1

    .local v0, "value":I
    goto :goto_7

    .line 2739
    .end local v0    # "value":I
    :cond_c
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_d

    .line 2740
    const/4 v0, -0x1

    .restart local v0    # "value":I
    goto :goto_7

    .line 2742
    .end local v0    # "value":I
    :cond_d
    const/4 v0, 0x0

    .line 2745
    .restart local v0    # "value":I
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2747
    .restart local v1    # "token":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isolated_storage_local"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2749
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 2752
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/-$$Lambda$StorageManagerService$BseoOaqQft6Zl5fkxkPPeceEDjQ;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$BseoOaqQft6Zl5fkxkPPeceEDjQ;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2756
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2757
    goto :goto_8

    .line 2756
    :catchall_4
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2757
    throw v3

    .line 2759
    .end local v0    # "value":I
    .end local v1    # "token":J
    :cond_e
    :goto_8
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3115
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3120
    return-void

    .line 3124
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3125
    return-void

    .line 3126
    :catch_0
    move-exception v0

    .line 3127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3128
    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 2770
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2775
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2780
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_6

    .line 2783
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2784
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2787
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 2788
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2789
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2790
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2791
    const-string v2, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failing move due to locked user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/16 v2, -0xa

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2793
    monitor-exit v0

    return-void

    .line 2795
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 2799
    :cond_1
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "primary_physical"

    .line 2800
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 2808
    :cond_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 2809
    .local v2, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 2811
    .local v3, "to":Landroid/os/storage/VolumeInfo;
    const/4 v4, -0x6

    if-nez v2, :cond_3

    .line 2812
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing move due to missing from volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2814
    monitor-exit v0

    return-void

    .line 2815
    :cond_3
    if-nez v3, :cond_4

    .line 2816
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing move due to missing to volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2818
    monitor-exit v0

    return-void

    .line 2821
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2824
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v5, Lcom/android/server/StorageManagerService$13;

    invoke-direct {v5, p0}, Lcom/android/server/StorageManagerService$13;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v1, v4, v5}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2839
    goto :goto_1

    .line 2837
    :catch_0
    move-exception v0

    .line 2838
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2840
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2801
    .end local v2    # "from":Landroid/os/storage/VolumeInfo;
    .end local v3    # "to":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :goto_2
    :try_start_2
    const-string v2, "StorageManagerService"

    const-string v3, "Skipping move to/from primary physical"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2803
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2804
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2805
    monitor-exit v0

    return-void

    .line 2781
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Move already in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    throw v1

    .line 2777
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage already at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    throw v1

    .line 2821
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .line 2444
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2446
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2448
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2449
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2450
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$5000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2451
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2452
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2453
    return-void

    .line 2452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .line 2457
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2459
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2461
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2462
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iget v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v2, v3

    and-int v3, p2, p3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2463
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$5000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2464
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2465
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2466
    return-void

    .line 2465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/os/storage/IStorageShutdownObserver;

    .line 2245
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2247
    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2249
    return-void
.end method

.method public startCheckpoint(I)V
    .locals 3
    .param p1, "numTries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3193
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3195
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "no permission to start filesystem checkpoint"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3198
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 3199
    return-void
.end method

.method public supportsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v0

    return v0
.end method

.method public unlockUserKey(II[B[B)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 3345
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    .line 3346
    .local v0, "isFsEncrypted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockUserKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isFileEncryptedNativeOrEmulated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasSecret: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    const-string v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3352
    if-eqz v0, :cond_2

    .line 3354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 3355
    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v3

    .line 3354
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3359
    goto :goto_2

    .line 3356
    :catch_0
    move-exception v1

    .line 3357
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3358
    return-void

    .line 3362
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3363
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v2, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->append(I)V

    .line 3364
    monitor-exit v1

    .line 3365
    return-void

    .line 3364
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 1
    .param p1, "volId"    # Ljava/lang/String;

    .line 2321
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2323
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2324
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    .line 2325
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 11
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .line 2922
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2925
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2926
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2927
    .local v1, "existingState":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2929
    if-eqz v1, :cond_0

    .line 2931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2932
    .local v0, "callingUid":I
    new-instance v10, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 2934
    .local v2, "newState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v3, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 2935
    .local v3, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2939
    .end local v0    # "callingUid":I
    .end local v2    # "newState":Lcom/android/server/StorageManagerService$ObbState;
    .end local v3    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    goto :goto_0

    .line 2940
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown OBB mount at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    :goto_0
    return-void

    .line 2927
    .end local v1    # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IStorageEventListener;

    .line 2240
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    .line 2241
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "no permission to access the crypt keeper"

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    .line 3071
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3083
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeVerifyPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3084
    const/4 v0, 0x0

    return v0

    .line 3085
    :catch_0
    move-exception v0

    .line 3086
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3087
    const/4 v1, -0x1

    return v1

    .line 3075
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3068
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
