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

    .line 325
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

    .line 328
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

    .line 355
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->ALL_STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 469
    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/(?:data|media|obb|sandbox)/)([^/]+)(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    .line 575
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

    .line 1830
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 251
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 368
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 380
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 418
    new-instance v0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    .line 421
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 425
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 428
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 432
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 438
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 448
    iput v0, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 450
    iput v0, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 457
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 459
    iput v0, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 462
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 584
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 585
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 586
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 612
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 615
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 618
    new-instance v3, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 628
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 631
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    .line 852
    new-instance v3, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1342
    new-instance v3, Lcom/android/server/StorageManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    .line 3984
    new-instance v3, Lcom/android/server/StorageManagerService$14;

    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$14;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    .line 1831
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 1834
    nop

    .line 1835
    const-string/jumbo v3, "persist.sys.isolated_storage"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1834
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sys.isolated_storage_snapshot"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string/jumbo v3, "persist.sys.fuse"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    .line 1841
    if-eqz v3, :cond_0

    const-string/jumbo v3, "persist.sys.vold_app_data_isolation_enabled"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    .line 1843
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1844
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 1845
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 1846
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1848
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "StorageManagerService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1850
    new-instance v2, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 1853
    new-instance v2, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1855
    new-instance v2, Lcom/android/server/storage/StorageSessionController;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    invoke-direct {v2, v3, v4}, Lcom/android/server/storage/StorageSessionController;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 1857
    new-instance v2, Lcom/android/server/pm/Installer;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1858
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->onStart()V

    .line 1861
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 1862
    .local v2, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1863
    .local v3, "systemDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "last-fstrim"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1864
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1868
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1869
    :catch_0
    move-exception v4

    .line 1870
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

    .line 1871
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 1873
    :cond_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 1876
    :goto_1
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 1877
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "storage.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "storage-settings"

    invoke-direct {v4, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1879
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1880
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 1881
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1883
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1885
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v4

    .line 1886
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1887
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1888
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v5, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1890
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1891
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1892
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1896
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1899
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    .line 1901
    return-void

    .line 1892
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1881
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

    .line 1066
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1068
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 1069
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1070
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
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

    .line 4000
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4001
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4003
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-nez v1, :cond_0

    .line 4004
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 4005
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4007
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

    .line 4008
    .local v3, "o":Lcom/android/server/StorageManagerService$ObbState;
    iget-object v4, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4012
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_0

    .line 4009
    .restart local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4015
    .end local v3    # "o":Lcom/android/server/StorageManagerService$ObbState;
    :cond_2
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4017
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4030
    nop

    .line 4032
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4033
    return-void

    .line 4018
    :catch_0
    move-exception v2

    .line 4023
    .local v2, "e":Landroid/os/RemoteException;
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4024
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4025
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4029
    :cond_3
    throw v2
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .locals 6
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3876
    and-int/lit8 v0, p1, 0x1

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_0

    .line 3877
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ALLOCATE_AGGRESSIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    :cond_0
    and-int/lit8 p1, p1, -0x3

    .line 3883
    and-int/lit8 p1, p1, -0x5

    .line 3888
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3889
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3891
    .local v2, "token":J
    const/16 v4, 0x1a

    :try_start_0
    invoke-virtual {v0, v4, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3892
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

    .line 3894
    or-int/lit8 p1, p1, 0x4

    .line 3897
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3898
    nop

    .line 3900
    return p1

    .line 3897
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3898
    throw v1
.end method

.method private bootCompleted()V
    .locals 2

    .line 2103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 2104
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2105
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->updateFusePropFromSettings()V

    .line 2106
    return-void
.end method

.method private completeUnlockUser(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 1195
    if-nez p1, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->migrateLegacyObbData()V

    .line 1199
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->onKeyguardStateChanged(Z)V

    .line 1203
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1204
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    if-eqz v2, :cond_2

    .line 1205
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 1206
    .local v5, "unlockedUser":I
    if-ne v5, p1, :cond_1

    .line 1208
    const-string v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeUnlockUser called for already unlocked user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    monitor-exit v1

    return-void

    .line 1205
    .end local v5    # "unlockedUser":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1213
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1214
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1215
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1216
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1, v0}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1217
    .local v4, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1219
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v5

    .line 1220
    .local v5, "envState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5, v5}, Lcom/android/server/StorageManagerService$Callbacks;->access$2900(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-static {v3}, Lcom/oneplus/os/storage/OnePlusStorageInjector;->isUsbStorage(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1224
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, p1}, Lcom/oneplus/os/storage/OnePlusStorageInjector;->broadcastForUnmountedMediaStorage(Landroid/content/Context;Landroid/os/storage/VolumeInfo;I)V

    .line 1213
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v5    # "envState":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1229
    .end local v2    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1230
    monitor-exit v1

    .line 1231
    return-void

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private connectStoraged()V
    .locals 5

    .line 1929
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1930
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1932
    :try_start_0
    new-instance v1, Lcom/android/server/StorageManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    goto :goto_0

    .line 1940
    :catch_0
    move-exception v1

    .line 1941
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1945
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1946
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    goto :goto_1

    .line 1948
    :cond_1
    const-string v1, "StorageManagerService"

    const-string/jumbo v2, "storaged not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :goto_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    if-nez v1, :cond_2

    .line 1952
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$1Q-KZa2Hx_KUWPEktCctvDhjjtQ;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$1Q-KZa2Hx_KUWPEktCctvDhjjtQ;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1956
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 1958
    :goto_2
    return-void
.end method

.method private connectVold()V
    .locals 5

    .line 1961
    const-string/jumbo v0, "vold"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1962
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1964
    :try_start_0
    new-instance v1, Lcom/android/server/StorageManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$6;-><init>(Lcom/android/server/StorageManagerService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1974
    goto :goto_0

    .line 1972
    :catch_0
    move-exception v1

    .line 1973
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 1977
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_1

    .line 1978
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1980
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Landroid/os/IVoldListener;

    invoke-interface {v2, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1981
    :catch_1
    move-exception v2

    .line 1982
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 1983
    const-string/jumbo v3, "vold listener rejected; trying again"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1984
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 1986
    :cond_1
    const-string/jumbo v2, "vold not found; trying again"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :goto_2
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    if-nez v1, :cond_2

    .line 1990
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$43y8_l8yNNnpxoU9-BJAIKmuH5I;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$43y8_l8yNNnpxoU9-BJAIKmuH5I;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1994
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->onDaemonConnected()V

    .line 1996
    :goto_3
    return-void
.end method

.method private copyLocaleFromMountService()V
    .locals 7

    .line 1319
    :try_start_0
    const-string v0, "SystemLocale"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1322
    .local v0, "systemLocale":Ljava/lang/String;
    nop

    .line 1323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    return-void

    .line 1327
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

    .line 1328
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 1329
    .local v1, "locale":Ljava/util/Locale;
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 1330
    .local v4, "config":Landroid/content/res/Configuration;
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1332
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1335
    goto :goto_0

    .line 1333
    :catch_0
    move-exception v5

    .line 1334
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Error setting system locale from mount service"

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
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

    .line 1339
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.locale"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    return-void

    .line 1320
    .end local v0    # "systemLocale":Ljava/lang/String;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v4    # "config":Landroid/content/res/Configuration;
    :catch_1
    move-exception v0

    .line 1321
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private dispatchOnFinished(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 4309
    if-eqz p1, :cond_0

    .line 4311
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
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

.method private dispatchOnStatus(Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/IVoldTaskListener;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;

    .line 4299
    if-eqz p1, :cond_0

    .line 4301
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4303
    goto :goto_0

    .line 4302
    :catch_0
    move-exception v0

    .line 4305
    :cond_0
    :goto_0
    return-void
.end method

.method private encodeBytes([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B

    .line 3276
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3277
    const-string v0, "!"

    return-object v0

    .line 3279
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enforceAdminUser()V
    .locals 7

    .line 1811
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1812
    .local v0, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1814
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1816
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    .local v4, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    nop

    .line 1820
    if-eqz v4, :cond_0

    .line 1823
    return-void

    .line 1821
    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1818
    .end local v4    # "isAdmin":Z
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    throw v4
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;

    .line 1784
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 564
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 565
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v2

    .line 566
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_0
    monitor-exit v0

    return-object v1

    .line 569
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

    .line 502
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 505
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    monitor-exit v0

    return-object v3

    .line 503
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 510
    const/4 v0, 0x0

    return-object v0

    .line 509
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

    .line 527
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 528
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const-string v1, "emulated;0"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 530
    :cond_0
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 533
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

    .line 480
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 482
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    .line 483
    monitor-exit v0

    return-object v1

    .line 485
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
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

    .line 485
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

    .line 490
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 493
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 491
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
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

    .line 497
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

    .line 2508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    goto :goto_0

    .line 2509
    :catch_0
    move-exception v0

    .line 2510
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2512
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .line 2114
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 2117
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

    .line 2084
    const-wide/16 v0, 0x0

    .line 2085
    .local v0, "maxTime":J
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v2

    .line 2086
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

    .line 2087
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

    .line 2088
    .local v6, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2090
    .end local v6    # "op":Landroid/app/AppOpsManager$OpEntry;
    goto :goto_1

    .line 2091
    .end local v4    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_0
    goto :goto_0

    .line 2092
    :cond_1
    return-wide v0
.end method

.method private getMountMode(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4318
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->getMountModeInternal(ILjava/lang/String;)I

    move-result v0

    .line 4319
    .local v0, "mode":I
    sget-boolean v1, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 4320
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

    .line 4321
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4320
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    :cond_0
    return v0
.end method

.method private getMountModeInternal(ILjava/lang/String;)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v9, p1

    .line 4329
    const/4 v10, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4330
    return v10

    .line 4333
    :cond_0
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4334
    .local v0, "packagesForUid":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4336
    return v10

    .line 4338
    :cond_1
    if-nez p2, :cond_2

    .line 4339
    aget-object v2, v0, v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v2

    .end local p2    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 4338
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_2
    move-object/from16 v11, p2

    .line 4342
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

    .line 4343
    return v10

    .line 4346
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-virtual {v2, v9}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->isExternalStorageService(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4350
    const/4 v2, 0x7

    return v2

    .line 4353
    :cond_4
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    iget v2, v1, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v2, v4, :cond_5

    iget v2, v1, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 4354
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 4358
    :cond_5
    return v3

    .line 4361
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

    .line 4363
    .local v13, "hasMtp":Z
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_8

    if-eqz v13, :cond_8

    .line 4364
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 4365
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4364
    invoke-interface {v2, v11, v10, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4366
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4368
    return v3

    .line 4373
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

    .line 4375
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

    .line 4380
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

    .line 4382
    .local v3, "hasFull":Z
    :goto_2
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 4383
    const/4 v4, 0x6

    return v4

    .line 4388
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

    .line 4390
    .local v4, "hasInstall":Z
    :goto_3
    const/4 v5, 0x0

    .line 4395
    .local v5, "hasInstallOp":Z
    array-length v6, v0

    move v7, v10

    :goto_4
    if-ge v7, v6, :cond_d

    aget-object v8, v0, v7

    .line 4396
    .local v8, "uidPackageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v10, 0x42

    invoke-interface {v15, v10, v9, v8}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c

    .line 4398
    const/4 v5, 0x1

    .line 4399
    goto :goto_5

    .line 4395
    .end local v8    # "uidPackageName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    goto :goto_4

    .line 4402
    :cond_d
    :goto_5
    if-nez v4, :cond_e

    if-eqz v5, :cond_f

    :cond_e
    if-eqz v2, :cond_f

    .line 4403
    const/4 v6, 0x5

    return v6

    .line 4408
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

    .line 4411
    .local v6, "hasLegacy":Z
    if-eqz v6, :cond_11

    if-eqz v2, :cond_11

    .line 4412
    const/4 v7, 0x3

    return v7

    .line 4413
    :cond_11
    if-eqz v6, :cond_12

    if-eqz v14, :cond_12

    .line 4414
    const/4 v7, 0x2

    return v7

    .line 4416
    :cond_12
    return v12

    .line 4418
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

    .line 4421
    .end local p2    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :goto_7
    const/4 v2, 0x0

    return v2
.end method

.method private getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 2033
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2036
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2033
    const/high16 v2, 0xc0000

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method private handleBootCompleted()V
    .locals 0

    .line 2109
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 2110
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 2111
    return-void
.end method

.method private handleDaemonConnected()V
    .locals 2

    .line 1306
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfBootedAndConnected()V

    .line 1307
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfBootedAndConnected()V

    .line 1311
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_progress()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->copyLocaleFromMountService()V

    .line 1314
    :cond_0
    return-void
.end method

.method private handleSystemReady()V
    .locals 6

    .line 906
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 909
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 910
    const-string/jumbo v1, "zram_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/StorageManagerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 909
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 918
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshZramSettings()V

    .line 921
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "zramPropValue":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 923
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 929
    const-string/jumbo v2, "isolated_storage_remote"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Lcom/android/server/StorageManagerService$3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/StorageManagerService$3;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Handler;)V

    .line 928
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 938
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 939
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 938
    const-string/jumbo v3, "storage_native_boot"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 943
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 944
    return-void
.end method

.method private initIfBootedAndConnected()V
    .locals 10

    .line 1074
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

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_1

    .line 1077
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1081
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 1082
    .local v0, "initLocked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1084
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

    .line 1086
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 1087
    :try_start_0
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6}, Landroid/os/IVold;->lockUserKey(I)V

    goto :goto_1

    .line 1089
    :cond_0
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v9

    .line 1090
    invoke-direct {p0, v8}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    .line 1089
    invoke-interface {v5, v6, v7, v9, v8}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :goto_1
    goto :goto_2

    .line 1092
    :catch_0
    move-exception v5

    .line 1093
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 1097
    .end local v0    # "initLocked":Z
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    return-void
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1579
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

    .line 1586
    return v1

    .line 1584
    :cond_0
    nop

    .line 1589
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

    .line 1598
    return v1

    .line 1596
    :cond_1
    nop

    .line 1601
    return v4
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1791
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1793
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 1794
    .local v1, "isUsbRestricted":Z
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1795
    nop

    .line 1796
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1795
    const-string/jumbo v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 1799
    :cond_0
    const/4 v2, 0x0

    .line 1800
    .local v2, "isTypeRestricted":Z
    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eq v3, v4, :cond_1

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    .line 1802
    :cond_1
    nop

    .line 1804
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1803
    const-string/jumbo v5, "no_physical_media"

    invoke-virtual {v0, v5, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    .line 1807
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

    .line 3381
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3383
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

    .line 2847
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    .line 2848
    return v0

    .line 2851
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2852
    return v1

    .line 2855
    :cond_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v3, 0x10000000

    .line 2856
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2855
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 2863
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

    .line 1034
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez p1, :cond_0

    return-void

    .line 1036
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1038
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

    .line 1040
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1042
    :cond_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v5, "media"

    const/high16 v6, 0xc0000

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 1046
    .local v4, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_2

    .line 1047
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    .local v5, "am":Landroid/app/IActivityManager;
    :try_start_1
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1050
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, -0x1

    const-string/jumbo v9, "vold reset"

    .line 1049
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    goto :goto_1

    .line 1054
    :catch_0
    move-exception v6

    .line 1057
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "provider":Landroid/content/pm/ProviderInfo;
    .end local v5    # "am":Landroid/app/IActivityManager;
    :cond_2
    goto :goto_0

    .line 1059
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    nop

    .line 1061
    return-void

    .line 1059
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    throw v2
.end method

.method private maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V
    .locals 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "newState"    # I

    .line 1732
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    return-void

    .line 1736
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1737
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_7

    iget v1, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_1

    goto :goto_3

    .line 1742
    :cond_1
    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 1744
    .local v1, "label":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v4, :cond_5

    const/4 v5, 0x3

    if-ne p2, v5, :cond_3

    goto :goto_1

    .line 1747
    :cond_3
    if-eqz p2, :cond_4

    const/16 v5, 0x8

    if-ne p2, v5, :cond_6

    .line 1749
    :cond_4
    const v5, 0x3345e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_2

    .line 1746
    :cond_5
    :goto_1
    const v5, 0x3345d

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1751
    :cond_6
    :goto_2
    return-void

    .line 1738
    .end local v1    # "label":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void
.end method

.method private mount(Landroid/os/storage/VolumeInfo;)V
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2274
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

    .line 2275
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v4, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    new-instance v5, Lcom/android/server/StorageManagerService$8;

    invoke-direct {v5, p0, p1}, Lcom/android/server/StorageManagerService$8;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 2303
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

    .line 2306
    goto :goto_0

    .line 2304
    :catch_0
    move-exception v1

    .line 2305
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2307
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1244
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 1245
    monitor-exit v0

    .line 1246
    return-void

    .line 1245
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

    .line 1481
    const/4 v0, 0x0

    .line 1482
    .local v0, "volumeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1483
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 1484
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1485
    add-int/lit8 v0, v0, 0x1

    .line 1482
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1489
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1490
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x5000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1492
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1494
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1496
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1497
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_2

    .line 1498
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1501
    :cond_2
    iput v0, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1502
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, p1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->access$3900(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1503
    return-void
.end method

.method private onMoveStatusLocked(I)V
    .locals 5
    .param p1, "status"    # I

    .line 1755
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-string v1, "StorageManagerService"

    if-nez v0, :cond_0

    .line 1756
    const-string v0, "Odd, status but no move requested"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-void

    .line 1762
    :cond_0
    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    goto :goto_0

    .line 1763
    :catch_0
    move-exception v0

    .line 1768
    :goto_0
    const/16 v0, 0x52

    const-string v2, "Move to "

    if-ne p1, v0, :cond_1

    .line 1769
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

    .line 1771
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1772
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1775
    :cond_1
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1776
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

    .line 1778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1779
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1781
    :cond_2
    return-void
.end method

.method private onStopUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUserStopping(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    .line 1256
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1259
    :cond_0
    return-void
.end method

.method private onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v0, p1}, Lcom/android/server/storage/StorageSessionController;->onUnlockUser(I)V

    .line 1182
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v0, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    goto :goto_0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1189
    return-void
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .locals 10
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 1507
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->isOnlyCoreApps()Z

    move-result v0

    const-string v1, "StorageManagerService"

    if-eqz v0, :cond_0

    .line 1508
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

    .line 1509
    return-void

    .line 1511
    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1512
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1514
    .local v0, "amInternal":Landroid/app/ActivityManagerInternal;
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    const/4 v3, 0x0

    .line 1515
    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1516
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

    .line 1517
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is no longer running."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1516
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    .line 1521
    :cond_1
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const-string v3, "Found primary storage at "

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1522
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1523
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    .line 1525
    .local v7, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v8, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 1526
    const-string/jumbo v9, "private"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1529
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1530
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1532
    :cond_2
    iget-object v8, v7, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1533
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1535
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1536
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1539
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .end local v7    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_3
    :goto_0
    goto/16 :goto_1

    :cond_4
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_8

    .line 1541
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    const-string/jumbo v7, "primary_physical"

    invoke-static {v7, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 1542
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1545
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v2, v6

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1552
    :cond_5
    invoke-static {p1}, Lcom/oneplus/os/storage/OnePlusStorageInjector;->isUsbStorage(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1553
    const-string v2, "Make visible for usb storage."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1560
    :cond_6
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1561
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1564
    :cond_7
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1565
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1567
    :cond_8
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v2, v4, :cond_9

    .line 1568
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1570
    :cond_9
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v2, v5, :cond_a

    .line 1571
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1572
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1574
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping automatic mounting of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :goto_1
    return-void
.end method

.method private onVolumeStateChangedAsync(Landroid/os/storage/VolumeInfo;II)V
    .locals 12
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 1642
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1645
    :try_start_0
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1646
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1647
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v1, :cond_1

    .line 1648
    new-instance v2, Landroid/os/storage/VolumeRecord;

    iget v3, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 1649
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1651
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1652
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1654
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v3, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1657
    :cond_1
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1658
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1662
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 1663
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1665
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1667
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 1671
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V

    .line 1678
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/storage/StorageSessionController;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;)V
    :try_end_1
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1681
    goto :goto_1

    .line 1679
    :catch_0
    move-exception v1

    .line 1680
    .local v1, "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    const-string v2, "StorageManagerService"

    const-string v3, "Failed to notify volume state changed to the Storage Service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1682
    .end local v1    # "e":Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
    :goto_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1683
    :try_start_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->access$4000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1687
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1688
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1689
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.os.storage.extra.VOLUME_ID"

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1690
    const-string v3, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1691
    const-string v3, "android.os.storage.extra.FS_UUID"

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1692
    const/high16 v3, 0x5000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1694
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1697
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 1698
    .local v2, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1700
    .local v3, "newStateEnv":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1704
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_7

    aget v8, v4, v7

    .line 1705
    .local v8, "userId":I
    invoke-virtual {p1, v8}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1706
    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9, v8, v6}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 1708
    .local v9, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 1710
    iget-object v10, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2, v3}, Lcom/android/server/StorageManagerService$Callbacks;->access$2900(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    .end local v8    # "userId":I
    .end local v9    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1716
    :cond_7
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v5, 0x5

    if-eqz v4, :cond_8

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v5, :cond_9

    :cond_8
    iget v4, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v4, v5, :cond_9

    .line 1724
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1727
    :cond_9
    invoke-direct {p0, p1, p3}, Lcom/android/server/StorageManagerService;->maybeLogMediaMount(Landroid/os/storage/VolumeInfo;I)V

    .line 1728
    .end local v2    # "oldStateEnv":Ljava/lang/String;
    .end local v3    # "newStateEnv":Ljava/lang/String;
    monitor-exit v1

    .line 1729
    return-void

    .line 1728
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1665
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

    .line 1606
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1607
    if-eq p3, v1, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1609
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    if-eqz v0, :cond_1

    .line 1610
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v0

    .line 1611
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1635
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1638
    .end local v0    # "userId":I
    :cond_1
    :goto_0
    return-void
.end method

.method private prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 3387
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3388
    return-void

    .line 3391
    :cond_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3392
    .local v0, "um":Landroid/os/UserManager;
    const-class v1, Landroid/os/UserManagerInternal;

    .line 3393
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 3395
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

    .line 3397
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3398
    const/4 v4, 0x3

    .local v4, "flags":I
    goto :goto_1

    .line 3399
    .end local v4    # "flags":I
    :cond_2
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3400
    const/4 v4, 0x1

    .line 3405
    .restart local v4    # "flags":I
    :goto_1
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget v7, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-direct {p0, v5, v6, v7, v4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V

    .line 3406
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "flags":I
    goto :goto_0

    .line 3407
    :cond_3
    return-void
.end method

.method private prepareUserStorageInternal(Ljava/lang/String;III)V
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    .line 3419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;III)V

    .line 3422
    if-eqz p1, :cond_0

    .line 3423
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3424
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 3425
    .local v1, "info":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget v2, v1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3426
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Installer;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3431
    .end local v0    # "storage":Landroid/os/storage/StorageManager;
    .end local v1    # "info":Landroid/os/storage/VolumeInfo;
    :cond_0
    goto :goto_0

    .line 3429
    :catch_0
    move-exception v0

    .line 3430
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private readSettingsLocked()V
    .locals 12

    .line 2123
    const-string v0, "Failed reading metadata"

    const-string v1, "StorageManagerService"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2124
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2126
    const/4 v2, 0x0

    .line 2128
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 2129
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2130
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2133
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 2134
    const/4 v4, 0x2

    if-ne v5, v4, :cond_0

    .line 2135
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2136
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v8, "volumes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2137
    const-string/jumbo v8, "version"

    invoke-static {v3, v8, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 2138
    .local v8, "version":I
    const-string/jumbo v9, "ro.vold.primary_physical"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2140
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

    .line 2142
    .local v4, "validAttr":Z
    if-eqz v4, :cond_4

    .line 2143
    const-string/jumbo v6, "primaryStorageUuid"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    goto :goto_2

    .line 2146
    .end local v4    # "validAttr":Z
    .end local v8    # "version":I
    .end local v9    # "primaryPhysical":Z
    :cond_3
    const-string/jumbo v4, "volume"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2147
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 2148
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

    .line 2146
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_4
    :goto_2
    nop

    .line 2150
    .end local v7    # "tag":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 2133
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :cond_5
    goto :goto_5

    .line 2159
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 2156
    :catch_0
    move-exception v3

    .line 2157
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2159
    nop

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_6

    .line 2154
    :catch_1
    move-exception v3

    .line 2155
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2159
    nop

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2160
    throw v0

    .line 2152
    :catch_2
    move-exception v0

    .line 2159
    :goto_5
    nop

    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2160
    nop

    .line 2161
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

    .line 2192
    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2193
    .local v0, "type":I
    const-string v1, "fsUuid"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2194
    .local v1, "fsUuid":Ljava/lang/String;
    new-instance v2, Landroid/os/storage/VolumeRecord;

    invoke-direct {v2, v0, v1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 2195
    .local v2, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 2196
    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2197
    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2198
    const-string v3, "createdMillis"

    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 2199
    const-string/jumbo v3, "lastSeenMillis"

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 2200
    const-string/jumbo v3, "lastTrimMillis"

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 2201
    const-string/jumbo v3, "lastBenchMillis"

    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 2202
    return-object v2
.end method

.method private refreshFuseSettings()V
    .locals 4

    .line 1013
    const-string/jumbo v0, "storage_native_boot"

    const-string v1, "fuse_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1015
    .local v0, "isFuseEnabled":I
    const-string/jumbo v1, "persist.sys.fflag.override.settings_fuse"

    const-string v2, "StorageManagerService"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1016
    const-string v3, "Device Config flag for FUSE is enabled, turn Settings fuse flag on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1020
    const-string v3, "Device Config flag for FUSE is disabled, turn Settings fuse flag off"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_1
    :goto_0
    return-void
.end method

.method private refreshIsolatedStorageSettings()V
    .locals 5

    .line 977
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 979
    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "isolated_storage_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    const-string/jumbo v2, "isolated_storage_remote"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 982
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isolated_storage_local"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 984
    .local v0, "local":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 990
    .local v1, "remote":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 991
    const/4 v2, 0x0

    .local v2, "res":Z
    goto :goto_0

    .line 992
    .end local v2    # "res":Z
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 993
    const/4 v2, 0x1

    .restart local v2    # "res":Z
    goto :goto_0

    .line 994
    .end local v2    # "res":Z
    :cond_1
    if-ne v1, v2, :cond_2

    .line 995
    const/4 v2, 0x0

    .restart local v2    # "res":Z
    goto :goto_0

    .line 996
    .end local v2    # "res":Z
    :cond_2
    if-ne v1, v3, :cond_3

    .line 997
    const/4 v2, 0x1

    .restart local v2    # "res":Z
    goto :goto_0

    .line 999
    .end local v2    # "res":Z
    :cond_3
    const/4 v2, 0x1

    .line 1002
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

    .line 1004
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "persist.sys.isolated_storage"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method private refreshZramSettings()V
    .locals 5

    .line 952
    const-string/jumbo v0, "persist.sys.zram_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    return-void

    .line 959
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 957
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "zram_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_1

    .line 960
    move-object v2, v3

    goto :goto_0

    :cond_1
    const-string v2, "0"

    .line 961
    .local v2, "desiredPropertyValue":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 965
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 968
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111011b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 973
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

    .line 2254
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

    .line 2255
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2256
    .local v2, "pid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2257
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

    .line 2258
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2259
    invoke-virtual {v4, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2260
    .local v4, "sharedPackages":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v5

    .line 2262
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

    .line 2264
    .local v6, "packages":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v7, v5, v2, v6}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2267
    nop

    .line 2268
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "pid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "sharedPackages":[Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "packages":[Ljava/lang/String;
    goto :goto_0

    .line 2265
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "pid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "sharedPackages":[Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 2269
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

    .line 2624
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 2626
    return-void

    .line 2630
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->remountUid(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2633
    goto :goto_0

    .line 2631
    :catch_0
    move-exception v0

    .line 2632
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2634
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 4
    .param p1, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 4036
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4037
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4038
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 4039
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4040
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 4042
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4043
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    :cond_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4048
    return-void
.end method

.method private resetIfBootedAndConnected()V
    .locals 8

    .line 1100
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

    .line 1102
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_4

    .line 1103
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1104
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1106
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eqz v2, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v4, Lcom/android/server/-$$Lambda$StorageManagerService$r27LXIZ-GHtEGwWREPUZctEIq8I;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$r27LXIZ-GHtEGwWREPUZctEIq8I;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/storage/StorageSessionController;->onReset(Landroid/os/IVold;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1111
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->killMediaProvider(Ljava/util/List;)V

    .line 1115
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1117
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 1120
    .local v3, "systemUnlockedUsers":[I
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1121
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1123
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V

    .line 1124
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    :try_start_1
    const-string v2, "StorageManagerService"

    const-string v4, "Resetting vold..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v2}, Landroid/os/IVold;->reset()V

    .line 1130
    const-string v2, "StorageManagerService"

    const-string v4, "Reset vold"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1134
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v5, v6, v7}, Landroid/os/IVold;->onUserAdded(II)V

    .line 1135
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 1136
    :cond_1
    array-length v2, v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget v5, v3, v4

    .line 1137
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v6, v5}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1138
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v6, v5}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1136
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1140
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    if-eqz v2, :cond_3

    .line 1141
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/StorageManagerService;->restoreAllUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V

    .line 1143
    :cond_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v4, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v2, v4}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 1144
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-virtual {v2, v4}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1147
    goto :goto_3

    .line 1145
    :catch_0
    move-exception v2

    .line 1146
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "StorageManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1124
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "systemUnlockedUsers":[I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1149
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

    .line 1153
    .local p2, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 1154
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 1155
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1156
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1157
    .local v2, "userId":I
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1158
    goto :goto_0

    .line 1160
    :cond_0
    invoke-static {p3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1161
    goto :goto_0

    .line 1163
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    .line 1164
    .local v3, "unlockingOrUnlocked":Z
    if-nez v3, :cond_2

    .line 1165
    goto :goto_0

    .line 1167
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

    .line 1168
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, v2}, Landroid/os/IVold;->onUserStarted(I)V

    .line 1169
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    invoke-interface {v4, v2}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 1170
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1171
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userId":I
    .end local v3    # "unlockingOrUnlocked":Z
    goto :goto_0

    .line 1172
    :cond_3
    return-void
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 514
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const-string/jumbo v0, "internal"

    return-object v0

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 518
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_2

    iget-wide v1, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 521
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

    .line 519
    :cond_2
    :goto_0
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private servicesReady()V
    .locals 5

    .line 1999
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2001
    nop

    .line 2002
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2001
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2003
    nop

    .line 2004
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2003
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 2006
    const-string/jumbo v0, "media"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2007
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 2008
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 2009
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    .line 2012
    :cond_0
    const-string v1, "downloads"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2013
    if-eqz v0, :cond_1

    .line 2014
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 2017
    :cond_1
    const-string v1, "com.android.externalstorage.documents"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->getProviderInfo(Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2018
    if-eqz v0, :cond_2

    .line 2019
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 2022
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-nez v1, :cond_3

    .line 2024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 2026
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x57

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback$Stub;

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    goto :goto_0

    .line 2027
    :catch_0
    move-exception v1

    .line 2030
    :cond_3
    :goto_0
    return-void
.end method

.method private shouldBenchmark()Z
    .locals 12

    .line 538
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 540
    .local v0, "benchInterval":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 541
    return v3

    .line 542
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 543
    return v4

    .line 546
    :cond_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 548
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 549
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/VolumeRecord;

    .line 550
    .local v7, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long/2addr v8, v10

    .line 552
    .local v8, "benchAge":J
    cmp-long v10, v8, v0

    if-ltz v10, :cond_2

    .line 553
    monitor-exit v2

    return v4

    .line 547
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v7    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v8    # "benchAge":J
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 557
    .end local v5    # "i":I
    :cond_3
    monitor-exit v2

    return v3

    .line 558
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

    .line 2054
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2059
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2061
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2059
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

    .line 2063
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

    .line 2065
    .local v3, "hasLegacy":Z
    :goto_1
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/StorageManagerService;->updateLegacyStorageApps(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2068
    .end local v3    # "hasLegacy":Z
    goto :goto_2

    .line 2066
    :catch_0
    move-exception v3

    .line 2067
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

    .line 2069
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_0

    .line 2071
    :cond_1
    new-instance v1, Lcom/android/server/StorageManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/StorageManagerService$7;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 2078
    .local v1, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 2079
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    return-void
.end method

.method private start()V
    .locals 0

    .line 1924
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 1925
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 1926
    return-void
.end method

.method private supportsBlockCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v0

    return v0
.end method

.method private systemReady()V
    .locals 2

    .line 2096
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2097
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 2099
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2100
    return-void
.end method

.method private unmount(Landroid/os/storage/VolumeInfo;)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 2320
    const-string v0, "StorageManagerService"

    :try_start_0
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2321
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2325
    :cond_0
    goto :goto_0

    .line 2328
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2323
    :catch_1
    move-exception v1

    .line 2324
    .local v1, "e":Lcom/android/server/pm/Installer$InstallerException;
    :try_start_1
    const-string v2, "Failed unmount mirror data"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    .end local v1    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 2327
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2330
    goto :goto_2

    .line 2329
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2331
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private updateFusePropFromSettings()V
    .locals 4

    .line 1908
    const-string/jumbo v0, "persist.sys.fflag.override.settings_fuse"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1910
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

    .line 1913
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mIsFuseEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toggling persist.sys.fuse to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.fuse"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "fuse_prop"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1921
    :cond_0
    return-void
.end method

.method private updateLegacyStorageApps(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "hasLegacy"    # Z

    .line 2040
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2041
    if-eqz p3, :cond_0

    .line 2042
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

    .line 2043
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2047
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

    .line 2048
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2050
    :goto_0
    monitor-exit v0

    .line 2051
    return-void

    .line 2050
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

    .line 885
    const-string v0, "Thread "

    const-string v1, "StorageManagerService"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 888
    .local v2, "startMillis":J
    :goto_0
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 889
    return-void

    .line 891
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

    .line 896
    goto :goto_1

    .line 894
    :catch_0
    move-exception v4

    .line 895
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupt while waiting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
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

    .line 898
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

    .line 897
    :cond_2
    :goto_2
    goto/16 :goto_0
.end method

.method private warnOnNotMounted()V
    .locals 4

    .line 2833
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2835
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 2836
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2838
    monitor-exit v0

    return-void

    .line 2834
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2841
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2843
    const-string v0, "StorageManagerService"

    const-string v1, "No primary storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    return-void

    .line 2841
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

    .line 2165
    const-string/jumbo v0, "volumes"

    const/4 v1, 0x0

    .line 2167
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 2169
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2170
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2171
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2172
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2173
    const-string/jumbo v3, "version"

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2174
    const-string/jumbo v3, "primaryStorageUuid"

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2175
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2176
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 2177
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 2178
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v2, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 2176
    .end local v6    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2180
    .end local v5    # "i":I
    :cond_0
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2183
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2188
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "size":I
    goto :goto_1

    .line 2184
    :catch_0
    move-exception v0

    .line 2185
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 2186
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2189
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

    .line 2206
    const/4 v0, 0x0

    const-string/jumbo v1, "volume"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2207
    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    const-string/jumbo v3, "type"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2208
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    const-string v3, "fsUuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2209
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2210
    iget-object v2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2211
    iget v2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2212
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string v4, "createdMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2213
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-string/jumbo v4, "lastSeenMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2214
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string/jumbo v4, "lastTrimMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2215
    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    const-string/jumbo v4, "lastBenchMillis"

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2216
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2217
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

    .line 3219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 3224
    return-void

    .line 3220
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to commit checkpoint changes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abortIdleMaint(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2598
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2601
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StorageManagerService$12;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2615
    goto :goto_0

    .line 2613
    :catch_0
    move-exception v0

    .line 2614
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2616
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public abortIdleMaintenance()V
    .locals 1

    .line 2620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 2621
    return-void
.end method

.method public addUserKeyAuth(II[B[B)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 3292
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3295
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3298
    goto :goto_0

    .line 3296
    :catch_0
    move-exception v0

    .line 3297
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3299
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

    .line 3949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    .line 3951
    or-int/lit8 v0, p4, 0x8

    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 3953
    .local v0, "allocatableBytes":J
    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 3956
    or-int/lit8 v2, p4, 0x10

    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 3958
    .local v2, "cacheClearable":J
    add-long v4, v0, v2

    cmp-long v4, p2, v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 3959
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

    .line 3964
    .end local v2    # "cacheClearable":J
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 3965
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3969
    .local v3, "token":J
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 3970
    .local v5, "path":Ljava/io/File;
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_2

    .line 3971
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    goto :goto_1

    .line 3973
    :cond_2
    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr p2, v6

    .line 3976
    :goto_1
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3980
    .end local v5    # "path":Ljava/io/File;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3981
    nop

    .line 3982
    return-void

    .line 3980
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 3977
    :catch_0
    move-exception v5

    .line 3978
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

    .line 3980
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

    .line 3981
    throw v5
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 2354
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$9;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2388
    nop

    .line 2389
    return-void

    .line 2386
    :catch_0
    move-exception v0

    .line 2387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .line 3010
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3015
    return v2

    .line 3018
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3019
    const-string p2, ""

    goto :goto_0

    .line 3020
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3028
    :goto_0
    nop

    .line 3029
    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3028
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 3030
    .local v1, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const-string v3, "default_password"

    .line 3032
    .local v3, "currentPassword":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 3035
    goto :goto_1

    .line 3033
    :catch_0
    move-exception v4

    .line 3034
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get password"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v4, p1, v3, p2}, Landroid/os/IVold;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3040
    :try_start_2
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3043
    goto :goto_2

    .line 3041
    :catch_1
    move-exception v4

    .line 3042
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

    .line 3044
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 3045
    :catch_2
    move-exception v4

    .line 3046
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3047
    return v2

    .line 3021
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

    .line 3241
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can clear password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeClearPassword()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3246
    return-void

    .line 3247
    :catch_0
    move-exception v0

    .line 3248
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3249
    return-void
.end method

.method public clearUserKeyAuth(II[B[B)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 3310
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3313
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVold;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3316
    goto :goto_0

    .line 3314
    :catch_0
    move-exception v0

    .line 3315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3317
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

    .line 3197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->commitChanges()V

    .line 3202
    return-void

    .line 3198
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

    .line 3255
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->createUserKey(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3261
    goto :goto_0

    .line 3259
    :catch_0
    move-exception v0

    .line 3260
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .line 2949
    const-string v0, "StorageManagerService"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2961
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1}, Landroid/os/IVold;->fdeCheckPassword(Ljava/lang/String;)V

    .line 2962
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$StorageManagerService$kHfrfIqfu8okPHuGRmwjnqh0v3g;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$kHfrfIqfu8okPHuGRmwjnqh0v3g;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2969
    const/4 v0, 0x0

    return v0

    .line 2973
    :catch_0
    move-exception v1

    .line 2974
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2975
    const/4 v0, -0x1

    return v0

    .line 2970
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2971
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "fdeCheckPassword failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2972
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0

    .line 2953
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

    .line 3266
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->destroyUserKey(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3272
    goto :goto_0

    .line 3270
    :catch_0
    move-exception v0

    .line 3271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 3436
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3442
    goto :goto_0

    .line 3440
    :catch_0
    move-exception v0

    .line 3441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3443
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4537
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StorageManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4539
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v1, 0xa0

    const-string v2, "  "

    invoke-direct {v0, p2, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4540
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4541
    :try_start_0
    const-string v2, "Disks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4542
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4543
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4544
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    .line 4545
    .local v3, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v3, v0}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4543
    .end local v3    # "disk":Landroid/os/storage/DiskInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4547
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4549
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4550
    const-string v2, "Volumes:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4551
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4552
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4553
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 4554
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v4, "private"

    iget-object v5, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 4555
    :cond_2
    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4552
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4557
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4559
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4560
    const-string v2, "Records:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4561
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4562
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4563
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 4564
    .local v3, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v3, v0}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4562
    .end local v3    # "note":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4566
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4568
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary storage UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4571
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4572
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v2

    .line 4573
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v2, :cond_5

    .line 4574
    const-string v3, "Internal storage total size: N/A"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 4576
    :cond_5
    const-string v3, "Internal storage ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4577
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4578
    const-string v3, ") total size: "

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4579
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4580
    const-string v3, " ("

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4581
    sget-object v3, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 4582
    const-string v3, " MiB)"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4585
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local unlocked users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4587
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

    .line 4589
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4590
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Isolated storage, local feature flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isolated_storage_local"

    .line 4592
    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4591
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Isolated storage, remote feature flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isolated_storage_remote"

    .line 4594
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4593
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4595
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

    .line 4596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forced scoped storage app list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "storage_native_boot"

    const-string v6, "forced_scoped_storage_whitelist"

    .line 4597
    invoke-static {v5, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4596
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAutomotive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/StorageManagerService;->mIsAutomotive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4600
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "cr":Landroid/content/ContentResolver;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4602
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 4603
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4604
    const-string/jumbo v1, "mObbMounts:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4605
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4606
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4607
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4608
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4609
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4610
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

    .line 4611
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4612
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 4613
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

    .line 4614
    .local v6, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4615
    .end local v6    # "obbState":Lcom/android/server/StorageManagerService$ObbState;
    goto :goto_6

    .line 4616
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4617
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;"
    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_5

    .line 4618
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4620
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4621
    const-string/jumbo v3, "mObbPathToStateMap:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4622
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4623
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 4624
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4625
    .local v3, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4626
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4627
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4628
    const-string v5, " -> "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4629
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4630
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;"
    goto :goto_7

    .line 4631
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4632
    nop

    .end local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/StorageManagerService$ObbState;>;>;>;"
    .end local v3    # "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/StorageManagerService$ObbState;>;>;"
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4634
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4635
    const-string v1, "Last maintenance: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4636
    iget-wide v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    return-void

    .line 4632
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4600
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

    .line 2981
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2985
    const-string p2, ""

    goto :goto_0

    .line 2986
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2995
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IVold;->fdeEnable(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2999
    nop

    .line 3001
    return v1

    .line 2996
    :catch_0
    move-exception v0

    .line 2997
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2998
    const/4 v1, -0x1

    return v1

    .line 2987
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

    .line 3324
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3330
    goto :goto_0

    .line 3328
    :catch_0
    move-exception v0

    .line 3329
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3331
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public fixupAppDir(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 3447
    sget-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3448
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "StorageManagerService"

    if-eqz v1, :cond_1

    .line 3449
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to fixup an app dir without a userId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    return-void

    .line 3454
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3455
    .local v1, "userId":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 3456
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3458
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

    .line 3461
    goto :goto_0

    .line 3459
    :catch_0
    move-exception v5

    .line 3460
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

    .line 3464
    .end local v1    # "userId":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3465
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

    .line 3462
    :catch_2
    move-exception v1

    .line 3463
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid userId in path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3466
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    goto :goto_1

    .line 3468
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

    .line 3470
    :goto_1
    return-void
.end method

.method public forgetAllVolumes()V
    .locals 6

    .line 2484
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2486
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2488
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2489
    .local v2, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 2490
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v4, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2491
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2493
    :cond_0
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v4, v2}, Lcom/android/server/StorageManagerService$Callbacks;->access$5100(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2487
    .end local v2    # "fsUuid":Ljava/lang/String;
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2495
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2497
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2498
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2501
    :cond_2
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2502
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2503
    monitor-exit v0

    .line 2504
    return-void

    .line 2503
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

    .line 2460
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2462
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2466
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2467
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2469
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, p1}, Lcom/android/server/StorageManagerService$Callbacks;->access$5100(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 2473
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2474
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 2475
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2478
    :cond_1
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2479
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2480
    return-void

    .line 2479
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

    .line 2335
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2337
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2338
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 2340
    .local v1, "fsUuid":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2345
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2349
    :cond_0
    goto :goto_0

    .line 2347
    :catch_0
    move-exception v2

    .line 2348
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "StorageManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2350
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public fstrim(ILandroid/os/IVoldTaskListener;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "listener"    # Landroid/os/IVoldTaskListener;

    .line 2516
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2523
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2556
    :cond_0
    const-string v0, "StorageManagerService"

    const-string v1, "Skipping fstrim - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2524
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v1, Lcom/android/server/StorageManagerService$10;

    invoke-direct {v1, p0, p2}, Lcom/android/server/StorageManagerService$10;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2560
    :goto_1
    nop

    .line 2561
    return-void

    .line 2558
    :catch_0
    move-exception v0

    .line 2559
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

    .line 3905
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v3

    .line 3907
    .end local p2    # "flags":I
    .local v3, "flags":I
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 3908
    .local v5, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    .line 3909
    .local v6, "stats":Landroid/app/usage/StorageStatsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3915
    .local v7, "token":J
    :try_start_0
    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3917
    .local v0, "path":Ljava/io/File;
    const-wide/16 v9, 0x0

    .line 3918
    .local v9, "usable":J
    const-wide/16 v11, 0x0

    .line 3919
    .local v11, "lowReserved":J
    const-wide/16 v13, 0x0

    .line 3920
    .local v13, "fullReserved":J
    const-wide/16 v15, 0x0

    .line 3922
    .local v15, "cacheClearable":J
    and-int/lit8 v17, v3, 0x10

    if-nez v17, :cond_0

    .line 3923
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 3924
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v17

    move-wide/from16 v11, v17

    .line 3925
    invoke-virtual {v5, v0}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 3928
    :cond_0
    and-int/lit8 v17, v3, 0x8

    move-wide/from16 v18, v11

    .end local v11    # "lowReserved":J
    .local v18, "lowReserved":J
    const-wide/16 v11, 0x0

    if-nez v17, :cond_2

    .line 3929
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 3930
    invoke-virtual {v6, v2}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v20

    .line 3931
    .local v20, "cacheTotal":J
    invoke-virtual {v5, v0, v3}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v22

    .line 3932
    .local v22, "cacheReserved":J
    move-object/from16 p2, v0

    .end local v0    # "path":Ljava/io/File;
    .local p2, "path":Ljava/io/File;
    sub-long v0, v20, v22

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v15, v0

    goto :goto_0

    .line 3929
    .end local v20    # "cacheTotal":J
    .end local v22    # "cacheReserved":J
    .end local p2    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_1
    move-object/from16 p2, v0

    .end local v0    # "path":Ljava/io/File;
    .restart local p2    # "path":Ljava/io/File;
    goto :goto_0

    .line 3928
    .end local p2    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_2
    move-object/from16 p2, v0

    .line 3935
    .end local v0    # "path":Ljava/io/File;
    .restart local p2    # "path":Ljava/io/File;
    :goto_0
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3

    .line 3936
    add-long v0, v9, v15

    sub-long/2addr v0, v13

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3943
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3936
    return-wide v0

    .line 3938
    :cond_3
    add-long v0, v9, v15

    sub-long v0, v0, v18

    :try_start_1
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3943
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3938
    return-wide v0

    .line 3943
    .end local v9    # "usable":J
    .end local v13    # "fullReserved":J
    .end local v15    # "cacheClearable":J
    .end local v18    # "lowReserved":J
    .end local p2    # "path":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3940
    :catch_0
    move-exception v0

    .line 3941
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

    .line 3943
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

    .line 3944
    throw v0
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 3847
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3849
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3850
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3852
    .local v2, "stats":Landroid/app/usage/StorageStatsManager;
    :try_start_0
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3852
    return-wide v3

    .line 3854
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3855
    throw v3
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 3861
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STORAGE_INTERNAL"

    const-string v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3865
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 3866
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3865
    return-wide v2

    .line 3870
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 3867
    :catch_0
    move-exception v2

    .line 3868
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

    .line 3870
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "uid":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3871
    throw v2
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 4

    .line 3813
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3814
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    .line 3815
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3816
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    aput-object v3, v1, v2

    .line 3815
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3818
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3819
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

    .line 2936
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeComplete()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2941
    :catch_0
    move-exception v0

    .line 2942
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2943
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

    .line 3129
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3134
    return-object v1

    .line 3138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3139
    :catch_0
    move-exception v0

    .line 3140
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3141
    return-object v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 2868
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2870
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2873
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2874
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2875
    .local v1, "state":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2876
    if-nez v1, :cond_0

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find OBB mounted at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StorageManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    const/4 v0, 0x0

    return-object v0

    .line 2881
    :cond_0
    iget-object v0, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2875
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

    .line 3228
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "only keyguard can retrieve password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPassword()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3233
    :catch_0
    move-exception v0

    .line 3234
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3235
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPasswordType()I
    .locals 3

    .line 3087
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeGetPasswordType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3092
    :catch_0
    move-exception v0

    .line 3093
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3094
    const/4 v1, -0x1

    return v1
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .line 2753
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2754
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2755
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

    .line 3647
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3649
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

    .line 3650
    .local v7, "forWrite":Z
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    move v8, v0

    .line 3651
    .local v8, "realState":Z
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    move v9, v0

    .line 3652
    .local v9, "includeInvisible":Z
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v6

    :goto_3
    move v10, v0

    .line 3657
    .local v10, "includeRecent":Z
    invoke-direct {v1, v6}, Lcom/android/server/StorageManagerService;->isSystemUnlocked(I)Z

    move-result v11

    .line 3663
    .local v11, "systemUserUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v12, v1, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    invoke-static {v0, v12}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v12

    .line 3669
    .local v12, "callerIsMediaStore":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3671
    .local v13, "token":J
    :try_start_0
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 3672
    invoke-virtual {v0, v4}, Landroid/os/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    move v15, v0

    .line 3673
    .local v15, "userIsDemo":Z
    invoke-virtual {v1, v4}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v0

    move/from16 v16, v0

    .line 3674
    .local v16, "userKeyUnlocked":Z
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    move/from16 v5, p1

    invoke-virtual {v0, v5, v2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move/from16 v18, v0

    .line 3676
    .local v18, "storagePermission":Z
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3677
    nop

    .line 3679
    const/4 v0, 0x0

    .line 3681
    .local v0, "foundPrimary":Z
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v19

    .line 3682
    .local v20, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v21, v19

    .line 3683
    .local v21, "resUuids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3684
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

    .line 3685
    :try_start_2
    iget-object v3, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3686
    .local v3, "volId":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 3689
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

    .line 3765
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

    .line 3689
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

    .line 3691
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

    .line 3696
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v13

    if-ne v13, v4, :cond_6

    .line 3699
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

    .line 3705
    :cond_6
    :goto_6
    goto :goto_b

    .line 3765
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

    .line 3694
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_7
    nop

    .line 3708
    :cond_8
    :goto_7
    const/4 v13, 0x0

    .line 3709
    .local v13, "match":Z
    if-eqz v7, :cond_9

    .line 3710
    invoke-virtual {v5, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v13, v14

    goto :goto_a

    .line 3712
    :cond_9
    :try_start_7
    invoke-virtual {v5, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-nez v14, :cond_b

    if-eqz v9, :cond_a

    .line 3713
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

    .line 3715
    :goto_a
    if-nez v13, :cond_c

    .line 3684
    .end local v3    # "volId":Ljava/lang/String;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v13    # "match":Z
    :goto_b
    move/from16 v27, v7

    move-object/from16 v3, v20

    move-object/from16 v15, v21

    goto/16 :goto_f

    .line 3717
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v13    # "match":Z
    :cond_c
    const/4 v14, 0x0

    .line 3718
    .local v14, "reportUnmounted":Z
    if-eqz v12, :cond_d

    move/from16 v27, v7

    goto/16 :goto_c

    .line 3723
    :cond_d
    if-nez v11, :cond_e

    .line 3724
    const/4 v14, 0x1

    .line 3725
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

    .line 3765
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

    .line 3726
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

    .line 3727
    const/4 v14, 0x1

    .line 3728
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

    .line 3765
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

    .line 3729
    .restart local v0    # "i":I
    .restart local v3    # "volId":Ljava/lang/String;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v13    # "match":Z
    .restart local v14    # "reportUnmounted":Z
    :cond_f
    if-nez v18, :cond_10

    if-nez v8, :cond_10

    .line 3730
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

    .line 3731
    const/4 v14, 0x1

    .line 3734
    :cond_10
    :goto_c
    :try_start_d
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v4, v14}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 3738
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

    .line 3740
    .end local v3    # "volId":Ljava/lang/String;
    .restart local v26    # "volId":Ljava/lang/String;
    :goto_d
    :try_start_f
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v3, :cond_12

    .line 3741
    move-object/from16 v3, v20

    const/4 v7, 0x0

    .end local v20    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :try_start_10
    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 3742
    const/4 v7, 0x1

    move/from16 v22, v7

    .end local v22    # "foundPrimary":Z
    .local v7, "foundPrimary":Z
    goto :goto_e

    .line 3765
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

    .line 3744
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

    .line 3746
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

    .line 3684
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

    .line 3765
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

    .line 3684
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

    .line 3749
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

    .line 3750
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v20, 0x240c8400

    sub-long v13, v13, v20

    .line 3751
    .local v13, "lastWeek":J
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 3752
    iget-object v2, v1, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 3755
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v5, v2, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-eqz v5, :cond_14

    move v5, v8

    goto :goto_11

    .line 3758
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

    .line 3759
    iget-object v7, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/os/storage/VolumeRecord;->buildStorageVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 3760
    .local v7, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3761
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3751
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

    .line 3765
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

    .line 3749
    .end local v5    # "realState":Z
    .restart local v8    # "realState":Z
    :cond_17
    move v5, v8

    .line 3765
    .end local v8    # "realState":Z
    .restart local v5    # "realState":Z
    :goto_12
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 3769
    if-eqz v25, :cond_18

    .line 3770
    const-string v2, "demo"

    .line 3771
    .local v2, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsMediaDirectory()Ljava/io/File;

    move-result-object v6

    .line 3772
    .local v6, "path":Ljava/io/File;
    const/4 v7, 0x0

    .line 3773
    .local v7, "primary":Z
    const/4 v8, 0x0

    .line 3774
    .local v8, "removable":Z
    const/4 v13, 0x1

    .line 3775
    .local v13, "emulated":Z
    const/4 v14, 0x0

    .line 3776
    .local v14, "allowMassStorage":Z
    const-wide/16 v20, 0x0

    .line 3777
    .local v20, "maxFileSize":J
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v39, v0

    .line 3778
    .local v39, "user":Landroid/os/UserHandle;
    const-string/jumbo v0, "mounted_ro"

    .line 3779
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

    .line 3781
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

    .line 3785
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

    .line 3786
    const-string v0, "StorageManagerService"

    const-string v2, "No primary storage defined yet; hacking together a stub"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3791
    .local v0, "primaryPhysical":Z
    const-string/jumbo v2, "stub_primary"

    .line 3792
    .restart local v2    # "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 3793
    .restart local v6    # "path":Ljava/io/File;
    iget-object v7, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3794
    .local v7, "description":Ljava/lang/String;
    const/4 v8, 0x1

    .line 3795
    .local v8, "primary":Z
    move/from16 v34, v0

    .line 3796
    .local v34, "removable":Z
    xor-int/lit8 v35, v0, 0x1

    .line 3797
    .local v35, "emulated":Z
    const/4 v13, 0x0

    .line 3798
    .local v13, "allowMassStorage":Z
    const-wide/16 v20, 0x0

    .line 3799
    .restart local v20    # "maxFileSize":J
    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v39, v14

    .line 3800
    .local v39, "owner":Landroid/os/UserHandle;
    const/4 v14, 0x0

    .line 3801
    .local v14, "uuid":Ljava/lang/String;
    const-string/jumbo v17, "removed"

    .line 3803
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

    .line 3808
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

    .line 3765
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

    .line 3676
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

    .line 3677
    throw v0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 4
    .param p1, "flags"    # I

    .line 3835
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3836
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeRecord;

    .line 3837
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3838
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    aput-object v3, v1, v2

    .line 3837
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3840
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3841
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

    .line 3824
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3825
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    .line 3826
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3827
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    aput-object v3, v1, v2

    .line 3826
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3829
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3830
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

    .line 3151
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->isConvertibleToFbe()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3156
    :catch_0
    move-exception v0

    .line 3157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3158
    const/4 v1, 0x0

    return v1
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .line 2886
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2887
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2888
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2889
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

    .line 3375
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v1, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$connectStoraged$3$StorageManagerService()V
    .locals 0

    .line 1953
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 1954
    return-void
.end method

.method public synthetic lambda$connectVold$4$StorageManagerService()V
    .locals 0

    .line 1991
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 1992
    return-void
.end method

.method public synthetic lambda$decryptStorage$6$StorageManagerService()V
    .locals 2

    .line 2964
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->fdeRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2967
    goto :goto_0

    .line 2965
    :catch_0
    move-exception v0

    .line 2966
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2968
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public synthetic lambda$handleSystemReady$0$StorageManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 940
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 941
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshFuseSettings()V

    .line 942
    return-void
.end method

.method public synthetic lambda$onVolumeStateChangedLocked$2$StorageManagerService(Landroid/os/storage/VolumeInfo;I)V
    .locals 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "userId"    # I

    .line 1614
    const/4 v0, 0x0

    .line 1618
    .local v0, "pidPkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    const-string v3, "StorageManagerService"

    if-ge v1, v2, :cond_0

    .line 1620
    :try_start_0
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 1621
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityManagerInternal;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1622
    goto :goto_1

    .line 1623
    :catch_0
    move-exception v2

    .line 1624
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v4, "Some processes are starting, retry"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1618
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1629
    .end local v1    # "i":I
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 1630
    invoke-direct {p0, v0, p2}, Lcom/android/server/StorageManagerService;->remountAppStorageDirs(Ljava/util/Map;I)V

    goto :goto_2

    .line 1632
    :cond_1
    const-string v1, "Not able to getStorageNotOptimizedProcesses() after 5 retries"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :goto_2
    return-void
.end method

.method public synthetic lambda$resetIfBootedAndConnected$1$StorageManagerService()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1109
    return-void
.end method

.method public synthetic lambda$setDebugFlags$5$StorageManagerService()V
    .locals 2

    .line 2743
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 2744
    return-void
.end method

.method public lastMaintenance()J
    .locals 2

    .line 1297
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 3359
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->lockUserKey(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3366
    nop

    .line 3368
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3369
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v1, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->remove(I)V

    .line 3370
    monitor-exit v0

    .line 3371
    return-void

    .line 3370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3363
    :catch_0
    move-exception v0

    .line 3364
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3365
    return-void
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .line 3576
    const-string v0, ": "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3577
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3578
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

    .line 3581
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    const-string v5, "Failed to prepare "

    if-eqz v4, :cond_9

    .line 3586
    if-nez v2, :cond_1

    const/4 v4, 0x0

    .line 3587
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 3588
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

    .line 3592
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 3594
    .local v4, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v4, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3596
    const/4 v6, 0x0

    .line 3598
    .local v6, "appFile":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v7

    .line 3601
    nop

    .line 3603
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 3604
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3605
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3609
    :cond_2
    sget-object v7, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 3610
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Invalid mkdirs path: "

    if-eqz v8, :cond_8

    .line 3612
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3618
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

    .line 3619
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    iget v8, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-eq v2, v8, :cond_6

    .line 3627
    :cond_4
    const-string v8, "/storage/ace"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    .line 3628
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

    .line 3634
    :cond_6
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v8, p2, v1}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3637
    nop

    .line 3639
    return-void

    .line 3635
    :catch_0
    move-exception v8

    .line 3636
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

    .line 3613
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

    .line 3641
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

    .line 3599
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v5

    .line 3600
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

    .line 3582
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

    .line 4643
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->monitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4646
    goto :goto_0

    .line 4644
    :catch_0
    move-exception v0

    .line 4645
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4647
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;

    .line 2243
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2246
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2250
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    .line 2251
    return-void

    .line 2247
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

    .line 2895
    const-string/jumbo v0, "rawPath cannot be null"

    move-object v9, p1

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2896
    const-string v0, "canonicalPath cannot be null"

    move-object/from16 v10, p2

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2897
    const-string/jumbo v0, "token cannot be null"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2898
    const-string/jumbo v0, "obbIfno cannot be null"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2901
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

    .line 2903
    .local v3, "obbState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v7, Lcom/android/server/StorageManagerService$MountObbAction;

    move-object v1, v7

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;ILandroid/content/res/ObbInfo;)V

    .line 2904
    .local v1, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, v2, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2908
    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .locals 8

    .line 3513
    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3517
    .local v0, "uid":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3518
    const/4 v2, 0x0

    .line 3519
    .local v2, "newlyCreated":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v3, :cond_0

    .line 3520
    new-instance v3, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v3}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 3521
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string v5, "AppFuseBridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3522
    const/4 v2, 0x1

    .line 3525
    :cond_0
    :try_start_1
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3527
    .local v3, "name":I
    :try_start_2
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 3528
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

    .line 3527
    return-object v4

    .line 3529
    :catch_0
    move-exception v4

    .line 3530
    .local v4, "e":Lcom/android/internal/os/FuseUnavailableMountException;
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 3532
    :try_start_4
    const-string v6, "StorageManagerService"

    const-string v7, ""

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3533
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v5

    .line 3536
    :cond_1
    :try_start_6
    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3540
    .end local v3    # "name":I
    .end local v4    # "e":Lcom/android/internal/os/FuseUnavailableMountException;
    nop

    .line 3541
    .end local v2    # "newlyCreated":Z
    :try_start_7
    monitor-exit v1

    goto :goto_0

    .line 3538
    .restart local v2    # "newlyCreated":Z
    :catch_1
    move-exception v3

    .line 3539
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    throw v4

    .line 3541
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

    .line 3209
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3210
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v0

    return v0
.end method

.method public onAwakeStateChanged(Z)V
    .locals 0
    .param p1, "isAwake"    # Z

    .line 1269
    return-void
.end method

.method public onDaemonConnected()V
    .locals 2

    .line 1301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1302
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1303
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .line 1275
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    .line 1276
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

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    invoke-interface {v0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    goto :goto_1

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "mountId"    # I
    .param p2, "fileId"    # I
    .param p3, "mode"    # I

    .line 3554
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

    .line 3558
    const/high16 v0, 0x30000000

    and-int/2addr p3, v0

    .line 3561
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3562
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_0

    .line 3563
    const-string v2, "StorageManagerService"

    const-string v3, "FuseBridge has not been created"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    monitor-exit v1

    return-object v0

    .line 3566
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 3567
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

    .line 3568
    .restart local p0    # "this":Lcom/android/server/StorageManagerService;
    .restart local p1    # "mountId":I
    .restart local p2    # "fileId":I
    .restart local p3    # "mode":I
    :catch_0
    move-exception v1

    .line 3569
    .local v1, "error":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    const-string v3, "The mount point has already been invalid"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3570
    return-object v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .line 2420
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2421
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2423
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2425
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2426
    const-string/jumbo v1, "partitionMixed"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    goto :goto_0

    .line 2427
    :catch_0
    move-exception v1

    .line 2428
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2430
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 2406
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2407
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 2409
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2411
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2412
    const-string/jumbo v1, "partitionPrivate"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2415
    goto :goto_0

    .line 2413
    :catch_0
    move-exception v1

    .line 2414
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2416
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 2393
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2395
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2397
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2398
    const-string/jumbo v1, "partitionPublic"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    goto :goto_0

    .line 2399
    :catch_0
    move-exception v1

    .line 2400
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2402
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

    .line 3411
    const-string v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3413
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(Ljava/lang/String;III)V

    .line 3414
    return-void
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IStorageEventListener;

    .line 2225
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    .line 2226
    return-void
.end method

.method runIdleMaint(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2564
    const-string v0, "StorageManagerService"

    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2571
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->supportsBlockCheckpoint()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2585
    :cond_0
    const-string v1, "Skipping idle maintenance - block based checkpoint in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2572
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    new-instance v2, Lcom/android/server/StorageManagerService$11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Landroid/os/IVold;->runIdleMaint(Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2589
    :goto_1
    goto :goto_2

    .line 2587
    :catch_0
    move-exception v1

    .line 2588
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2590
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public runIdleMaintenance()V
    .locals 1

    .line 2594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 2595
    return-void
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1285
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1286
    return-void
.end method

.method public runMaintenance()V
    .locals 1

    .line 1291
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 1293
    return-void
.end method

.method public setDebugFlags(II)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 2638
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2640
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2645
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2649
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2656
    .local v3, "token":J
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2657
    .local v0, "emulateFbe":Z
    :goto_0
    :try_start_0
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2662
    .end local v0    # "emulateFbe":Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2663
    goto :goto_1

    .line 2662
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2663
    throw v0

    .line 2650
    .end local v3    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2646
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emulation not supported on device with native FBE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2666
    :cond_3
    :goto_1
    and-int/lit8 v0, p2, 0x3

    const/16 v3, 0xa

    if-eqz v0, :cond_6

    .line 2669
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    .line 2670
    const-string v0, "force_on"

    .local v0, "value":Ljava/lang/String;
    goto :goto_2

    .line 2671
    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 2672
    const-string v0, "force_off"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_2

    .line 2674
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    const-string v0, ""

    .line 2677
    .restart local v0    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2679
    .local v4, "token":J
    :try_start_1
    const-string/jumbo v6, "persist.sys.adoptable"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2684
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    goto :goto_3

    .line 2684
    :catchall_1
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    throw v1

    .line 2688
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_6
    :goto_3
    and-int/lit8 v0, p2, 0x18

    if-eqz v0, :cond_9

    .line 2691
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    .line 2692
    const-string v0, "force_on"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_4

    .line 2693
    .end local v0    # "value":Ljava/lang/String;
    :cond_7
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_8

    .line 2694
    const-string v0, "force_off"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_4

    .line 2696
    .end local v0    # "value":Ljava/lang/String;
    :cond_8
    const-string v0, ""

    .line 2699
    .restart local v0    # "value":Ljava/lang/String;
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2701
    .restart local v4    # "token":J
    :try_start_2
    const-string/jumbo v6, "persist.sys.sdcardfs"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2706
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2707
    goto :goto_5

    .line 2706
    :catchall_2
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2707
    throw v1

    .line 2710
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_9
    :goto_5
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_b

    .line 2711
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    move v0, v1

    .line 2713
    .local v0, "enabled":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2715
    .local v1, "token":J
    :try_start_3
    const-string/jumbo v4, "persist.sys.virtual_disk"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2720
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2721
    goto :goto_6

    .line 2720
    :catchall_3
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2721
    throw v3

    .line 2724
    .end local v0    # "enabled":Z
    .end local v1    # "token":J
    :cond_b
    :goto_6
    and-int/lit16 v0, p2, 0xc0

    if-eqz v0, :cond_e

    .line 2727
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_c

    .line 2728
    const/4 v0, 0x1

    .local v0, "value":I
    goto :goto_7

    .line 2729
    .end local v0    # "value":I
    :cond_c
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_d

    .line 2730
    const/4 v0, -0x1

    .restart local v0    # "value":I
    goto :goto_7

    .line 2732
    .end local v0    # "value":I
    :cond_d
    const/4 v0, 0x0

    .line 2735
    .restart local v0    # "value":I
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2737
    .restart local v1    # "token":J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isolated_storage_local"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2739
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->refreshIsolatedStorageSettings()V

    .line 2742
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/-$$Lambda$StorageManagerService$BseoOaqQft6Zl5fkxkPPeceEDjQ;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$StorageManagerService$BseoOaqQft6Zl5fkxkPPeceEDjQ;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2746
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    goto :goto_8

    .line 2746
    :catchall_4
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    throw v3

    .line 2749
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

    .line 3105
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3110
    return-void

    .line 3114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    return-void

    .line 3116
    :catch_0
    move-exception v0

    .line 3117
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3118
    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 2760
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2765
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2766
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2770
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_6

    .line 2773
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2774
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2777
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 2778
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

    .line 2779
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2780
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2781
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

    .line 2782
    const/16 v2, -0xa

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2783
    monitor-exit v0

    return-void

    .line 2785
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 2789
    :cond_1
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "primary_physical"

    .line 2790
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 2798
    :cond_2
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 2799
    .local v2, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 2801
    .local v3, "to":Landroid/os/storage/VolumeInfo;
    const/4 v4, -0x6

    if-nez v2, :cond_3

    .line 2802
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

    .line 2803
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2804
    monitor-exit v0

    return-void

    .line 2805
    :cond_3
    if-nez v3, :cond_4

    .line 2806
    const-string v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failing move due to missing to volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2808
    monitor-exit v0

    return-void

    .line 2811
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2814
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v1, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    new-instance v5, Lcom/android/server/StorageManagerService$13;

    invoke-direct {v5, p0}, Lcom/android/server/StorageManagerService$13;-><init>(Lcom/android/server/StorageManagerService;)V

    invoke-interface {v0, v1, v4, v5}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2829
    goto :goto_1

    .line 2827
    :catch_0
    move-exception v0

    .line 2828
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2830
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2791
    .end local v2    # "from":Landroid/os/storage/VolumeInfo;
    .end local v3    # "to":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :goto_2
    :try_start_2
    const-string v2, "StorageManagerService"

    const-string v3, "Skipping move to/from primary physical"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2793
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2794
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2795
    monitor-exit v0

    return-void

    .line 2771
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Move already in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/StorageManagerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "callback":Landroid/content/pm/IPackageMoveObserver;
    throw v1

    .line 2767
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

    .line 2811
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

    .line 2434
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2436
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2438
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2439
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2440
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$5000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2441
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2442
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2443
    return-void

    .line 2442
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

    .line 2447
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2449
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2451
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 2452
    .local v1, "rec":Landroid/os/storage/VolumeRecord;
    iget v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v2, v3

    and-int v3, p2, p3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2453
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$5000(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2454
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2455
    .end local v1    # "rec":Landroid/os/storage/VolumeRecord;
    monitor-exit v0

    .line 2456
    return-void

    .line 2455
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

    .line 2235
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2237
    const-string v0, "StorageManagerService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2239
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

    .line 3182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3183
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3185
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "no permission to start filesystem checkpoint"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3188
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v1, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 3189
    return-void
.end method

.method public supportsCheckpoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3169
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

    .line 3335
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    .line 3336
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

    .line 3340
    const-string v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3342
    if-eqz v0, :cond_2

    .line 3344
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 3345
    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Ljava/lang/String;

    move-result-object v3

    .line 3344
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/os/IVold;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3349
    goto :goto_2

    .line 3346
    :catch_0
    move-exception v1

    .line 3347
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3348
    return-void

    .line 3352
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3353
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedLockedUsers;

    invoke-virtual {v2, p1}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->append(I)V

    .line 3354
    monitor-exit v1

    .line 3355
    return-void

    .line 3354
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

    .line 2311
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2313
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2314
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    .line 2315
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 11
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .line 2912
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2915
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2916
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2917
    .local v1, "existingState":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    if-eqz v1, :cond_0

    .line 2921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2922
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

    .line 2924
    .local v2, "newState":Lcom/android/server/StorageManagerService$ObbState;
    new-instance v3, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 2925
    .local v3, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2929
    .end local v0    # "callingUid":I
    .end local v2    # "newState":Lcom/android/server/StorageManagerService$ObbState;
    .end local v3    # "action":Lcom/android/server/StorageManagerService$ObbAction;
    goto :goto_0

    .line 2930
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

    .line 2932
    :goto_0
    return-void

    .line 2917
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

    .line 2230
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    .line 2231
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

    .line 3057
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "no permission to access the crypt keeper"

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    .line 3061
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3073
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {v0, p1}, Landroid/os/IVold;->fdeVerifyPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3074
    const/4 v0, 0x0

    return v0

    .line 3075
    :catch_0
    move-exception v0

    .line 3076
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3077
    const/4 v1, -0x1

    return v1

    .line 3065
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3058
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
