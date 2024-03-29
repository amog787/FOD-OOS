.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$Injector;,
        Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;,
        Lcom/android/server/pm/permission/PermissionManagerService$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackgroundPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

.field private final mContext:Landroid/content/Context;

.field private mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

.field private mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

.field private mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

.field private mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field private final mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

.field private final mOneTimePermissionUserManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 203
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    .line 208
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 226
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalLock"    # Ljava/lang/Object;

    .line 390
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/permission/PermissionManagerService$Injector;)V

    .line 391
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/permission/PermissionManagerService$Injector;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalLock"    # Ljava/lang/Object;
    .param p3, "injector"    # Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 395
    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

    .line 245
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 266
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 267
    nop

    .line 268
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 300
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 396
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 398
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->invalidatePackageInfoCache()V

    .line 399
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->disablePermissionCache()V

    .line 400
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->disablePackageNamePermissionCache()V

    .line 402
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 403
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 404
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 405
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 406
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 407
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 409
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManager"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 411
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 412
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 413
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 415
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 416
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 417
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 418
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 419
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 420
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    .line 424
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    .line 425
    .local v1, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 426
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 427
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 428
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 429
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_0

    .line 430
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v3}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 431
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 433
    :cond_0
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_1

    .line 434
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 426
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    .end local v4    # "i":I
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    .line 441
    .local v2, "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 442
    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 443
    return-void

    .line 437
    .end local v2    # "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 191
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # [I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 191
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/List;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # I

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 191
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;IIZZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 191
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BLandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 191
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # I

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    return-void
.end method

.method private addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 2408
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2409
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2410
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "PackageManager"

    if-ge v2, v0, :cond_7

    .line 2411
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 2412
    .local v4, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 2413
    .local v5, "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2414
    .local v6, "curPackageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2415
    .local v7, "isPackageUpdate":Z
    const/16 v8, 0x100

    const/16 v9, 0x20

    if-eqz v5, :cond_3

    if-eqz v7, :cond_1

    goto :goto_3

    .line 2429
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2429
    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    if-eqz p2, :cond_6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_6

    .line 2433
    if-nez v1, :cond_2

    .line 2434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_2

    .line 2436
    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2438
    :goto_2
    const-string v3, "DUP:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2416
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    if-eqz p2, :cond_6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_6

    .line 2418
    if-nez v1, :cond_4

    .line 2419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_4

    .line 2421
    :cond_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2423
    :goto_4
    if-eqz v7, :cond_5

    .line 2424
    const-string v3, "UPD:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    :cond_5
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    .end local v4    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v5    # "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v6    # "curPackageName":Ljava/lang/String;
    .end local v7    # "isPackageUpdate":Z
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2443
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_8

    .line 2444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Permission Groups: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    :cond_8
    return-void
.end method

.method private addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 10
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 2368
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2369
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2370
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2373
    .local v2, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v3

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2375
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2380
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x16

    if-le v3, v4, :cond_0

    .line 2381
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    invoke-virtual {v2, v3}, Landroid/content/pm/parsing/component/ParsedPermission;->setParsedPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2383
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_0

    .line 2384
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2385
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2386
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in an unknown group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2385
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->isTree()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2391
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2393
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2394
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v7

    .line 2391
    move-object v5, v2

    move-object v6, p1

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/parsing/component/ParsedPermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 2395
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 2396
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_1

    .line 2397
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2399
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 2400
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v7

    .line 2397
    move-object v5, v2

    move-object v6, p1

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/parsing/component/ParsedPermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 2401
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 2403
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1
    monitor-exit v9

    .line 2369
    .end local v2    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2403
    .restart local v2    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2405
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_2
    return-void
.end method

.method private addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 2218
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    monitor-exit v0

    .line 2221
    return-void

    .line 2220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .locals 5
    .param p1, "protectionLevel"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2255
    and-int/lit8 v0, p1, 0x3

    .line 2259
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2260
    return p1

    .line 2263
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2264
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 2269
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 2270
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_2

    .line 2271
    return p1

    .line 2273
    :cond_2
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_3

    .line 2274
    return v0

    .line 2277
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2278
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2277
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 2279
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_4

    .line 2280
    return p1

    .line 2282
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 2283
    return p1

    .line 2285
    :cond_5
    return p1

    .line 2266
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6
    :goto_0
    return p1
.end method

.method private backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2158
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2159
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2160
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$oynlBn0BbcU0KODvfUDDUHb5LKY;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/-$$Lambda$oynlBn0BbcU0KODvfUDDUHb5LKY;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2159
    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2163
    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2164
    :catch_0
    move-exception v1

    .line 2165
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2166
    const/4 v2, 0x0

    return-object v2
.end method

.method private static buildInvalidCrossUserOrProfilePermissionMessage(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "requireFullPermission"    # Z
    .param p2, "isSameProfileGroup"    # Z

    .line 4607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4608
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 4609
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4610
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4612
    :cond_0
    const-string v1, "Requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4613
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4614
    const-string v1, "."

    if-eqz p1, :cond_1

    .line 4615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4618
    :cond_1
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4619
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4620
    if-eqz p2, :cond_2

    .line 4621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4622
    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4624
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildInvalidCrossUserPermissionMessage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "requireFullPermission"    # Z

    .line 4588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4589
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 4590
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4591
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4593
    :cond_0
    const-string v1, "Requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4594
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4595
    const-string v1, "."

    if-eqz p1, :cond_1

    .line 4596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4599
    :cond_1
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4600
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cacheBackgroundToForegoundPermissionMapping()V
    .locals 7

    .line 4135
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    .line 4139
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    .line 4140
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionsLocked()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 4141
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4142
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 4143
    .local v3, "fgPerm":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v4

    .line 4145
    .local v4, "bgPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4146
    .local v5, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 4147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 4148
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4151
    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4153
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "fgPerm":Ljava/lang/String;
    .end local v4    # "bgPerm":Ljava/lang/String;
    .end local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 4155
    :cond_2
    monitor-exit v0

    .line 4156
    return-void

    .line 4155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 4
    .param p1, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 4630
    const/4 v0, 0x0

    .line 4631
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 4632
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4633
    .end local v2    # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 4634
    :cond_0
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"    # Ljava/lang/String;

    .line 3782
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3783
    return v1

    .line 3787
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3788
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 3792
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3789
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 1377
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1378
    return v0

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v0, v2

    .line 1384
    .local v0, "isCallerPrivileged":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1385
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    .line 1387
    .local v1, "isCallerInstallerOnRecord":Z
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1388
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1392
    :cond_3
    :goto_0
    return v2
.end method

.method private checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;

    .line 1223
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 1225
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v1, :cond_0

    .line 1226
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1229
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isImmutablyRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1230
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1233
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot modify whitelisting of an immutably restricted permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "permName":Ljava/lang/String;
    throw v2

    .line 1236
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "permName":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1237
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I)[I
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "updatedUserIds"    # [I

    .line 3252
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3253
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3254
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0

    .line 3258
    :cond_1
    return-object p3
.end method

.method private checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 922
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 923
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_0

    .line 924
    const/4 v1, -0x1

    return v1

    .line 926
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isPackageExplicit"    # Z
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 931
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 932
    .local v0, "callingUid":I
    const/4 v1, -0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 938
    return v1

    .line 933
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 934
    return v1

    .line 942
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 943
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 944
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 943
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 945
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_3

    .line 946
    return v1

    .line 948
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 950
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-direct {p0, v2, v4, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 951
    return v6

    .line 954
    :cond_4
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 955
    .local v5, "fullerPermissionName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 956
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 957
    return v6

    .line 960
    :cond_5
    return v1
.end method

.method private checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 965
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    const/4 v0, 0x0

    return v0

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 973
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkSingleUidPermissionInternal(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 1031
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1033
    .local v1, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1034
    .end local v1    # "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkUidPermissionImpl(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 999
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1000
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1012
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1013
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1014
    .local v1, "userId":I
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v0

    return v0

    .line 1017
    .end local v1    # "userId":I
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternal(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    return v0

    .line 1021
    :cond_1
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1022
    .local v1, "fullerPermissionName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1023
    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternal(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1024
    return v0

    .line 1027
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalLock"    # Ljava/lang/Object;

    .line 465
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 466
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 467
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    if-eqz v0, :cond_0

    .line 468
    return-object v0

    .line 470
    :cond_0
    nop

    .line 471
    const-string/jumbo v1, "permissionmgr"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerService;

    .line 472
    .local v2, "permissionService":Lcom/android/server/pm/permission/PermissionManagerService;
    if-nez v2, :cond_1

    .line 473
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object v2, v3

    .line 475
    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 477
    :cond_1
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2240
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2241
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2242
    monitor-exit v0

    return-void

    .line 2244
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2245
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2247
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2248
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2250
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 2245
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4528
    if-ltz p2, :cond_3

    .line 4531
    if-eqz p4, :cond_0

    .line 4532
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Landroid/os/UserManagerInternal;Ljava/lang/String;II)V

    .line 4535
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4536
    .local v0, "callingUserId":I
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4538
    return-void

    .line 4540
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isSameProfileGroup(II)Z

    move-result v1

    .line 4541
    .local v1, "isSameProfileGroup":Z
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4546
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4541
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v2, v5, v3, p1, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4548
    return-void

    .line 4550
    :cond_2
    invoke-static {p5, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserOrProfilePermissionMessage(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 4552
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4529
    .end local v0    # "callingUserId":I
    .end local v1    # "isSameProfileGroup":Z
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 4482
    if-ltz p2, :cond_5

    .line 4485
    if-eqz p4, :cond_0

    .line 4486
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Landroid/os/UserManagerInternal;Ljava/lang/String;II)V

    .line 4489
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4490
    .local v0, "callingUserId":I
    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4493
    return-void

    .line 4498
    :cond_1
    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-nez p2, :cond_4

    .line 4500
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 4501
    :cond_3
    return-void

    .line 4505
    :cond_4
    invoke-static {p6, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserPermissionMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4507
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4483
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 4460
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4462
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4464
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4466
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4471
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 4449
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4451
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4453
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4457
    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 4641
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 4642
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 4643
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 4644
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4647
    .end local v0    # "curTreeSize":I
    :cond_1
    :goto_0
    return-void
.end method

.method private getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 516
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 517
    return-object v1

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 521
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 522
    monitor-exit v0

    return-object v1

    .line 524
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 525
    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .locals 6
    .param p1, "userId"    # I

    .line 3358
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 3360
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 3361
    .local v1, "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    if-eqz v1, :cond_0

    .line 3362
    monitor-exit v0

    return-object v1

    .line 3364
    :cond_0
    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 3365
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 3366
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3368
    invoke-virtual {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->registerUninstallListener()V

    .line 3369
    return-object v1

    .line 3367
    .end local v1    # "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getPackagesWithAutoRevokePolicy(II)Ljava/util/List;
    .locals 3
    .param p1, "autoRevokePolicy"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3416
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3420
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;

    invoke-direct {v2, p1, v0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 3425
    return-object v0
.end method

.method private getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 669
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 670
    return v1

    .line 673
    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 674
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 681
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_1

    .line 682
    return v1

    .line 684
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 685
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 686
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2

    .line 687
    return v1

    .line 689
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 690
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    if-nez v4, :cond_3

    .line 691
    monitor-exit v3

    return v1

    .line 693
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 695
    return v1

    .line 697
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 698
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 693
    .end local v1    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;

    .line 3767
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 3768
    .local v0, "sourcePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    return-object v1
.end method

.method private getSourcePackageSigningDetails(Lcom/android/server/pm/permission/BasePermission;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;

    .line 3758
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 3759
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 3760
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v1

    .line 3762
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method private static getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4710
    if-nez p0, :cond_0

    .line 4711
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 4713
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4714
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4715
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 4717
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4720
    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3825
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v8, p2, v1

    .line 3826
    .local v8, "userId":I
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3825
    .end local v8    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3829
    :cond_0
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 22
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3833
    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3834
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3833
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 3835
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_0

    .line 3836
    return-void

    .line 3839
    :cond_0
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 3841
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v15, 0x14

    .line 3844
    .local v15, "immutableFlags":I
    const/16 v16, 0x48

    .line 3847
    .local v16, "compatFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    .line 3850
    .local v17, "supportsRuntimePermissions":Z
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 3852
    .local v18, "instantApp":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 3854
    .local v9, "permission":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3855
    :try_start_0
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object/from16 v19, v2

    .line 3856
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3857
    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    if-eqz v18, :cond_3

    .line 3858
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3
    if-nez v17, :cond_4

    .line 3859
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_4
    if-eqz v12, :cond_5

    .line 3861
    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3862
    :cond_5
    invoke-virtual {v14, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v20

    .line 3863
    .local v20, "flags":I
    if-eqz v17, :cond_6

    .line 3865
    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_9

    .line 3866
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    .line 3872
    :cond_6
    and-int/lit8 v1, v20, 0x48

    if-eqz v1, :cond_7

    .line 3873
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .local v21, "permission":Ljava/lang/String;
    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    .line 3872
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .restart local v21    # "permission":Ljava/lang/String;
    goto :goto_2

    .line 3857
    .end local v20    # "flags":I
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_8
    move-object/from16 v21, v9

    .line 3878
    .end local v9    # "permission":Ljava/lang/String;
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_9
    :goto_2
    goto :goto_1

    .line 3856
    .restart local v9    # "permission":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .restart local v21    # "permission":Ljava/lang/String;
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 3879
    .end local v21    # "permission":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 16
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1438
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return-void

    .line 1443
    :cond_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1453
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1454
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1456
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_17

    if-nez v2, :cond_1

    move/from16 v5, p4

    goto/16 :goto_3

    .line 1461
    :cond_1
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1462
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v4, v0

    .line 1463
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1464
    if-eqz v4, :cond_16

    .line 1467
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v5, p4

    invoke-virtual {v0, v1, v5, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1471
    invoke-virtual {v4, v1, v2}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 1477
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v3, 0x17

    if-ge v0, v3, :cond_2

    .line 1478
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1479
    return-void

    .line 1482
    :cond_2
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1484
    .local v6, "uid":I
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1486
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 1487
    .local v13, "flags":I
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_3

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant system fixed permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return-void

    .line 1492
    :cond_3
    if-nez p3, :cond_4

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_4

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant policy fixed permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    return-void

    .line 1498
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    and-int/lit16 v0, v13, 0x3800

    if-nez v0, :cond_5

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return-void

    .line 1505
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 1506
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 1505
    invoke-static {v0, v14, v1, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v0

    .line 1507
    invoke-virtual {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant soft restricted permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return-void

    .line 1513
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_8

    .line 1516
    invoke-virtual {v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_7

    .line 1518
    if-eqz v12, :cond_7

    .line 1519
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 1522
    :cond_7
    return-void

    .line 1525
    :cond_8
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 1526
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_a
    :goto_0
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v3, :cond_b

    .line 1531
    const-string v0, "PackageManager"

    const-string v3, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return-void

    .line 1535
    :cond_b
    invoke-virtual {v7, v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3

    .line 1536
    .local v3, "result":I
    if-eq v3, v14, :cond_14

    const/4 v0, 0x1

    if-eq v3, v0, :cond_c

    goto :goto_1

    .line 1542
    :cond_c
    if-eqz v12, :cond_d

    .line 1543
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 1549
    :cond_d
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1550
    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1553
    :cond_e
    if-eqz v12, :cond_f

    .line 1554
    invoke-virtual {v12, v6, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 1557
    :cond_f
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1558
    invoke-direct {v8, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1564
    :cond_10
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1565
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1566
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1568
    .local v14, "token":J
    :try_start_1
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1569
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1571
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v0, v6, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1574
    .end local v0    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_12
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1575
    nop

    .line 1578
    .end local v14    # "token":J
    :cond_13
    return-void

    .line 1574
    .restart local v14    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1575
    throw v0

    .line 1538
    .end local v14    # "token":J
    :cond_14
    return-void

    .line 1468
    .end local v3    # "result":I
    .end local v6    # "uid":I
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "flags":I
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_16
    move/from16 v5, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_1
    move-exception v0

    move/from16 v5, p4

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1456
    :cond_17
    move/from16 v5, p4

    .line 1457
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .locals 22
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p5, "origPermissions"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 3473
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v3

    .line 3474
    .local v3, "oemPermission":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    .line 3475
    .local v4, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    .line 3476
    .local v5, "privilegedPermission":Z
    :goto_1
    sget-boolean v8, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 3478
    .local v8, "privappPermissionsDisable":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3479
    .local v9, "platformPermission":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 3488
    .local v10, "platformPackage":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v11

    .line 3489
    .local v11, "systemApp":Z
    const-string v12, "PackageManager"

    if-nez v8, :cond_f

    if-eqz v5, :cond_f

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v13

    if-eqz v13, :cond_f

    if-eqz v11, :cond_f

    if-nez v10, :cond_f

    if-eqz v9, :cond_f

    .line 3492
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 3494
    iget-boolean v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v13, :cond_d

    .line 3496
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v13

    if-nez v13, :cond_c

    .line 3497
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v13

    .line 3498
    .local v13, "apexMgr":Lcom/android/server/pm/ApexManager;
    invoke-virtual {v13, v2}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v14

    .line 3502
    .local v14, "apexContainingPkg":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 3503
    invoke-virtual {v13, v14, v6}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 3502
    invoke-static {v15}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v20, v8

    const/4 v6, 0x0

    goto/16 :goto_6

    .line 3506
    :cond_3
    :goto_2
    const/4 v15, 0x0

    .line 3507
    .local v15, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 3508
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v6

    .line 3509
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v6

    .end local v15    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v6, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_3

    .line 3510
    .end local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3511
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v6

    .line 3512
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v6

    .end local v15    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_3

    .line 3513
    .end local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3514
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v6

    .line 3515
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v6

    .end local v15    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_3

    .line 3517
    .end local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v6

    .line 3518
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v6

    .line 3520
    .end local v15    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_3
    if-eqz v6, :cond_8

    .line 3521
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v7, 0x1

    .line 3522
    .local v7, "permissionViolation":Z
    :goto_5
    if-eqz v7, :cond_b

    .line 3523
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    .end local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v18, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v6, "Privileged permission "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for package "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3524
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v7

    .end local v7    # "permissionViolation":Z
    .local v19, "permissionViolation":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") not in privapp-permissions whitelist"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3523
    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    sget-boolean v7, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v7, :cond_a

    .line 3528
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v7, :cond_9

    .line 3529
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 3531
    :cond_9
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3532
    move/from16 v20, v8

    .end local v8    # "privappPermissionsDisable":Z
    .local v20, "privappPermissionsDisable":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3531
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_6

    .line 3527
    .end local v20    # "privappPermissionsDisable":Z
    .restart local v8    # "privappPermissionsDisable":Z
    :cond_a
    move/from16 v20, v8

    .end local v8    # "privappPermissionsDisable":Z
    .restart local v20    # "privappPermissionsDisable":Z
    const/4 v6, 0x0

    goto :goto_6

    .line 3536
    .end local v18    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "permissionViolation":Z
    .end local v20    # "privappPermissionsDisable":Z
    .restart local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "permissionViolation":Z
    .restart local v8    # "privappPermissionsDisable":Z
    :cond_b
    move-object/from16 v18, v6

    .end local v6    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v18    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    return v6

    .line 3496
    .end local v7    # "permissionViolation":Z
    .end local v13    # "apexMgr":Lcom/android/server/pm/ApexManager;
    .end local v14    # "apexContainingPkg":Ljava/lang/String;
    .end local v18    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c
    move/from16 v20, v8

    const/4 v6, 0x0

    .end local v8    # "privappPermissionsDisable":Z
    .restart local v20    # "privappPermissionsDisable":Z
    goto :goto_6

    .line 3494
    .end local v20    # "privappPermissionsDisable":Z
    .restart local v8    # "privappPermissionsDisable":Z
    :cond_d
    move/from16 v20, v8

    const/4 v6, 0x0

    .line 3540
    .end local v8    # "privappPermissionsDisable":Z
    .restart local v20    # "privappPermissionsDisable":Z
    :goto_6
    sget-boolean v7, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v7, :cond_10

    .line 3541
    return v6

    .line 3492
    .end local v20    # "privappPermissionsDisable":Z
    .restart local v8    # "privappPermissionsDisable":Z
    :cond_e
    move/from16 v20, v8

    .end local v8    # "privappPermissionsDisable":Z
    .restart local v20    # "privappPermissionsDisable":Z
    goto :goto_7

    .line 3489
    .end local v20    # "privappPermissionsDisable":Z
    .restart local v8    # "privappPermissionsDisable":Z
    :cond_f
    move/from16 v20, v8

    .line 3546
    .end local v8    # "privappPermissionsDisable":Z
    .restart local v20    # "privappPermissionsDisable":Z
    :cond_10
    :goto_7
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3548
    .local v6, "systemPackageName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3549
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 3558
    .local v7, "systemPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 3559
    move-object/from16 v8, p4

    invoke-direct {v0, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/BasePermission;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    .line 3560
    .local v13, "sourceSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 3561
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 3563
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    .line 3562
    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v14

    if-nez v14, :cond_13

    .line 3565
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 3566
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    .line 3567
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v15

    .line 3566
    move-object/from16 v19, v6

    const/4 v6, 0x4

    .end local v6    # "systemPackageName":Ljava/lang/String;
    .local v19, "systemPackageName":Ljava/lang/String;
    invoke-virtual {v14, v15, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    goto :goto_9

    .line 3565
    .end local v19    # "systemPackageName":Ljava/lang/String;
    .restart local v6    # "systemPackageName":Ljava/lang/String;
    :cond_12
    move-object/from16 v19, v6

    .end local v6    # "systemPackageName":Ljava/lang/String;
    .restart local v19    # "systemPackageName":Ljava/lang/String;
    goto :goto_8

    .line 3562
    .end local v19    # "systemPackageName":Ljava/lang/String;
    .restart local v6    # "systemPackageName":Ljava/lang/String;
    :cond_13
    move-object/from16 v19, v6

    .end local v6    # "systemPackageName":Ljava/lang/String;
    .restart local v19    # "systemPackageName":Ljava/lang/String;
    goto :goto_8

    .line 3561
    .end local v19    # "systemPackageName":Ljava/lang/String;
    .restart local v6    # "systemPackageName":Ljava/lang/String;
    :cond_14
    move-object/from16 v19, v6

    .line 3566
    .end local v6    # "systemPackageName":Ljava/lang/String;
    .restart local v19    # "systemPackageName":Ljava/lang/String;
    :goto_8
    const/4 v6, 0x1

    .line 3573
    .local v6, "allowed":Z
    :goto_9
    const/4 v14, 0x1

    new-array v15, v14, [I

    const/4 v14, 0x0

    aput v14, v15, v14

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    const-string v15, " to get permission "

    move-object/from16 v18, v7

    .end local v7    # "systemPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .local v18, "systemPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v7, "Allowing package "

    if-eqz v14, :cond_17

    .line 3574
    if-nez v6, :cond_16

    .line 3575
    invoke-static {v2, v1}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->allowOrdinaryAppGrantingSigPerms(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 3576
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v6

    .end local v6    # "allowed":Z
    .local v21, "allowed":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    const/4 v6, 0x1

    .end local v21    # "allowed":Z
    .restart local v6    # "allowed":Z
    goto :goto_b

    .line 3575
    :cond_15
    move/from16 v21, v6

    .end local v6    # "allowed":Z
    .restart local v21    # "allowed":Z
    goto :goto_a

    .line 3574
    .end local v21    # "allowed":Z
    .restart local v6    # "allowed":Z
    :cond_16
    move/from16 v21, v6

    .end local v6    # "allowed":Z
    .restart local v21    # "allowed":Z
    goto :goto_a

    .line 3573
    .end local v21    # "allowed":Z
    .restart local v6    # "allowed":Z
    :cond_17
    move/from16 v21, v6

    .line 3584
    .end local v6    # "allowed":Z
    .restart local v21    # "allowed":Z
    :goto_a
    move/from16 v6, v21

    .end local v21    # "allowed":Z
    .restart local v6    # "allowed":Z
    :goto_b
    const/4 v14, 0x1

    new-array v8, v14, [I

    const/16 v14, 0xb7

    const/16 v17, 0x0

    aput v14, v8, v17

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3585
    if-nez v6, :cond_18

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v2, v1}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->allowCarrierAppGrantingSigPerms(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3586
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    const/4 v6, 0x1

    .line 3592
    :cond_18
    if-nez v6, :cond_25

    if-nez v5, :cond_19

    if-eqz v3, :cond_25

    .line 3593
    :cond_19
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 3596
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 3597
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3598
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 3599
    .local v7, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-nez v7, :cond_1a

    const/4 v8, 0x0

    goto :goto_c

    :cond_1a
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3600
    .local v8, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_c
    if-eqz v7, :cond_1d

    .line 3601
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 3605
    if-eqz v5, :cond_1b

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v14

    if-nez v14, :cond_1c

    :cond_1b
    if-eqz v3, :cond_20

    .line 3606
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 3607
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 3608
    :cond_1c
    const/4 v6, 0x1

    goto :goto_d

    .line 3617
    :cond_1d
    if-eqz v7, :cond_20

    if-eqz v8, :cond_20

    .line 3618
    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    if-eqz v5, :cond_1e

    .line 3619
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v14

    if-nez v14, :cond_1f

    :cond_1e
    if-eqz v3, :cond_20

    .line 3620
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 3621
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 3622
    :cond_1f
    const/4 v6, 0x1

    .line 3625
    .end local v7    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_20
    :goto_d
    goto :goto_f

    .line 3626
    :cond_21
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3627
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3626
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 3628
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_22

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v8

    if-nez v8, :cond_23

    :cond_22
    if-eqz v3, :cond_24

    .line 3629
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 3630
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    :cond_23
    const/4 v8, 0x1

    goto :goto_e

    :cond_24
    const/4 v8, 0x0

    :goto_e
    move v6, v8

    .line 3635
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_f
    if-eqz v6, :cond_25

    if-eqz v5, :cond_25

    if-nez v4, :cond_25

    .line 3636
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 3637
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be granted to privileged vendor apk "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3637
    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    const/4 v6, 0x0

    .line 3644
    :cond_25
    if-nez v6, :cond_35

    .line 3645
    if-nez v6, :cond_26

    .line 3646
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 3647
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x17

    if-ge v7, v8, :cond_26

    .line 3651
    const/4 v6, 0x1

    .line 3656
    :cond_26
    if-nez v6, :cond_27

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v8, 0x2

    .line 3657
    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v7

    .line 3659
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3657
    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v8, 0x6

    .line 3660
    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v7

    .line 3662
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3659
    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 3665
    :cond_28
    const/4 v6, 0x1

    .line 3667
    :cond_29
    if-nez v6, :cond_2a

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v7

    if-eqz v7, :cond_2a

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v8, 0x3

    .line 3668
    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v7

    .line 3670
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3668
    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 3673
    const/4 v6, 0x1

    .line 3675
    :cond_2a
    if-nez v6, :cond_2b

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 3676
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 3678
    const/4 v6, 0x1

    .line 3680
    :cond_2b
    if-nez v6, :cond_2c

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 3683
    move-object/from16 v7, p5

    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    goto :goto_10

    .line 3680
    :cond_2c
    move-object/from16 v7, p5

    .line 3685
    :goto_10
    if-nez v6, :cond_2d

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3686
    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3688
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3686
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 3691
    const/4 v6, 0x1

    .line 3693
    :cond_2d
    if-nez v6, :cond_2e

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v8

    if-eqz v8, :cond_2e

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x5

    .line 3694
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3696
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3694
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 3698
    const/4 v6, 0x1

    .line 3700
    :cond_2e
    if-nez v6, :cond_2f

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isConfigurator()Z

    move-result v8

    if-eqz v8, :cond_2f

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v12, 0x9

    .line 3701
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3703
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3701
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 3705
    const/4 v6, 0x1

    .line 3707
    :cond_2f
    if-nez v6, :cond_30

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isWellbeing()Z

    move-result v8

    if-eqz v8, :cond_30

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x7

    .line 3708
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3710
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3708
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 3712
    const/4 v6, 0x1

    .line 3714
    :cond_30
    if-nez v6, :cond_31

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isDocumenter()Z

    move-result v8

    if-eqz v8, :cond_31

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v12, 0x8

    .line 3715
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3717
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3715
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 3720
    const/4 v6, 0x1

    .line 3722
    :cond_31
    if-nez v6, :cond_32

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isIncidentReportApprover()Z

    move-result v8

    if-eqz v8, :cond_32

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v12, 0xa

    .line 3723
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3725
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3723
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 3728
    const/4 v6, 0x1

    .line 3730
    :cond_32
    if-nez v6, :cond_33

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isAppPredictor()Z

    move-result v8

    if-eqz v8, :cond_33

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v12, 0xb

    .line 3731
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3733
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3731
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 3735
    const/4 v6, 0x1

    .line 3737
    :cond_33
    if-nez v6, :cond_34

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isCompanion()Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v12, 0xe

    .line 3738
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3740
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3738
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 3742
    const/4 v6, 0x1

    .line 3744
    :cond_34
    if-nez v6, :cond_36

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isRetailDemo()Z

    move-result v8

    if-eqz v8, :cond_36

    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v12, 0xf

    .line 3745
    const/4 v14, 0x0

    invoke-virtual {v8, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v8

    .line 3747
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3745
    invoke-static {v8, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 3747
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/pm/permission/PermissionManagerService;->isProfileOwner(I)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 3749
    const/4 v6, 0x1

    goto :goto_11

    .line 3644
    :cond_35
    move-object/from16 v7, p5

    .line 3752
    :cond_36
    :goto_11
    return v6
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 4559
    const/4 v0, 0x1

    if-nez p5, :cond_0

    if-ne p3, p2, :cond_0

    .line 4560
    return v0

    .line 4562
    :cond_0
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 4565
    :cond_1
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_2

    .line 4566
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4568
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4569
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 4568
    :goto_1
    return v0

    .line 4563
    :cond_5
    :goto_2
    return v0
.end method

.method private static hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;

    .line 4725
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4726
    return v1

    .line 4729
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4730
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4731
    return v2

    .line 4729
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4734
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 4573
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3454
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3456
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3457
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3459
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3460
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3462
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 3463
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3462
    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 3465
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 3468
    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 7
    .param p2, "newPerm"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "I)V"
        }
    .end annotation

    .line 3204
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3205
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3206
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 3208
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3209
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 3210
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3211
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3212
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 3220
    :cond_0
    if-nez v1, :cond_3

    .line 3221
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2

    .line 3213
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 3214
    const/4 v2, 0x0

    .line 3217
    :cond_2
    const/4 v1, 0x1

    .line 3218
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    .line 3209
    .end local v5    # "sourcePerm":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3226
    .end local v4    # "i":I
    :cond_4
    if-eqz v1, :cond_6

    .line 3227
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_5

    .line 3228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " inherits runtime perm grant from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 3236
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3237
    return-void
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 6
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3429
    const/4 v0, 0x0

    .line 3430
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 3431
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3432
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 3434
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3435
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_0

    .line 3436
    const/4 v0, 0x1

    .line 3437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3437
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    goto :goto_1

    .line 3431
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3442
    .end local v2    # "ip":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isPackageRequestingPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permission"    # Ljava/lang/String;

    .line 3813
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3814
    .local v0, "permCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3815
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3816
    .local v2, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3817
    const/4 v3, 0x1

    return v3

    .line 3814
    .end local v2    # "requestedPermission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3820
    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 3798
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 3799
    return v1

    .line 3803
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3804
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3803
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 3805
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 3806
    return v1

    .line 3808
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 3809
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2
.end method

.method private static isProfileOwner(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 3772
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3773
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3774
    .local v0, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    .line 3775
    const/4 v1, -0x1

    .line 3776
    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    .line 3775
    return v1

    .line 3778
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSameProfileGroup(II)Z
    .locals 3
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 4578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4580
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4582
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4580
    return v2

    .line 4582
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4583
    throw v2
.end method

.method public static killUid(IILjava/lang/String;)V
    .locals 4
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_0

    .line 493
    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception v3

    .line 499
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    nop

    .line 501
    return-void

    .line 499
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    throw v2
.end method

.method public static synthetic lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$eApyRxwI3JHTSVAxV9EbP43gFOo(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getPackagesWithAutoRevokePolicy$10(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1
    .param p0, "autoRevokePolicy"    # I
    .param p1, "result"    # Ljava/util/List;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3421
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAutoRevokePermissions()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 3422
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3424
    :cond_0
    return-void
.end method

.method public static synthetic lambda$iwnRBDwjg4K5iRGbRU5_sVt0zaU(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$resetRuntimePermissionsInternal$2(II)V
    .locals 2
    .param p0, "revocationUID"    # I
    .param p1, "revocationUserId"    # I

    .line 1893
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4745
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4746
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 4747
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4749
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4750
    return-void
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2232
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    .line 2234
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2233
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2232
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2235
    return-void
.end method

.method private removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 2450
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2451
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2452
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2453
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2454
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2455
    .local v4, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/BasePermission;

    .line 2456
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_0

    .line 2457
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    move-object v5, v6

    .line 2459
    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2460
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/parsing/component/ParsedPermission;)V

    .line 2461
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    .line 2462
    if-nez v2, :cond_1

    .line 2463
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v6

    goto :goto_1

    .line 2465
    :cond_1
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2467
    :goto_1
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2471
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 2472
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 2473
    .local v6, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 2474
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2453
    .end local v4    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2478
    .end local v3    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 2479
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_5

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 2483
    const/4 v2, 0x0

    .line 2484
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_7

    .line 2485
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2486
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2487
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 2488
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    .line 2489
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2490
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2491
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2496
    .end local v3    # "i":I
    :cond_7
    if-eqz v2, :cond_8

    .line 2497
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_8

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    :cond_8
    monitor-exit v0

    .line 2500
    return-void

    .line 2499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 2225
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2226
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2227
    monitor-exit v0

    .line 2228
    return-void

    .line 2227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 27
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 1724
    move-object/from16 v15, p0

    move/from16 v13, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1727
    .local v12, "packageName":Ljava/lang/String;
    const v16, 0x1004b

    .line 1733
    .local v16, "userSettableMask":I
    const/16 v17, 0x14

    .line 1737
    .local v17, "policyOrSystemFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v11

    .line 1738
    .local v11, "permissionCount":I
    const/4 v0, 0x1

    new-array v10, v0, [Z

    .line 1739
    .local v10, "permissionRemoved":[Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v1

    .line 1740
    .local v9, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1741
    .local v4, "syncUpdatedUsers":Landroid/util/IntArray;
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1743
    .local v5, "asyncUpdatedUsers":Landroid/util/IntArray;
    new-instance v14, Lcom/android/server/pm/permission/PermissionManagerService$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V

    .line 1803
    .local v14, "delayingPermCallback":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_c

    .line 1804
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1806
    .local v3, "permName":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1807
    :try_start_0
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    move-object/from16 v18, v7

    .line 1808
    .local v18, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    if-nez v18, :cond_0

    .line 1810
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1813
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1814
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1818
    :cond_1
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1819
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1818
    invoke-virtual {v6, v7, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 1820
    .local v8, "pkgNames":[Ljava/lang/String;
    array-length v6, v8

    if-lez v6, :cond_5

    .line 1821
    const/4 v6, 0x0

    .line 1822
    .local v6, "used":Z
    array-length v7, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_4

    aget-object v2, v8, v0

    .line 1823
    .local v2, "sharedPkgName":Ljava/lang/String;
    move/from16 v20, v6

    .end local v6    # "used":Z
    .local v20, "used":Z
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1824
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1825
    .local v6, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_2

    move-object/from16 v21, v2

    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .local v21, "sharedPkgName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1826
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1827
    const/4 v0, 0x1

    .line 1828
    .end local v20    # "used":Z
    .local v0, "used":Z
    move v6, v0

    goto :goto_2

    .line 1825
    .end local v0    # "used":Z
    .end local v21    # "sharedPkgName":Ljava/lang/String;
    .restart local v2    # "sharedPkgName":Ljava/lang/String;
    .restart local v20    # "used":Z
    :cond_2
    move-object/from16 v21, v2

    .line 1822
    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .end local v6    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v20

    goto :goto_1

    .end local v20    # "used":Z
    .local v6, "used":Z
    :cond_4
    move/from16 v20, v6

    .line 1831
    :goto_2
    if-eqz v6, :cond_5

    .line 1832
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_5

    .line 1836
    .end local v6    # "used":Z
    :cond_5
    const/16 v0, 0x3e8

    .line 1837
    invoke-direct {v15, v3, v12, v0, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 1842
    .local v0, "oldFlags":I
    iget-object v2, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 1843
    .local v2, "uid":I
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v7

    .line 1844
    .local v7, "targetSdk":I
    const/16 v6, 0x17

    if-ge v7, v6, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1845
    const/16 v6, 0x48

    move/from16 v19, v6

    goto :goto_3

    .line 1846
    :cond_6
    const/16 v19, 0x0

    :goto_3
    nop

    .line 1848
    .local v19, "flags":I
    const v20, 0x1004b

    const/16 v21, 0x3e8

    const/16 v22, 0x0

    move-object/from16 v6, p0

    move/from16 v23, v7

    .end local v7    # "targetSdk":I
    .local v23, "targetSdk":I
    move-object v7, v3

    move-object/from16 v24, v8

    .end local v8    # "pkgNames":[Ljava/lang/String;
    .local v24, "pkgNames":[Ljava/lang/String;
    move-object v8, v12

    move-object/from16 v25, v9

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v25, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    move/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "permissionRemoved":[Z
    .local v20, "permissionRemoved":[Z
    move/from16 v10, v19

    move/from16 v26, v11

    .end local v11    # "permissionCount":I
    .local v26, "permissionCount":I
    move/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    move/from16 v12, p2

    move/from16 v13, v22

    invoke-direct/range {v6 .. v14}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1853
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1854
    goto :goto_5

    .line 1858
    :cond_7
    and-int/lit8 v6, v0, 0x14

    if-eqz v6, :cond_8

    .line 1859
    goto :goto_5

    .line 1863
    :cond_8
    and-int/lit8 v6, v0, 0x20

    if-nez v6, :cond_a

    const v6, 0x8000

    and-int/2addr v6, v0

    if-eqz v6, :cond_9

    goto :goto_4

    .line 1870
    :cond_9
    and-int/lit8 v6, v19, 0x40

    if-nez v6, :cond_b

    .line 1872
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, v21

    move/from16 v11, p2

    move-object v13, v14

    invoke-direct/range {v6 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_5

    .line 1866
    :cond_a
    :goto_4
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, v21

    move/from16 v11, p2

    move-object v12, v14

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1803
    .end local v0    # "oldFlags":I
    .end local v2    # "uid":I
    .end local v3    # "permName":Ljava/lang/String;
    .end local v18    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v19    # "flags":I
    .end local v23    # "targetSdk":I
    .end local v24    # "pkgNames":[Ljava/lang/String;
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p2

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v25

    move/from16 v11, v26

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1808
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v3    # "permName":Ljava/lang/String;
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    :goto_6
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 1803
    .end local v3    # "permName":Ljava/lang/String;
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_c
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .line 1878
    .end local v1    # "i":I
    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    const/4 v0, 0x0

    aget-boolean v1, v20, v0

    if-eqz v1, :cond_d

    .line 1879
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRemoved()V

    .line 1884
    :cond_d
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1885
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1886
    .local v0, "numRevokedPermissions":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_e

    .line 1887
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v2, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    .line 1888
    .local v3, "revocationUID":I
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    .line 1890
    .local v6, "revocationUserId":I
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1893
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$igfYI7thImnYrDxs3qWtqs2SCRk;

    invoke-direct {v8, v3, v6}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$igfYI7thImnYrDxs3qWtqs2SCRk;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1886
    .end local v3    # "revocationUID":I
    .end local v6    # "revocationUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_e
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    goto :goto_8

    .line 1884
    .end local v0    # "numRevokedPermissions":I
    .end local v1    # "i":I
    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_f
    move-object/from16 v2, v25

    .line 1898
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_8
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1899
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1900
    return-void
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2198
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2200
    monitor-exit v0

    return-void

    .line 2203
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2204
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V

    .line 2203
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2213
    monitor-exit v0

    .line 2214
    return-void

    .line 2213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 39
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2531
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2532
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2531
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    .line 2533
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v12, :cond_0

    .line 2534
    return-void

    .line 2537
    :cond_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 2539
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v14

    .line 2541
    .local v14, "currentUserIds":[I
    const/4 v1, 0x0

    .line 2542
    .local v1, "runtimePermissionsRevoked":Z
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 2544
    .local v0, "updatedUserIds":[I
    array-length v2, v14

    move-object v3, v0

    const/4 v0, 0x0

    .end local v0    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :goto_0
    if-ge v0, v2, :cond_9

    aget v4, v14, v0

    .line 2545
    .local v4, "userId":I
    invoke-virtual {v13, v4}, Lcom/android/server/pm/permission/PermissionsState;->isMissing(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2548
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2549
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    .line 2550
    .local v5, "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v16

    move/from16 v20, v1

    move/from16 v1, v16

    move/from16 v16, v2

    .local v16, "targetSdkVersion":I
    goto :goto_2

    .line 2552
    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v16    # "targetSdkVersion":I
    :cond_1
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2553
    .restart local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v16, 0x2710

    .line 2554
    .restart local v16    # "targetSdkVersion":I
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v15

    .line 2555
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 2556
    .local v6, "packagesSize":I
    const/16 v19, 0x0

    move/from16 v20, v1

    move/from16 v1, v16

    move/from16 v16, v2

    move/from16 v2, v19

    .end local v16    # "targetSdkVersion":I
    .local v1, "targetSdkVersion":I
    .local v2, "i":I
    .local v20, "runtimePermissionsRevoked":Z
    :goto_1
    if-ge v2, v6, :cond_2

    .line 2557
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2558
    .local v19, "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move/from16 v21, v6

    .end local v6    # "packagesSize":I
    .local v21, "packagesSize":I
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2559
    nop

    .line 2560
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v6

    .line 2559
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2556
    .end local v19    # "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v21

    goto :goto_1

    .end local v21    # "packagesSize":I
    .restart local v6    # "packagesSize":I
    :cond_2
    move/from16 v21, v6

    .line 2564
    .end local v2    # "i":I
    .end local v6    # "packagesSize":I
    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2565
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v15, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v15

    .line 2566
    .local v15, "permission":Lcom/android/server/pm/permission/BasePermission;
    if-nez v15, :cond_3

    .line 2567
    goto :goto_3

    .line 2569
    :cond_3
    move-object/from16 v19, v2

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v5

    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v21, "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v5, "android"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2570
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2571
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2572
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isImmutablyRestricted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2573
    :cond_4
    const/16 v2, 0x2000

    invoke-virtual {v13, v15, v4, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2577
    :cond_5
    const/16 v2, 0x17

    if-ge v1, v2, :cond_6

    .line 2578
    const/16 v2, 0x48

    invoke-virtual {v13, v15, v4, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2583
    invoke-virtual {v13, v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 2586
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v15    # "permission":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    move-object/from16 v2, v19

    move-object/from16 v5, v21

    goto :goto_3

    .line 2588
    .end local v21    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v21, v5

    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v21    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v4}, Lcom/android/server/pm/permission/PermissionsState;->setMissing(ZI)V

    .line 2589
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    move-object v3, v2

    .end local v3    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    goto :goto_4

    .line 2545
    .end local v2    # "updatedUserIds":[I
    .end local v20    # "runtimePermissionsRevoked":Z
    .end local v21    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v1, "runtimePermissionsRevoked":Z
    .restart local v3    # "updatedUserIds":[I
    :cond_8
    move/from16 v20, v1

    move/from16 v16, v2

    .line 2544
    .end local v1    # "runtimePermissionsRevoked":Z
    .end local v4    # "userId":I
    .restart local v20    # "runtimePermissionsRevoked":Z
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    move/from16 v1, v20

    goto/16 :goto_0

    .line 2593
    .end local v20    # "runtimePermissionsRevoked":Z
    .restart local v1    # "runtimePermissionsRevoked":Z
    :cond_9
    move/from16 v20, v1

    .end local v1    # "runtimePermissionsRevoked":Z
    .restart local v20    # "runtimePermissionsRevoked":Z
    move-object v1, v13

    .line 2595
    .local v1, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    .line 2597
    .local v2, "changedInstallPermission":Z
    if-eqz v9, :cond_c

    .line 2598
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 2599
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2600
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v0, v13}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v1, v0

    .line 2601
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    move-object v6, v1

    move/from16 v15, v20

    goto :goto_5

    .line 2608
    :cond_a
    iget-object v4, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2609
    nop

    .line 2610
    :try_start_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .line 2609
    invoke-direct {v7, v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v0

    move-object v3, v0

    .line 2611
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2612
    const/4 v0, 0x1

    move/from16 v20, v0

    .line 2614
    :cond_b
    monitor-exit v4

    move-object v6, v1

    move/from16 v15, v20

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2597
    :cond_c
    move-object v6, v1

    move/from16 v15, v20

    .line 2618
    .end local v1    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v20    # "runtimePermissionsRevoked":Z
    .local v6, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v15, "runtimePermissionsRevoked":Z
    :goto_5
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v13, v0}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 2620
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2621
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2623
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_22

    move v4, v1

    .line 2624
    .local v4, "N":I
    const/4 v1, 0x0

    move/from16 v16, v2

    move-object v2, v3

    move v3, v1

    .local v2, "updatedUserIds":[I
    .local v3, "i":I
    .local v16, "changedInstallPermission":Z
    :goto_6
    if-ge v3, v4, :cond_6f

    .line 2625
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1c

    .line 2626
    .local v1, "permName":Ljava/lang/String;
    move-object/from16 v20, v2

    .end local v2    # "updatedUserIds":[I
    .local v20, "updatedUserIds":[I
    :try_start_3
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 2627
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    nop

    .line 2628
    move/from16 v21, v3

    .end local v3    # "i":I
    .local v21, "i":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1b

    move/from16 v22, v15

    const/16 v15, 0x17

    .end local v15    # "runtimePermissionsRevoked":Z
    .local v22, "runtimePermissionsRevoked":Z
    if-lt v3, v15, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    move/from16 v17, v3

    .line 2629
    .local v17, "appSupportsRuntimePermissions":Z
    const/4 v3, 0x0

    .line 2631
    .local v3, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_4
    sget-boolean v23, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1a

    if-eqz v23, :cond_e

    if-eqz v2, :cond_e

    .line 2632
    :try_start_5
    const-string v15, "PackageManager"

    move-object/from16 v24, v3

    .end local v3    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v24, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v4

    .end local v4    # "N":I
    .local v25, "N":I
    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    .line 3114
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "permName":Ljava/lang/String;
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v21    # "i":I
    .end local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v25    # "N":I
    :catchall_1
    move-exception v0

    move-object/from16 v25, v5

    move-object v1, v11

    move-object/from16 v33, v14

    move/from16 v2, v16

    move-object/from16 v3, v20

    move/from16 v4, v22

    move-object v14, v6

    move-object v11, v10

    move-object v10, v12

    move-object v12, v7

    goto/16 :goto_32

    .line 2631
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "permName":Ljava/lang/String;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v4    # "N":I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v21    # "i":I
    :cond_e
    move-object/from16 v24, v3

    move/from16 v25, v4

    .line 2636
    .end local v3    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4    # "N":I
    .restart local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v25    # "N":I
    :goto_8
    if-eqz v2, :cond_6c

    :try_start_6
    invoke-direct {v7, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-nez v3, :cond_f

    move-object/from16 v37, v0

    move-object v9, v2

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    const/4 v7, 0x0

    const/16 v23, 0x17

    move-object/from16 v25, v5

    move-object v5, v6

    move-object v6, v1

    goto/16 :goto_2b

    .line 2649
    :cond_f
    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1a

    if-nez v3, :cond_18

    .line 2650
    :try_start_7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "android.permission.ACTIVITY_RECOGNITION"

    .line 2651
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_9

    :cond_10
    move-object/from16 v30, v1

    goto/16 :goto_c

    .line 2652
    :cond_11
    :goto_9
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2654
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2656
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_12

    .line 2657
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is newly added for "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v30, v1

    goto/16 :goto_c

    .line 2656
    :cond_12
    move-object/from16 v30, v1

    goto/16 :goto_c

    .line 2667
    :cond_13
    nop

    .line 2668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v3

    .line 2669
    .local v3, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2670
    .local v4, "numSplitPerms":I
    const/4 v15, 0x0

    .local v15, "splitPermNum":I
    :goto_a
    if-ge v15, v4, :cond_17

    .line 2671
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 2672
    .local v26, "sp":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v27

    .line 2673
    .local v28, "splitPermName":Ljava/lang/String;
    move-object/from16 v27, v3

    .end local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v27, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2674
    move-object/from16 v3, v28

    .end local v28    # "splitPermName":Ljava/lang/String;
    .local v3, "splitPermName":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 2675
    move-object/from16 v24, v3

    .line 2676
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2678
    sget-boolean v28, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v28, :cond_14

    .line 2679
    move-object/from16 v28, v3

    .end local v3    # "splitPermName":Ljava/lang/String;
    .restart local v28    # "splitPermName":Ljava/lang/String;
    const-string v3, "PackageManager"

    move/from16 v29, v4

    .end local v4    # "numSplitPerms":I
    .local v29, "numSplitPerms":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v1

    .end local v1    # "permName":Ljava/lang/String;
    .local v30, "permName":Ljava/lang/String;
    const-string v1, " is newly added for "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2679
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    .line 2678
    .end local v28    # "splitPermName":Ljava/lang/String;
    .end local v29    # "numSplitPerms":I
    .end local v30    # "permName":Ljava/lang/String;
    .restart local v1    # "permName":Ljava/lang/String;
    .restart local v3    # "splitPermName":Ljava/lang/String;
    .restart local v4    # "numSplitPerms":I
    :cond_14
    move-object/from16 v30, v1

    move-object/from16 v28, v3

    move/from16 v29, v4

    .end local v1    # "permName":Ljava/lang/String;
    .end local v3    # "splitPermName":Ljava/lang/String;
    .end local v4    # "numSplitPerms":I
    .restart local v28    # "splitPermName":Ljava/lang/String;
    .restart local v29    # "numSplitPerms":I
    .restart local v30    # "permName":Ljava/lang/String;
    goto :goto_c

    .line 2674
    .end local v28    # "splitPermName":Ljava/lang/String;
    .end local v29    # "numSplitPerms":I
    .end local v30    # "permName":Ljava/lang/String;
    .restart local v1    # "permName":Ljava/lang/String;
    .restart local v3    # "splitPermName":Ljava/lang/String;
    .restart local v4    # "numSplitPerms":I
    :cond_15
    move-object/from16 v30, v1

    move-object/from16 v28, v3

    move/from16 v29, v4

    .end local v1    # "permName":Ljava/lang/String;
    .end local v3    # "splitPermName":Ljava/lang/String;
    .end local v4    # "numSplitPerms":I
    .restart local v28    # "splitPermName":Ljava/lang/String;
    .restart local v29    # "numSplitPerms":I
    .restart local v30    # "permName":Ljava/lang/String;
    goto :goto_b

    .line 2673
    .end local v29    # "numSplitPerms":I
    .end local v30    # "permName":Ljava/lang/String;
    .restart local v1    # "permName":Ljava/lang/String;
    .restart local v4    # "numSplitPerms":I
    :cond_16
    move-object/from16 v30, v1

    move/from16 v29, v4

    .line 2670
    .end local v1    # "permName":Ljava/lang/String;
    .end local v4    # "numSplitPerms":I
    .end local v26    # "sp":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .end local v28    # "splitPermName":Ljava/lang/String;
    .restart local v29    # "numSplitPerms":I
    .restart local v30    # "permName":Ljava/lang/String;
    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v27

    move/from16 v4, v29

    move-object/from16 v1, v30

    goto :goto_a

    .end local v27    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .end local v29    # "numSplitPerms":I
    .end local v30    # "permName":Ljava/lang/String;
    .restart local v1    # "permName":Ljava/lang/String;
    .local v3, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .restart local v4    # "numSplitPerms":I
    :cond_17
    move-object/from16 v30, v1

    move-object/from16 v27, v3

    move/from16 v29, v4

    .end local v1    # "permName":Ljava/lang/String;
    .end local v3    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .end local v4    # "numSplitPerms":I
    .restart local v27    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .restart local v29    # "numSplitPerms":I
    .restart local v30    # "permName":Ljava/lang/String;
    goto :goto_c

    .line 2649
    .end local v15    # "splitPermNum":I
    .end local v27    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .end local v29    # "numSplitPerms":I
    .end local v30    # "permName":Ljava/lang/String;
    .restart local v1    # "permName":Ljava/lang/String;
    :cond_18
    move-object/from16 v30, v1

    .line 2699
    .end local v1    # "permName":Ljava/lang/String;
    .restart local v30    # "permName":Ljava/lang/String;
    :goto_c
    move-object/from16 v15, v24

    .end local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v15, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1a

    if-eqz v1, :cond_1a

    if-nez v17, :cond_1a

    .line 2700
    :try_start_9
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v1, :cond_19

    .line 2701
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Denying runtime-only permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2701
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v37, v0

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    const/4 v7, 0x0

    const/16 v23, 0x17

    move-object/from16 v25, v5

    move-object v5, v6

    goto/16 :goto_2c

    .line 2700
    :cond_19
    move-object/from16 v37, v0

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    const/4 v7, 0x0

    const/16 v23, 0x17

    move-object/from16 v25, v5

    move-object v5, v6

    goto/16 :goto_2c

    .line 2707
    :cond_1a
    :try_start_a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 2708
    .local v4, "perm":Ljava/lang/String;
    const/16 v24, 0x0

    .line 2709
    .local v24, "allowedSig":Z
    const/16 v26, 0x1

    .line 2712
    .local v26, "grant":I
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1a

    if-eqz v1, :cond_1b

    .line 2713
    :try_start_b
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2716
    :cond_1b
    :try_start_c
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2718
    const/16 v26, 0x2

    move-object/from16 v19, v2

    move-object/from16 v33, v4

    move-object/from16 v27, v6

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    move/from16 v1, v26

    move-object/from16 v32, v30

    const/4 v11, 0x1

    const/16 v23, 0x17

    move-object/from16 v25, v5

    goto/16 :goto_f

    .line 2719
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1a

    if-eqz v1, :cond_1f

    .line 2720
    :try_start_d
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v1, :cond_1e

    if-eqz v15, :cond_1d

    goto :goto_d

    .line 2727
    :cond_1d
    const/16 v26, 0x3

    move-object/from16 v19, v2

    move-object/from16 v33, v4

    move-object/from16 v27, v6

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    move/from16 v1, v26

    move-object/from16 v32, v30

    const/4 v11, 0x1

    const/16 v23, 0x17

    move-object/from16 v25, v5

    goto/16 :goto_f

    .line 2724
    :cond_1e
    :goto_d
    const/16 v26, 0x4

    move-object/from16 v19, v2

    move-object/from16 v33, v4

    move-object/from16 v27, v6

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    move/from16 v1, v26

    move-object/from16 v32, v30

    const/4 v11, 0x1

    const/16 v23, 0x17

    move-object/from16 v25, v5

    goto/16 :goto_f

    .line 2729
    :cond_1f
    :try_start_e
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1a

    if-eqz v1, :cond_22

    .line 2731
    move-object/from16 v3, v30

    const/4 v11, 0x1

    .end local v30    # "permName":Ljava/lang/String;
    .local v3, "permName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object/from16 v31, v20

    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "updatedUserIds":[I
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v31, "updatedUserIds":[I
    move-object v2, v4

    move-object/from16 v32, v3

    move/from16 v20, v21

    .end local v3    # "permName":Ljava/lang/String;
    .end local v21    # "i":I
    .local v20, "i":I
    .local v32, "permName":Ljava/lang/String;
    move-object/from16 v3, p1

    move-object/from16 v33, v4

    move/from16 v21, v25

    .end local v4    # "perm":Ljava/lang/String;
    .end local v25    # "N":I
    .local v21, "N":I
    .local v33, "perm":Ljava/lang/String;
    move-object v4, v12

    move-object/from16 v25, v5

    move-object/from16 v5, v19

    move-object/from16 v27, v6

    const/16 v23, 0x17

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v27, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_f
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v1

    .line 2735
    .end local v24    # "allowedSig":Z
    .local v1, "allowedSig":Z
    new-array v2, v11, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2736
    nop

    .line 2737
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 2736
    invoke-static {v2}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    or-int/2addr v1, v2

    move/from16 v24, v1

    goto :goto_e

    .line 2735
    :cond_20
    move/from16 v24, v1

    .line 2740
    .end local v1    # "allowedSig":Z
    .restart local v24    # "allowedSig":Z
    :goto_e
    if-eqz v24, :cond_21

    .line 2741
    const/16 v26, 0x2

    move/from16 v1, v26

    goto :goto_f

    .line 2740
    :cond_21
    move/from16 v1, v26

    goto :goto_f

    .line 2729
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v31    # "updatedUserIds":[I
    .end local v32    # "permName":Ljava/lang/String;
    .end local v33    # "perm":Ljava/lang/String;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v20, "updatedUserIds":[I
    .local v21, "i":I
    .restart local v25    # "N":I
    .restart local v30    # "permName":Ljava/lang/String;
    :cond_22
    move-object/from16 v19, v2

    move-object/from16 v33, v4

    move-object/from16 v27, v6

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    move-object/from16 v32, v30

    const/4 v11, 0x1

    const/16 v23, 0x17

    move-object/from16 v25, v5

    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v25    # "N":I
    .end local v30    # "permName":Ljava/lang/String;
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v20, "i":I
    .local v21, "N":I
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31    # "updatedUserIds":[I
    .restart local v32    # "permName":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    move/from16 v1, v26

    .line 2746
    .end local v26    # "grant":I
    .local v1, "grant":I
    :goto_f
    :try_start_10
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_18

    if-eqz v2, :cond_23

    .line 2747
    :try_start_11
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Considering granting permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v33

    .end local v33    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2748
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2747
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_10

    .line 3114
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v32    # "permName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p4

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v14, v27

    move-object/from16 v3, v31

    move-object v12, v7

    goto/16 :goto_32

    .line 2746
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "grant":I
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v32    # "permName":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    :cond_23
    move-object/from16 v4, v33

    .line 2751
    .end local v33    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    :goto_10
    const/4 v3, -0x1

    if-eq v1, v11, :cond_66

    .line 2761
    :try_start_12
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    if-nez v5, :cond_28

    :try_start_13
    new-array v5, v11, [I

    const/16 v6, 0xf

    const/16 v18, 0x0

    aput v6, v5, v18

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v5, :cond_25

    .line 2762
    :try_start_14
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-nez v5, :cond_24

    goto :goto_11

    :cond_24
    move-object/from16 v5, v27

    goto :goto_12

    .line 2763
    :cond_25
    :goto_11
    :try_start_15
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    if-nez v5, :cond_27

    .line 2768
    if-nez v24, :cond_26

    move-object/from16 v5, v27

    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_16
    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 2772
    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 2773
    const/4 v1, 0x1

    goto :goto_12

    .line 2768
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_26
    move-object/from16 v5, v27

    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_12

    .line 2763
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_27
    move-object/from16 v5, v27

    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_12

    .line 3114
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v32    # "permName":Ljava/lang/String;
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_3
    move-exception v0

    move-object/from16 v1, p4

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v14, v27

    move-object/from16 v3, v31

    move-object v12, v7

    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_32

    .line 2761
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v32    # "permName":Ljava/lang/String;
    :cond_28
    move-object/from16 v5, v27

    .line 2778
    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_29
    :goto_12
    const/4 v6, 0x2

    if-eq v1, v6, :cond_62

    const/4 v6, 0x3

    if-eq v1, v6, :cond_47

    const/4 v6, 0x4

    if-eq v1, v6, :cond_2d

    .line 3059
    if-eqz v10, :cond_2b

    .line 3060
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_13

    :cond_2a
    move-object/from16 v37, v0

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    const/4 v7, 0x0

    goto/16 :goto_2c

    .line 3061
    :cond_2b
    :goto_13
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v2, :cond_2c

    .line 3062
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not granting permission "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because it was previously installed without"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3062
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v37, v0

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    const/4 v7, 0x0

    goto/16 :goto_2c

    .line 3061
    :cond_2c
    move-object/from16 v37, v0

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    const/4 v7, 0x0

    goto/16 :goto_2c

    .line 3114
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v32    # "permName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v1, p4

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    move-object v14, v5

    move-object v12, v7

    goto/16 :goto_32

    .line 2932
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v32    # "permName":Ljava/lang/String;
    :cond_2d
    nop

    .line 2933
    :try_start_17
    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 2934
    .local v6, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v6, :cond_2e

    :try_start_18
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v26
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto :goto_14

    :cond_2e
    const/16 v26, 0x0

    .line 2937
    .local v26, "flags":I
    :goto_14
    if-nez v15, :cond_2f

    .line 2938
    move-object/from16 v11, v19

    goto :goto_15

    :cond_2f
    :try_start_19
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v11, v15}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 2941
    .local v11, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_15
    invoke-virtual {v5, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eq v2, v3, :cond_30

    .line 2943
    const v2, 0x3bbff

    move/from16 v29, v1

    const/4 v1, 0x0

    .end local v1    # "grant":I
    .local v29, "grant":I
    :try_start_1a
    invoke-virtual {v5, v11, v3, v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 2947
    const/4 v1, 0x1

    move v2, v1

    .end local v16    # "changedInstallPermission":Z
    .local v1, "changedInstallPermission":Z
    goto :goto_16

    .line 2941
    .end local v29    # "grant":I
    .local v1, "grant":I
    .restart local v16    # "changedInstallPermission":Z
    :cond_30
    move/from16 v29, v1

    .end local v1    # "grant":I
    .restart local v29    # "grant":I
    move/from16 v2, v16

    .line 2950
    .end local v16    # "changedInstallPermission":Z
    .local v2, "changedInstallPermission":Z
    :goto_16
    :try_start_1b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v1

    .line 2951
    .local v1, "hardRestricted":Z
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v16

    .line 2953
    .local v16, "softRestricted":Z
    array-length v3, v14
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move/from16 v33, v2

    move-object/from16 v34, v15

    move/from16 v15, v26

    move-object/from16 v2, v31

    move-object/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v31    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    .local v15, "flags":I
    .local v26, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .local v33, "changedInstallPermission":Z
    .local v34, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :goto_17
    if-ge v11, v3, :cond_46

    :try_start_1c
    aget v31, v14, v11

    move/from16 v35, v31

    .line 2957
    .local v35, "userId":I
    move/from16 v36, v3

    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v3, :cond_31

    :try_start_1d
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 2959
    move-object/from16 v37, v0

    move/from16 v0, v35

    .end local v35    # "userId":I
    .local v0, "userId":I
    .local v37, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_18

    .line 3114
    .end local v0    # "userId":I
    .end local v1    # "hardRestricted":Z
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15    # "flags":I
    .end local v16    # "softRestricted":Z
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v26    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v29    # "grant":I
    .end local v32    # "permName":Ljava/lang/String;
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v1, p4

    move-object v3, v2

    move-object v11, v10

    move-object v10, v12

    move/from16 v4, v22

    move/from16 v2, v33

    move-object v12, v7

    move-object/from16 v33, v14

    move-object v14, v5

    goto/16 :goto_32

    .line 2957
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "hardRestricted":Z
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15    # "flags":I
    .restart local v16    # "softRestricted":Z
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v29    # "grant":I
    .restart local v32    # "permName":Ljava/lang/String;
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v35    # "userId":I
    :cond_31
    move-object/from16 v37, v0

    move/from16 v0, v35

    .line 2959
    .end local v35    # "userId":I
    .local v0, "userId":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_32
    const/4 v3, 0x0

    .line 2961
    .local v3, "permissionPolicyInitialized":Z
    :goto_18
    const/16 v31, 0x0

    .line 2963
    .local v31, "wasChanged":Z
    move-object/from16 v9, v19

    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    :try_start_1e
    iget-object v10, v9, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 2964
    invoke-virtual {v5, v10, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v10
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    and-int/lit16 v10, v10, 0x3800

    if-eqz v10, :cond_33

    const/4 v10, 0x1

    goto :goto_19

    :cond_33
    const/4 v10, 0x0

    .line 2966
    .local v10, "restrictionExempt":Z
    :goto_19
    move-object/from16 v19, v12

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v19, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_1f
    iget-object v12, v9, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v12, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v12

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_34

    const/4 v12, 0x1

    goto :goto_1a

    :cond_34
    const/4 v12, 0x0

    .line 2969
    .local v12, "restrictionApplied":Z
    :goto_1a
    if-eqz v17, :cond_3d

    .line 2971
    if-eqz v3, :cond_38

    if-eqz v1, :cond_38

    .line 2972
    if-nez v10, :cond_37

    .line 2973
    if-eqz v6, :cond_35

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v35

    if-eqz v35, :cond_35

    .line 2974
    move-object/from16 v35, v6

    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v35, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v13, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    move-object/from16 v38, v4

    const/4 v4, -0x1

    .end local v4    # "perm":Ljava/lang/String;
    .local v38, "perm":Ljava/lang/String;
    if-eq v6, v4, :cond_36

    .line 2976
    const/4 v4, 0x1

    move/from16 v31, v4

    .end local v31    # "wasChanged":Z
    .local v4, "wasChanged":Z
    goto :goto_1b

    .line 2973
    .end local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v38    # "perm":Ljava/lang/String;
    .local v4, "perm":Ljava/lang/String;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v31    # "wasChanged":Z
    :cond_35
    move-object/from16 v38, v4

    move-object/from16 v35, v6

    .line 2978
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v38    # "perm":Ljava/lang/String;
    :cond_36
    :goto_1b
    if-nez v12, :cond_39

    .line 2979
    or-int/lit16 v15, v15, 0x4000

    .line 2980
    const/16 v31, 0x1

    goto :goto_1c

    .line 2972
    .end local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v38    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_37
    move-object/from16 v38, v4

    move-object/from16 v35, v6

    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v38    # "perm":Ljava/lang/String;
    goto :goto_1c

    .line 2971
    .end local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v38    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_38
    move-object/from16 v38, v4

    move-object/from16 v35, v6

    .line 2984
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v38    # "perm":Ljava/lang/String;
    if-eqz v3, :cond_39

    if-eqz v16, :cond_39

    .line 2987
    if-nez v10, :cond_39

    if-nez v12, :cond_39

    .line 2988
    or-int/lit16 v15, v15, 0x4000

    .line 2989
    const/16 v31, 0x1

    .line 2994
    :cond_39
    :goto_1c
    and-int/lit8 v4, v15, 0x40

    if-eqz v4, :cond_3a

    .line 2995
    and-int/lit8 v15, v15, -0x41

    .line 2996
    const/16 v31, 0x1

    .line 2999
    :cond_3a
    and-int/lit8 v4, v15, 0x8

    if-eqz v4, :cond_3b

    .line 3000
    and-int/lit8 v15, v15, -0x9

    .line 3001
    const/16 v31, 0x1

    goto :goto_1d

    .line 3003
    :cond_3b
    if-eqz v3, :cond_3c

    if-eqz v1, :cond_3c

    if-eqz v10, :cond_40

    .line 3005
    :cond_3c
    invoke-virtual {v13, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_40

    .line 3007
    const/16 v31, 0x1

    goto :goto_1d

    .line 3011
    .end local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v38    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_3d
    move-object/from16 v38, v4

    move-object/from16 v35, v6

    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v38    # "perm":Ljava/lang/String;
    iget-object v4, v9, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v4, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 3012
    invoke-virtual {v13, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3e

    .line 3014
    or-int/lit8 v15, v15, 0x40

    .line 3015
    const/16 v31, 0x1

    .line 3020
    :cond_3e
    if-eqz v3, :cond_40

    if-nez v1, :cond_3f

    if-eqz v16, :cond_40

    :cond_3f
    if-nez v10, :cond_40

    if-nez v12, :cond_40

    .line 3023
    or-int/lit16 v15, v15, 0x4000

    .line 3024
    const/16 v31, 0x1

    .line 3029
    :cond_40
    :goto_1d
    if-eqz v3, :cond_44

    .line 3030
    if-nez v1, :cond_41

    if-eqz v16, :cond_42

    :cond_41
    if-eqz v10, :cond_44

    .line 3031
    :cond_42
    if-eqz v12, :cond_44

    .line 3032
    and-int/lit16 v4, v15, -0x4001

    .line 3034
    .end local v15    # "flags":I
    .local v4, "flags":I
    if-nez v17, :cond_43

    .line 3035
    or-int/lit8 v4, v4, 0x40

    move v15, v4

    goto :goto_1e

    .line 3034
    :cond_43
    move v15, v4

    .line 3037
    .end local v4    # "flags":I
    .restart local v15    # "flags":I
    :goto_1e
    const/16 v31, 0x1

    .line 3042
    :cond_44
    if-eqz v31, :cond_45

    .line 3043
    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    move-object v2, v4

    .line 3049
    :cond_45
    const-string v4, "RESTORE UPGRADE"

    move-object/from16 v6, v32

    .end local v32    # "permName":Ljava/lang/String;
    .local v6, "permName":Ljava/lang/String;
    invoke-static {v8, v6, v15, v4}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    move v15, v4

    .line 3053
    const v4, 0x3fbff

    invoke-virtual {v13, v9, v0, v4, v15}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 2953
    nop

    .end local v0    # "userId":I
    .end local v3    # "permissionPolicyInitialized":Z
    .end local v10    # "restrictionExempt":Z
    .end local v12    # "restrictionApplied":Z
    .end local v31    # "wasChanged":Z
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, p3

    move-object/from16 v32, v6

    move-object/from16 v12, v19

    move-object/from16 v6, v35

    move/from16 v3, v36

    move-object/from16 v0, v37

    move-object/from16 v4, v38

    move-object/from16 v19, v9

    move/from16 v9, p2

    goto/16 :goto_17

    .line 3114
    .end local v1    # "hardRestricted":Z
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v15    # "flags":I
    .end local v16    # "softRestricted":Z
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v26    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v29    # "grant":I
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v35    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "perm":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v3, v2

    move-object v12, v7

    move-object/from16 v10, v19

    move/from16 v4, v22

    move/from16 v2, v33

    move-object/from16 v33, v14

    move-object v14, v5

    goto/16 :goto_32

    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_7
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v3, v2

    move-object v10, v12

    move/from16 v4, v22

    move/from16 v2, v33

    move-object v12, v7

    move-object/from16 v33, v14

    move-object v14, v5

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_32

    .line 2953
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "hardRestricted":Z
    .local v4, "perm":Ljava/lang/String;
    .local v6, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "flags":I
    .restart local v16    # "softRestricted":Z
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v29    # "grant":I
    .restart local v32    # "permName":Ljava/lang/String;
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_46
    move-object/from16 v37, v0

    move-object/from16 v38, v4

    move-object/from16 v35, v6

    move-object/from16 v9, v19

    move-object/from16 v6, v32

    move-object/from16 v19, v12

    .line 3056
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "hardRestricted":Z
    .end local v4    # "perm":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "flags":I
    .end local v16    # "softRestricted":Z
    .end local v26    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v32    # "permName":Ljava/lang/String;
    .local v6, "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v19, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "perm":Ljava/lang/String;
    move-object/from16 v11, p3

    move-object/from16 v10, v19

    move/from16 v16, v33

    const/4 v7, 0x0

    move-object/from16 v33, v14

    goto/16 :goto_2d

    .line 3114
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v29    # "grant":I
    .end local v33    # "changedInstallPermission":Z
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "perm":Ljava/lang/String;
    .local v2, "changedInstallPermission":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v31, "updatedUserIds":[I
    :catchall_8
    move-exception v0

    move/from16 v33, v2

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v10, v12

    move/from16 v4, v22

    move-object/from16 v3, v31

    move-object v12, v7

    move-object/from16 v33, v14

    move-object v14, v5

    .end local v2    # "changedInstallPermission":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v33    # "changedInstallPermission":Z
    goto/16 :goto_32

    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "changedInstallPermission":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v16, "changedInstallPermission":Z
    :catchall_9
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v10, v12

    move-object/from16 v33, v14

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    move-object v14, v5

    move-object v12, v7

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_32

    .line 2804
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v15, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v32    # "permName":Ljava/lang/String;
    :cond_47
    move-object/from16 v37, v0

    move/from16 v29, v1

    move-object/from16 v38, v4

    move-object/from16 v34, v15

    move-object/from16 v9, v19

    move-object/from16 v6, v32

    move-object/from16 v19, v12

    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v32    # "permName":Ljava/lang/String;
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v19, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "grant":I
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "perm":Ljava/lang/String;
    :try_start_20
    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    .line 2805
    .local v0, "hardRestricted":Z
    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1

    .line 2807
    .local v1, "softRestricted":Z
    array-length v2, v14
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    move-object/from16 v3, v31

    const/4 v4, 0x0

    .end local v31    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :goto_1f
    if-ge v4, v2, :cond_61

    :try_start_21
    aget v10, v14, v4

    .line 2811
    .local v10, "userId":I
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    if-eqz v11, :cond_48

    :try_start_22
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 2813
    invoke-virtual {v11, v10}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    if-eqz v11, :cond_48

    const/4 v11, 0x1

    goto :goto_20

    .line 3114
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v10    # "userId":I
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v29    # "grant":I
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "perm":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v12, v7

    move-object/from16 v33, v14

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    move-object v14, v5

    goto/16 :goto_32

    .line 2813
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v10    # "userId":I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v29    # "grant":I
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "perm":Ljava/lang/String;
    :cond_48
    const/4 v11, 0x0

    .line 2815
    .local v11, "permissionPolicyInitialized":Z
    :goto_20
    nop

    .line 2816
    move-object/from16 v12, v38

    .end local v38    # "perm":Ljava/lang/String;
    .local v12, "perm":Ljava/lang/String;
    :try_start_23
    invoke-virtual {v5, v12, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v15
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 2817
    .local v15, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v15, :cond_49

    :try_start_24
    invoke-virtual {v15}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v26
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    goto :goto_21

    :cond_49
    const/16 v26, 0x0

    :goto_21
    move/from16 v31, v26

    .line 2819
    .local v31, "flags":I
    const/16 v26, 0x0

    .line 2821
    .local v26, "wasChanged":Z
    move/from16 v32, v2

    :try_start_25
    iget-object v2, v9, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 2822
    invoke-virtual {v5, v2, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    and-int/lit16 v2, v2, 0x3800

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_22

    :cond_4a
    const/4 v2, 0x0

    .line 2824
    .local v2, "restrictionExempt":Z
    :goto_22
    move-object/from16 v33, v14

    .end local v14    # "currentUserIds":[I
    .local v33, "currentUserIds":[I
    :try_start_26
    iget-object v14, v9, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v14, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v14

    and-int/lit16 v14, v14, 0x4000

    if-eqz v14, :cond_4b

    const/4 v14, 0x1

    goto :goto_23

    :cond_4b
    const/4 v14, 0x0

    .line 2827
    .local v14, "restrictionApplied":Z
    :goto_23
    if-eqz v17, :cond_56

    .line 2829
    if-eqz v11, :cond_50

    if-eqz v0, :cond_50

    .line 2830
    if-nez v2, :cond_4f

    .line 2831
    if-eqz v15, :cond_4c

    invoke-virtual {v15}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v35

    if-eqz v35, :cond_4c

    .line 2832
    invoke-virtual {v13, v9, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    move-object/from16 v35, v5

    const/4 v5, -0x1

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v35, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eq v7, v5, :cond_4d

    .line 2834
    const/4 v5, 0x1

    move/from16 v26, v5

    .end local v26    # "wasChanged":Z
    .local v5, "wasChanged":Z
    goto :goto_24

    .line 2831
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v26    # "wasChanged":Z
    :cond_4c
    move-object/from16 v35, v5

    .line 2836
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_4d
    :goto_24
    if-nez v14, :cond_4e

    .line 2837
    move/from16 v5, v31

    .end local v31    # "flags":I
    .local v5, "flags":I
    or-int/lit16 v5, v5, 0x4000

    .line 2838
    const/16 v26, 0x1

    move/from16 v31, v5

    goto :goto_26

    .line 2836
    .end local v5    # "flags":I
    .restart local v31    # "flags":I
    :cond_4e
    move/from16 v5, v31

    .end local v31    # "flags":I
    .restart local v5    # "flags":I
    goto :goto_26

    .line 2830
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31    # "flags":I
    :cond_4f
    move-object/from16 v35, v5

    move/from16 v5, v31

    .end local v31    # "flags":I
    .local v5, "flags":I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_25

    .line 2829
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31    # "flags":I
    :cond_50
    move-object/from16 v35, v5

    move/from16 v5, v31

    .line 2842
    .end local v31    # "flags":I
    .local v5, "flags":I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eqz v11, :cond_51

    if-eqz v1, :cond_51

    .line 2845
    if-nez v2, :cond_51

    if-nez v14, :cond_51

    .line 2846
    or-int/lit16 v5, v5, 0x4000

    .line 2847
    const/16 v26, 0x1

    move/from16 v31, v5

    goto :goto_26

    .line 2852
    :cond_51
    :goto_25
    move/from16 v31, v5

    .end local v5    # "flags":I
    .restart local v31    # "flags":I
    :goto_26
    and-int/lit8 v5, v31, 0x40

    if-eqz v5, :cond_52

    .line 2853
    and-int/lit8 v31, v31, -0x41

    .line 2854
    const/16 v26, 0x1

    .line 2857
    :cond_52
    and-int/lit8 v5, v31, 0x8

    if-eqz v5, :cond_53

    .line 2858
    and-int/lit8 v31, v31, -0x9

    .line 2859
    const/16 v26, 0x1

    move/from16 v5, v31

    move-object/from16 v31, v15

    goto/16 :goto_28

    .line 2861
    :cond_53
    if-eqz v11, :cond_54

    if-eqz v0, :cond_54

    if-eqz v2, :cond_55

    .line 2863
    :cond_54
    if-eqz v15, :cond_55

    :try_start_27
    invoke-virtual {v15}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 2864
    invoke-virtual {v13, v9, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_55

    .line 2866
    const/16 v26, 0x1

    move/from16 v5, v31

    move-object/from16 v31, v15

    goto :goto_28

    .line 2900
    :cond_55
    move/from16 v5, v31

    move-object/from16 v31, v15

    goto :goto_28

    .line 2871
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_56
    move-object/from16 v35, v5

    move/from16 v5, v31

    .end local v31    # "flags":I
    .local v5, "flags":I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v15, :cond_57

    .line 2873
    const-string v7, "android"

    .line 2874
    move-object/from16 v31, v15

    .end local v15    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v31, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v15

    .line 2873
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 2875
    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_58

    .line 2876
    or-int/lit8 v5, v5, 0x48

    .line 2878
    const/16 v26, 0x1

    goto :goto_27

    .line 2871
    .end local v31    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_57
    move-object/from16 v31, v15

    .line 2883
    .end local v15    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v31    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_58
    :goto_27
    iget-object v7, v9, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v7, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_59

    .line 2884
    invoke-virtual {v13, v9, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v7

    const/4 v15, -0x1

    if-eq v7, v15, :cond_59

    .line 2886
    const/4 v7, 0x1

    move/from16 v26, v7

    .line 2891
    :cond_59
    if-eqz v11, :cond_5b

    if-nez v0, :cond_5a

    if-eqz v1, :cond_5b

    :cond_5a
    if-nez v2, :cond_5b

    if-nez v14, :cond_5b

    .line 2894
    or-int/lit16 v5, v5, 0x4000

    .line 2895
    const/16 v26, 0x1

    .line 2900
    :cond_5b
    :goto_28
    if-eqz v11, :cond_5f

    .line 2901
    if-nez v0, :cond_5c

    if-eqz v1, :cond_5d

    :cond_5c
    if-eqz v2, :cond_5f

    .line 2902
    :cond_5d
    if-eqz v14, :cond_5f

    .line 2903
    and-int/lit16 v5, v5, -0x4001

    .line 2905
    if-nez v17, :cond_5e

    .line 2906
    or-int/lit8 v5, v5, 0x40

    .line 2908
    :cond_5e
    const/16 v26, 0x1

    .line 2913
    :cond_5f
    if-eqz v26, :cond_60

    .line 2914
    invoke-static {v3, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    move-object v3, v7

    .line 2920
    :cond_60
    const-string v7, "RESTORE RUNTIME"

    invoke-static {v8, v6, v5, v7}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    move v5, v7

    .line 2924
    const v7, 0x3fbff

    invoke-virtual {v13, v9, v10, v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 2807
    nop

    .end local v2    # "restrictionExempt":Z
    .end local v5    # "flags":I
    .end local v10    # "userId":I
    .end local v11    # "permissionPolicyInitialized":Z
    .end local v14    # "restrictionApplied":Z
    .end local v26    # "wasChanged":Z
    .end local v31    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, p0

    move-object/from16 v38, v12

    move/from16 v2, v32

    move-object/from16 v14, v33

    move-object/from16 v5, v35

    goto/16 :goto_1f

    .line 3114
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v29    # "grant":I
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_b
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    move-object/from16 v14, v35

    goto/16 :goto_32

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_c
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_32

    .end local v33    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v14, "currentUserIds":[I
    :catchall_d
    move-exception v0

    move-object/from16 v33, v14

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v14    # "currentUserIds":[I
    .restart local v33    # "currentUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_32

    .line 2807
    .end local v33    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v14    # "currentUserIds":[I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v29    # "grant":I
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v38    # "perm":Ljava/lang/String;
    :cond_61
    move-object/from16 v35, v5

    move-object/from16 v33, v14

    move-object/from16 v12, v38

    .line 2927
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v14    # "currentUserIds":[I
    .end local v38    # "perm":Ljava/lang/String;
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v33    # "currentUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v11, p3

    move-object v2, v3

    move-object/from16 v10, v19

    const/4 v7, 0x0

    goto/16 :goto_2d

    .line 3114
    .end local v3    # "updatedUserIds":[I
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v29    # "grant":I
    .end local v33    # "currentUserIds":[I
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v14    # "currentUserIds":[I
    .local v31, "updatedUserIds":[I
    :catchall_e
    move-exception v0

    move-object/from16 v33, v14

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    move-object/from16 v3, v31

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v14    # "currentUserIds":[I
    .restart local v33    # "currentUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_32

    .line 2784
    .end local v33    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v15, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v32    # "permName":Ljava/lang/String;
    :cond_62
    move-object/from16 v37, v0

    move/from16 v29, v1

    move-object/from16 v35, v5

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    move-object/from16 v9, v19

    move-object/from16 v6, v32

    move-object/from16 v19, v12

    move-object v12, v4

    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v32    # "permName":Ljava/lang/String;
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v12, "perm":Ljava/lang/String;
    .local v19, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "grant":I
    .restart local v33    # "currentUserIds":[I
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_28
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    move-object/from16 v3, v31

    const/4 v2, 0x0

    .end local v31    # "updatedUserIds":[I
    .restart local v3    # "updatedUserIds":[I
    :goto_29
    if-ge v2, v1, :cond_64

    :try_start_29
    aget v4, v0, v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    .line 2785
    .local v4, "userId":I
    move-object/from16 v5, v35

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_2a
    invoke-virtual {v5, v12, v4}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v7

    if-eqz v7, :cond_63

    .line 2788
    invoke-virtual {v5, v9, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 2789
    const v7, 0x3fbff

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v4, v7, v10}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2792
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    move-object v3, v7

    .line 2784
    .end local v4    # "userId":I
    :cond_63
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v35, v5

    goto :goto_29

    .line 3114
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v29    # "grant":I
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_f
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    move-object/from16 v14, v35

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_32

    .line 2797
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v29    # "grant":I
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_64
    move-object/from16 v5, v35

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v13, v9}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    const/4 v1, -0x1

    if-eq v0, v1, :cond_65

    .line 2799
    const/4 v0, 0x1

    move-object/from16 v11, p3

    move/from16 v16, v0

    move-object v2, v3

    move-object/from16 v10, v19

    const/4 v7, 0x0

    .end local v16    # "changedInstallPermission":Z
    .local v0, "changedInstallPermission":Z
    goto/16 :goto_2d

    .line 2797
    .end local v0    # "changedInstallPermission":Z
    .restart local v16    # "changedInstallPermission":Z
    :cond_65
    move-object/from16 v11, p3

    move-object v2, v3

    move-object/from16 v10, v19

    const/4 v7, 0x0

    goto/16 :goto_2d

    .line 3114
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v29    # "grant":I
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_10
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    goto/16 :goto_32

    .end local v3    # "updatedUserIds":[I
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31    # "updatedUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_11
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move/from16 v2, v16

    move-object/from16 v10, v19

    move/from16 v4, v22

    move-object/from16 v3, v31

    move-object/from16 v14, v35

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_32

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "currentUserIds":[I
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_12
    move-exception v0

    move-object/from16 v33, v14

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v14, v27

    move-object/from16 v3, v31

    move-object/from16 v12, p0

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v33    # "currentUserIds":[I
    goto/16 :goto_32

    .line 3070
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v33    # "currentUserIds":[I
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "grant":I
    .local v4, "perm":Ljava/lang/String;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v32    # "permName":Ljava/lang/String;
    :cond_66
    move-object/from16 v37, v0

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    move-object/from16 v9, v19

    move-object/from16 v5, v27

    move-object/from16 v6, v32

    move-object/from16 v19, v12

    move-object v12, v4

    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "perm":Ljava/lang/String;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v32    # "permName":Ljava/lang/String;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v12, "perm":Ljava/lang/String;
    .local v19, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v33    # "currentUserIds":[I
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_2b
    invoke-virtual {v13, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    const/4 v2, -0x1

    if-eq v0, v2, :cond_68

    .line 3073
    const v0, 0x3fbff

    const/4 v7, 0x0

    :try_start_2c
    invoke-virtual {v13, v9, v2, v0, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    .line 3075
    const/4 v2, 0x1

    .line 3076
    .end local v16    # "changedInstallPermission":Z
    .local v2, "changedInstallPermission":Z
    :try_start_2d
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_67

    .line 3077
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Un-granting permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (protectionLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    .line 3081
    move-object/from16 v10, v19

    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_2e
    invoke-static {v8, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3077
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    goto :goto_2a

    .line 3114
    .end local v1    # "grant":I
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_13
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v4, v22

    move-object/from16 v3, v31

    goto/16 :goto_32

    .line 3076
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "grant":I
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_67
    move-object/from16 v10, v19

    .line 2624
    .end local v1    # "grant":I
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v24    # "allowedSig":Z
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_2a
    move-object/from16 v11, p3

    move/from16 v16, v2

    move-object/from16 v2, v31

    goto/16 :goto_2d

    .line 3114
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_14
    move-exception v0

    move-object/from16 v10, v19

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v4, v22

    move-object/from16 v3, v31

    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_32

    .end local v2    # "changedInstallPermission":Z
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "changedInstallPermission":Z
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_15
    move-exception v0

    move-object/from16 v10, v19

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_32

    .line 3084
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "grant":I
    .restart local v6    # "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "i":I
    .restart local v21    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_68
    move-object/from16 v10, v19

    const/4 v7, 0x0

    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_2f
    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3087
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    if-eqz v0, :cond_6a

    move-object/from16 v11, p3

    if-eqz v11, :cond_69

    .line 3089
    :try_start_30
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 3090
    :cond_69
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not granting permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (protectionLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    invoke-virtual {v9}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    invoke-static {v8, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3090
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 3087
    :cond_6a
    move-object/from16 v11, p3

    goto/16 :goto_2c

    .line 3084
    :cond_6b
    move-object/from16 v11, p3

    goto/16 :goto_2c

    .line 3114
    .end local v1    # "grant":I
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v21    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v34    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_16
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    goto/16 :goto_32

    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_17
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v10, v19

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    .end local v19    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_32

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "currentUserIds":[I
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_18
    move-exception v0

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v1, p4

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v14, v27

    move-object/from16 v3, v31

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v27    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v33    # "currentUserIds":[I
    goto/16 :goto_32

    .line 2636
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "updatedUserIds":[I
    .end local v33    # "currentUserIds":[I
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "permName":Ljava/lang/String;
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v6, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .local v20, "updatedUserIds":[I
    .local v21, "i":I
    .local v24, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v25    # "N":I
    :cond_6c
    move-object/from16 v37, v0

    move-object v9, v2

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v31, v20

    move/from16 v20, v21

    move/from16 v21, v25

    const/4 v7, 0x0

    const/16 v23, 0x17

    move-object/from16 v25, v5

    move-object v5, v6

    move-object v6, v1

    .line 2637
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "permName":Ljava/lang/String;
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v25    # "N":I
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v6, "permName":Ljava/lang/String;
    .restart local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v20, "i":I
    .local v21, "N":I
    .restart local v31    # "updatedUserIds":[I
    .restart local v33    # "currentUserIds":[I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_2b
    if-eqz v11, :cond_6d

    .line 2638
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2637
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2639
    :cond_6d
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_6e

    .line 2640
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2640
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_19

    .line 2624
    .end local v6    # "permName":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v24    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_6e
    :goto_2c
    move-object/from16 v2, v31

    .end local v31    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    :goto_2d
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p2

    move-object v6, v5

    move-object v12, v10

    move-object v10, v11

    move/from16 v4, v21

    move/from16 v15, v22

    move-object/from16 v5, v25

    move-object/from16 v14, v33

    move-object/from16 v0, v37

    move-object/from16 v11, p4

    .end local v20    # "i":I
    .local v3, "i":I
    goto/16 :goto_6

    .line 3114
    .end local v2    # "updatedUserIds":[I
    .end local v3    # "i":I
    .end local v21    # "N":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "updatedUserIds":[I
    :catchall_19
    move-exception v0

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    goto/16 :goto_32

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "updatedUserIds":[I
    .end local v33    # "currentUserIds":[I
    .local v6, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v20, "updatedUserIds":[I
    :catchall_1a
    move-exception v0

    move-object/from16 v25, v5

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v31, v20

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v1, p4

    move-object v14, v6

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v20    # "updatedUserIds":[I
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31    # "updatedUserIds":[I
    .restart local v33    # "currentUserIds":[I
    goto/16 :goto_32

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v31    # "updatedUserIds":[I
    .end local v33    # "currentUserIds":[I
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v15, "runtimePermissionsRevoked":Z
    .restart local v20    # "updatedUserIds":[I
    :catchall_1b
    move-exception v0

    move-object/from16 v25, v5

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v31, v20

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v1, p4

    move-object v14, v6

    move v4, v15

    move/from16 v2, v16

    move-object/from16 v3, v31

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v31    # "updatedUserIds":[I
    .restart local v33    # "currentUserIds":[I
    goto/16 :goto_32

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v31    # "updatedUserIds":[I
    .end local v33    # "currentUserIds":[I
    .restart local v2    # "updatedUserIds":[I
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "runtimePermissionsRevoked":Z
    :catchall_1c
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v25, v5

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move-object/from16 v12, p0

    move/from16 v9, p2

    move-object/from16 v1, p4

    move-object v14, v6

    move v4, v15

    move/from16 v2, v16

    move-object/from16 v3, v31

    .end local v2    # "updatedUserIds":[I
    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "runtimePermissionsRevoked":Z
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v31    # "updatedUserIds":[I
    .restart local v33    # "currentUserIds":[I
    goto/16 :goto_32

    .line 2624
    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v31    # "updatedUserIds":[I
    .end local v33    # "currentUserIds":[I
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "updatedUserIds":[I
    .restart local v3    # "i":I
    .local v4, "N":I
    .restart local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "runtimePermissionsRevoked":Z
    :cond_6f
    move-object/from16 v37, v0

    move-object/from16 v31, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v25, v5

    move-object v5, v6

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v33, v14

    move/from16 v22, v15

    const/4 v7, 0x0

    .line 3101
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "updatedUserIds":[I
    .end local v3    # "i":I
    .end local v4    # "N":I
    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "runtimePermissionsRevoked":Z
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "N":I
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v31    # "updatedUserIds":[I
    .restart local v33    # "currentUserIds":[I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v16, :cond_70

    move/from16 v9, p2

    if-eqz v9, :cond_71

    goto :goto_2e

    :cond_70
    move/from16 v9, p2

    :goto_2e
    :try_start_31
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_21

    if-nez v0, :cond_71

    .line 3102
    :try_start_32
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1d

    if-eqz v0, :cond_72

    goto :goto_2f

    .line 3114
    .end local v21    # "N":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1d
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v2, v16

    move/from16 v4, v22

    move-object/from16 v3, v31

    goto/16 :goto_32

    .line 3102
    .restart local v21    # "N":I
    .restart local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_71
    :goto_2f
    :try_start_33
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    if-eqz v0, :cond_73

    .line 3106
    :cond_72
    const/4 v0, 0x1

    :try_start_34
    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1d

    .line 3109
    :cond_73
    move-object/from16 v12, p0

    move-object/from16 v2, v31

    .end local v31    # "updatedUserIds":[I
    .restart local v2    # "updatedUserIds":[I
    :try_start_35
    invoke-direct {v12, v13, v8, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I)[I

    move-result-object v6
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_20

    .line 3111
    .end local v2    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v13

    move-object/from16 v4, p1

    move-object v14, v5

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v14, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v5, v37

    :try_start_36
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;[I)[I

    move-result-object v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1f

    move-object v3, v0

    .line 3113
    .end local v6    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :try_start_37
    invoke-direct {v12, v8, v9, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I)[I

    move-result-object v0

    move-object v3, v0

    .line 3114
    .end local v21    # "N":I
    .end local v37    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v25
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e

    .line 3119
    move-object/from16 v1, p4

    if-eqz v1, :cond_74

    .line 3120
    move/from16 v4, v22

    .end local v22    # "runtimePermissionsRevoked":Z
    .local v4, "runtimePermissionsRevoked":Z
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_30

    .line 3119
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v22    # "runtimePermissionsRevoked":Z
    :cond_74
    move/from16 v4, v22

    .line 3123
    .end local v22    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    :goto_30
    array-length v0, v3

    move v15, v7

    :goto_31
    if-ge v15, v0, :cond_75

    aget v2, v3, v15

    .line 3124
    .local v2, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 3123
    .end local v2    # "userId":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_31

    .line 3126
    :cond_75
    return-void

    .line 3114
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v22    # "runtimePermissionsRevoked":Z
    :catchall_1e
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v22

    move/from16 v2, v16

    .end local v22    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_32

    .end local v3    # "updatedUserIds":[I
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v6    # "updatedUserIds":[I
    .restart local v22    # "runtimePermissionsRevoked":Z
    :catchall_1f
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v22

    move-object v3, v6

    move/from16 v2, v16

    .end local v22    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_32

    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v6    # "updatedUserIds":[I
    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v2, "updatedUserIds":[I
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v22    # "runtimePermissionsRevoked":Z
    :catchall_20
    move-exception v0

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v4, v22

    move-object v3, v2

    move/from16 v2, v16

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v22    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_32

    .end local v2    # "updatedUserIds":[I
    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v22    # "runtimePermissionsRevoked":Z
    .restart local v31    # "updatedUserIds":[I
    :catchall_21
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v1, p4

    move-object v14, v5

    move/from16 v4, v22

    move-object/from16 v2, v31

    move-object v3, v2

    move/from16 v2, v16

    .end local v5    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v22    # "runtimePermissionsRevoked":Z
    .end local v31    # "updatedUserIds":[I
    .restart local v2    # "updatedUserIds":[I
    .restart local v4    # "runtimePermissionsRevoked":Z
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_32

    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "changedInstallPermission":Z
    .end local v33    # "currentUserIds":[I
    .local v2, "changedInstallPermission":Z
    .restart local v3    # "updatedUserIds":[I
    .local v6, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v14, "currentUserIds":[I
    .restart local v15    # "runtimePermissionsRevoked":Z
    :catchall_22
    move-exception v0

    move-object/from16 v25, v5

    move-object v1, v11

    move-object/from16 v33, v14

    move v4, v15

    move-object v14, v6

    move-object v11, v10

    move-object v10, v12

    move-object v12, v7

    .end local v6    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v14, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v33    # "currentUserIds":[I
    :goto_32
    :try_start_38
    monitor-exit v25
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_23

    throw v0

    :catchall_23
    move-exception v0

    goto :goto_32
.end method

.method private restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "backup"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2182
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 2183
    monitor-exit v0

    .line 2184
    return-void

    .line 2183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 10
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4350
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4351
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4353
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 4355
    return-void

    .line 4358
    :cond_0
    invoke-direct {p0, p2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 4361
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v7, p4

    move-object v9, p5

    :try_start_0
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4375
    goto :goto_0

    .line 4368
    :catch_0
    move-exception v1

    .line 4369
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4377
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I)[I
    .locals 17
    .param p1, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "updatedUserIds"    # [I

    .line 3142
    move-object/from16 v0, p1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3143
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3146
    .local v2, "supportsRuntimePermissions":Z
    :goto_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 3147
    .local v4, "users":[I
    array-length v5, v4

    .line 3148
    .local v5, "numUsers":I
    const/4 v6, 0x0

    move v7, v6

    move-object/from16 v6, p3

    .end local p3    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_8

    .line 3149
    aget v8, v4, v7

    .line 3151
    .local v8, "userId":I
    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3152
    .local v10, "permission":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3153
    invoke-virtual {v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3154
    invoke-virtual {v0, v10, v8}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v11

    .line 3156
    .local v11, "flags":I
    and-int/lit16 v12, v11, 0x80

    if-eqz v12, :cond_4

    .line 3157
    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v13, v10}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v13

    .line 3159
    .local v13, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/16 v14, 0x80

    .line 3161
    .local v14, "flagsToRemove":I
    and-int/lit8 v15, v11, 0x34

    if-nez v15, :cond_3

    if-eqz v2, :cond_3

    .line 3163
    invoke-virtual {v0, v13, v8}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v15

    .line 3164
    .local v15, "revokeResult":I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_2

    .line 3165
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_1

    .line 3166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    .end local v2    # "supportsRuntimePermissions":Z
    .local v16, "supportsRuntimePermissions":Z
    const-string v2, "Revoking runtime permission "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as it is now requested"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3165
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_1
    move/from16 v16, v2

    .end local v2    # "supportsRuntimePermissions":Z
    .restart local v16    # "supportsRuntimePermissions":Z
    goto :goto_3

    .line 3164
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_2
    move/from16 v16, v2

    .line 3172
    .end local v2    # "supportsRuntimePermissions":Z
    .restart local v16    # "supportsRuntimePermissions":Z
    :goto_3
    or-int/lit8 v14, v14, 0x3

    goto :goto_4

    .line 3161
    .end local v15    # "revokeResult":I
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_3
    move/from16 v16, v2

    .line 3175
    .end local v2    # "supportsRuntimePermissions":Z
    .restart local v16    # "supportsRuntimePermissions":Z
    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v0, v13, v8, v14, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3176
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    goto :goto_5

    .line 3156
    .end local v13    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v14    # "flagsToRemove":I
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_4
    move-object/from16 v12, p0

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "supportsRuntimePermissions":Z
    .restart local v16    # "supportsRuntimePermissions":Z
    goto :goto_5

    .line 3153
    .end local v11    # "flags":I
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_5
    move-object/from16 v12, p0

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "supportsRuntimePermissions":Z
    .restart local v16    # "supportsRuntimePermissions":Z
    goto :goto_5

    .line 3152
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_6
    move-object/from16 v12, p0

    move/from16 v16, v2

    const/4 v2, 0x0

    .line 3180
    .end local v2    # "supportsRuntimePermissions":Z
    .end local v10    # "permission":Ljava/lang/String;
    .restart local v16    # "supportsRuntimePermissions":Z
    :goto_5
    move/from16 v2, v16

    goto/16 :goto_2

    .line 3151
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_7
    move-object/from16 v12, p0

    move/from16 v16, v2

    const/4 v2, 0x0

    .line 3148
    .end local v2    # "supportsRuntimePermissions":Z
    .end local v8    # "userId":I
    .restart local v16    # "supportsRuntimePermissions":Z
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    goto/16 :goto_1

    .line 3183
    .end local v7    # "i":I
    .end local v16    # "supportsRuntimePermissions":Z
    .restart local v2    # "supportsRuntimePermissions":Z
    :cond_8
    return-object v6
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 15
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1603
    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v10}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const-string v12, "PackageManager"

    if-nez v0, :cond_0

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return-void

    .line 1608
    :cond_0
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1618
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1619
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1621
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v2, "Unknown package: "

    if-eqz v0, :cond_10

    if-nez v1, :cond_1

    move/from16 v4, p4

    move-object/from16 v13, p6

    goto/16 :goto_3

    .line 1625
    :cond_1
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v3, v0, v4, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1628
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 1629
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v2, :cond_e

    .line 1633
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 1639
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v5, 0x17

    if-ge v3, v5, :cond_2

    .line 1640
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1641
    return-void

    .line 1644
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 1646
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    .line 1648
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x10

    const-string v12, " for package "

    if-eqz v6, :cond_4

    .line 1649
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v13, 0x3e8

    if-ne v6, v13, :cond_3

    goto :goto_0

    .line 1650
    :cond_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1653
    :cond_4
    :goto_0
    if-nez p3, :cond_6

    and-int/lit8 v6, v5, 0x4

    if-nez v6, :cond_5

    goto :goto_1

    .line 1654
    :cond_5
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot revoke policy fixed permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1658
    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    const/4 v12, -0x1

    if-eqz v6, :cond_8

    .line 1661
    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v6

    if-eq v6, v12, :cond_7

    .line 1663
    if-eqz v11, :cond_7

    .line 1664
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1667
    :cond_7
    return-void

    .line 1671
    :cond_8
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1672
    return-void

    .line 1675
    :cond_9
    invoke-virtual {v3, v2, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    if-ne v6, v12, :cond_a

    .line 1677
    return-void

    .line 1680
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1681
    const/16 v6, 0x4dd

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_b
    if-eqz v11, :cond_c

    .line 1685
    nop

    .line 1686
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 1685
    invoke-static {v10, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    move-object/from16 v13, p6

    invoke-virtual {v11, v6, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    goto :goto_2

    .line 1684
    :cond_c
    move-object/from16 v13, p6

    .line 1689
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1690
    invoke-direct {p0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1692
    :cond_d
    return-void

    .line 1630
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "flags":I
    :cond_e
    move-object/from16 v13, p6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1626
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_f
    move-object/from16 v13, p6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1621
    :cond_10
    move/from16 v4, p4

    move-object/from16 v13, p6

    .line 1622
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return-void
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 29
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2303
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v10

    .line 2304
    .local v10, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    .line 2307
    .local v11, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 2308
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2310
    .local v1, "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2311
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2312
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2311
    invoke-virtual {v11, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    .end local v1    # "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2316
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2317
    .local v12, "callingUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v13

    .line 2318
    .local v13, "numNewPackagePermissions":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "newPermissionNum":I
    :goto_1
    if-ge v14, v13, :cond_9

    .line 2320
    nop

    .line 2321
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2322
    .local v15, "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtection()I

    move-result v16

    .line 2324
    .local v16, "newProtection":I
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_8

    .line 2325
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2327
    .local v8, "permissionName":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2328
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 2329
    .local v7, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 2332
    .local v6, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 2333
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2334
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 2335
    .local v5, "userIds":[I
    array-length v4, v5

    .line 2336
    .local v4, "numUserIds":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "userIdNum":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 2337
    aget v2, v5, v3

    .line 2339
    .local v2, "userId":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2340
    .local v1, "numPackages":I
    const/4 v0, 0x0

    move/from16 v17, v4

    move v4, v0

    .local v4, "packageNum":I
    .local v17, "numUserIds":I
    :goto_4
    if-ge v4, v1, :cond_4

    .line 2341
    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v10    # "numOldPackagePermissions":I
    .local v18, "numOldPackagePermissions":I
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move/from16 v19, v4

    .end local v4    # "packageNum":I
    .local v19, "packageNum":I
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2342
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v9, v8, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 2344
    .local v20, "permissionState":I
    if-nez v20, :cond_3

    .line 2345
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    const-string v23, "72710897"

    aput-object v23, v0, v22

    .line 2346
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v0, v23

    const/16 v22, 0x2

    move/from16 v23, v1

    .end local v1    # "numPackages":I
    .local v23, "numPackages":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v2

    .end local v2    # "userId":I
    .local v24, "userId":I
    const-string v2, "Revoking permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the group changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v22

    .line 2345
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2353
    const/4 v0, 0x0

    const/16 v21, 0x0

    move/from16 v22, v23

    .end local v23    # "numPackages":I
    .local v22, "numPackages":I
    move-object/from16 v1, p0

    move/from16 v23, v24

    .end local v24    # "userId":I
    .local v23, "userId":I
    move-object v2, v8

    move/from16 v24, v3

    .end local v3    # "userIdNum":I
    .local v24, "userIdNum":I
    move-object v3, v4

    move-object/from16 v25, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v25, "packageName":Ljava/lang/String;
    move v4, v0

    move-object/from16 v26, v5

    .end local v5    # "userIds":[I
    .local v26, "userIds":[I
    move v5, v12

    move-object/from16 v27, v6

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .local v27, "oldPermissionGroupName":Ljava/lang/String;
    move/from16 v6, v23

    move-object/from16 v28, v7

    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .local v28, "newPermissionGroupName":Ljava/lang/String;
    move-object/from16 v7, v21

    move-object v9, v8

    .end local v8    # "permissionName":Ljava/lang/String;
    .local v9, "permissionName":Ljava/lang/String;
    move-object/from16 v8, p4

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2358
    goto :goto_5

    .line 2355
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2356
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    .end local v25    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2344
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v22    # "numPackages":I
    .end local v23    # "userId":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "numPackages":I
    .local v2, "userId":I
    .restart local v3    # "userIdNum":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    :cond_3
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move-object v2, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    .line 2340
    .end local v1    # "numPackages":I
    .end local v2    # "userId":I
    .end local v3    # "userIdNum":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v20    # "permissionState":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v22    # "numPackages":I
    .restart local v23    # "userId":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    :goto_5
    add-int/lit8 v4, v19, 0x1

    move-object v8, v9

    move/from16 v10, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v9, p0

    .end local v19    # "packageNum":I
    .local v4, "packageNum":I
    goto/16 :goto_4

    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v22    # "numPackages":I
    .end local v23    # "userId":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "numPackages":I
    .restart local v2    # "userId":I
    .restart local v3    # "userIdNum":I
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_4
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v19, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .line 2336
    .end local v1    # "numPackages":I
    .end local v2    # "userId":I
    .end local v3    # "userIdNum":I
    .end local v4    # "packageNum":I
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    add-int/lit8 v3, v24, 0x1

    move/from16 v4, v17

    move/from16 v10, v18

    move-object/from16 v9, p0

    .end local v24    # "userIdNum":I
    .restart local v3    # "userIdNum":I
    goto/16 :goto_3

    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v17    # "numUserIds":I
    .end local v18    # "numOldPackagePermissions":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .local v4, "numUserIds":I
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_5
    move/from16 v24, v3

    move/from16 v17, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v3    # "userIdNum":I
    .end local v4    # "numUserIds":I
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v17    # "numUserIds":I
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 2333
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v17    # "numUserIds":I
    .end local v18    # "numOldPackagePermissions":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_6
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 2332
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_7
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 2324
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_8
    move/from16 v18, v10

    move-object/from16 v10, p3

    .line 2319
    .end local v10    # "numOldPackagePermissions":I
    .end local v15    # "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v16    # "newProtection":I
    .restart local v18    # "numOldPackagePermissions":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p0

    move/from16 v10, v18

    goto/16 :goto_1

    .line 2365
    .end local v14    # "newPermissionNum":I
    .end local v18    # "numOldPackagePermissions":I
    .restart local v10    # "numOldPackagePermissions":I
    :cond_9
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .locals 17
    .param p1, "suSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"    # [I

    .line 4020
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4021
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 4022
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 4025
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4026
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4027
    goto :goto_0

    .line 4029
    :cond_1
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 4030
    .local v6, "requestedPermCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 4031
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4032
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 4033
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_2

    .line 4034
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4030
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4037
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "requestedPermCount":I
    .end local v7    # "j":I
    :cond_3
    goto :goto_0

    .line 4039
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 4041
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 4042
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 4043
    .local v6, "installPermCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_2
    const v8, 0x3fbff

    const/4 v9, 0x0

    if-ltz v7, :cond_6

    .line 4044
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 4045
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 4046
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 4047
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_5

    .line 4048
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 4049
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4043
    .end local v10    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4055
    .end local v7    # "i":I
    :cond_6
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 4058
    .local v7, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move v11, v9

    :goto_3
    if-ge v11, v10, :cond_a

    aget v12, v1, v11

    .line 4059
    .local v12, "userId":I
    nop

    .line 4060
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 4061
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 4062
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_4
    if-ltz v15, :cond_9

    .line 4063
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 4064
    .local v16, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 4065
    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v8

    .line 4066
    .local v8, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v8, :cond_7

    .line 4067
    invoke-virtual {v4, v8, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 4068
    const/4 v0, 0x0

    const v9, 0x3fbff

    invoke-virtual {v4, v8, v12, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4070
    invoke-static {v7, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    goto :goto_5

    .line 4066
    :cond_7
    const/4 v0, 0x0

    const v9, 0x3fbff

    goto :goto_5

    .line 4064
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_8
    move v0, v9

    const v9, 0x3fbff

    .line 4062
    .end local v16    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :goto_5
    add-int/lit8 v15, v15, -0x1

    move v8, v9

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_9
    move v0, v9

    move v9, v8

    .line 4058
    .end local v12    # "userId":I
    .end local v13    # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14    # "runtimePermCount":I
    .end local v15    # "i":I
    add-int/lit8 v11, v11, 0x1

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_3

    .line 4077
    :cond_a
    return-object v7

    .line 4023
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v6    # "installPermCount":I
    .end local v7    # "runtimePermissionChangedUserIds":[I
    :cond_b
    :goto_6
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "doGrant"    # Z
    .param p4, "userId"    # I

    .line 1932
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    .line 1933
    return v0

    .line 1936
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1937
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 1938
    .local v2, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1939
    if-nez v2, :cond_1

    .line 1940
    return v0

    .line 1942
    :cond_1
    if-eqz p2, :cond_2

    .line 1943
    invoke-interface {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->setDefaultBrowserAsync(Ljava/lang/String;I)V

    goto :goto_0

    .line 1945
    :cond_2
    invoke-interface {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->setDefaultBrowser(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1946
    return v0

    .line 1949
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    .line 1950
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1951
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V

    .line 1953
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1955
    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1938
    .end local v2    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;[I)[I
    .locals 23
    .param p1, "origPs"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[I)[I"
        }
    .end annotation

    .line 3276
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3277
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 3279
    .local v8, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v9

    .line 3280
    .local v9, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 3281
    .local v10, "numSplitPerms":I
    const/4 v0, 0x0

    .local v0, "splitPermNum":I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 3282
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 3284
    .local v1, "spi":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    invoke-virtual {v1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    .line 3285
    .local v2, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3286
    .local v3, "numNewPerms":I
    const/4 v4, 0x0

    .local v4, "newPermNum":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 3287
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3289
    .local v5, "newPerm":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3290
    .local v11, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_0

    .line 3291
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 3292
    invoke-virtual {v8, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3295
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3286
    .end local v5    # "newPerm":Ljava/lang/String;
    .end local v11    # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3281
    .end local v1    # "spi":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .end local v2    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "numNewPerms":I
    .end local v4    # "newPermNum":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3299
    .end local v0    # "splitPermNum":I
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 3300
    .local v11, "numNewImplicitPerms":I
    const/4 v0, 0x0

    move v12, v0

    move-object/from16 v0, p5

    .end local p5    # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    .local v12, "newImplicitPermNum":I
    :goto_2
    if-ge v12, v11, :cond_b

    .line 3302
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 3303
    .local v14, "newPerm":Ljava/lang/String;
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 3305
    .local v15, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v15, :cond_a

    .line 3306
    invoke-virtual {v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3307
    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 3309
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 3310
    .local v3, "users":[I
    array-length v2, v3

    .line 3311
    .local v2, "numUsers":I
    const/4 v1, 0x0

    .local v1, "userNum":I
    :goto_3
    if-ge v1, v2, :cond_8

    .line 3312
    move-object/from16 v16, v8

    .end local v8    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v16, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    aget v8, v3, v1

    .line 3314
    .local v8, "userId":I
    move/from16 p5, v1

    .end local v1    # "userNum":I
    .local p5, "userNum":I
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3315
    const/16 v1, 0x80

    invoke-virtual {v6, v4, v8, v1, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3319
    :cond_3
    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v17

    .line 3321
    .end local v0    # "updatedUserIds":[I
    .local v17, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 3322
    .local v0, "inheritsFromInstallPerm":Z
    const/4 v1, 0x0

    .local v1, "sourcePermNum":I
    :goto_4
    move/from16 v18, v0

    .end local v0    # "inheritsFromInstallPerm":Z
    .local v18, "inheritsFromInstallPerm":Z
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 3324
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3325
    const/4 v0, 0x1

    .line 3326
    .end local v18    # "inheritsFromInstallPerm":Z
    .restart local v0    # "inheritsFromInstallPerm":Z
    move/from16 v18, v0

    goto :goto_5

    .line 3323
    .end local v0    # "inheritsFromInstallPerm":Z
    .restart local v18    # "inheritsFromInstallPerm":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v18

    goto :goto_4

    .line 3330
    .end local v1    # "sourcePermNum":I
    :cond_5
    :goto_5
    move-object/from16 v1, p1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v18, :cond_7

    .line 3333
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_6

    .line 3334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not inherit from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as split permission is also new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, p5

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    goto :goto_6

    .line 3333
    :cond_6
    move/from16 v19, p5

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    goto :goto_6

    .line 3339
    :cond_7
    move-object/from16 v0, p0

    move/from16 v19, p5

    .end local p5    # "userNum":I
    .local v19, "userNum":I
    move-object v1, v15

    move/from16 v20, v2

    .end local v2    # "numUsers":I
    .local v20, "numUsers":I
    move-object v2, v14

    move-object/from16 v21, v3

    .end local v3    # "users":[I
    .local v21, "users":[I
    move-object/from16 v3, p2

    move-object/from16 v22, v4

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v22, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v4, p3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 3311
    .end local v8    # "userId":I
    .end local v18    # "inheritsFromInstallPerm":Z
    :goto_6
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, v16

    move-object/from16 v0, v17

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    .end local v19    # "userNum":I
    .local v1, "userNum":I
    goto/16 :goto_3

    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "updatedUserIds":[I
    .end local v20    # "numUsers":I
    .end local v21    # "users":[I
    .end local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v0, "updatedUserIds":[I
    .restart local v2    # "numUsers":I
    .restart local v3    # "users":[I
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v8, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_8
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v16, v8

    .end local v1    # "userNum":I
    .end local v2    # "numUsers":I
    .end local v3    # "users":[I
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v8    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v19    # "userNum":I
    .restart local v20    # "numUsers":I
    .restart local v21    # "users":[I
    .restart local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_7

    .line 3306
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v19    # "userNum":I
    .end local v20    # "numUsers":I
    .end local v21    # "users":[I
    .end local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v8    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_9
    move-object/from16 v16, v8

    .end local v8    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_7

    .line 3305
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_a
    move-object/from16 v16, v8

    .line 3301
    .end local v8    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v14    # "newPerm":Ljava/lang/String;
    .end local v15    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v16

    goto/16 :goto_2

    .line 3347
    .end local v12    # "newImplicitPermNum":I
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_b
    return-object v0
.end method

.method private setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 30
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p4, "callingUid"    # I
    .param p5, "whitelistFlags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3884
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3885
    invoke-static {v0, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 3886
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v14, :cond_0

    .line 3887
    return-void

    .line 3890
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v0

    .line 3891
    .local v15, "oldGrantedRestrictedPermissions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 3892
    .local v0, "updatePermissions":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 3894
    .local v8, "permissionCount":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_0
    array-length v1, v11

    if-ge v7, v1, :cond_12

    .line 3895
    aget v5, v11, v7

    .line 3896
    .local v5, "userId":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "j":I
    :goto_1
    if-ge v4, v8, :cond_11

    .line 3897
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 3899
    .local v3, "permissionName":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v16

    .line 3901
    .local v16, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3902
    move/from16 v19, v0

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    goto/16 :goto_7

    .line 3905
    :cond_1
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3906
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3907
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v15, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3909
    :cond_2
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3912
    :cond_3
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2

    .line 3914
    .local v2, "oldFlags":I
    move v1, v2

    .line 3915
    .local v1, "newFlags":I
    const/16 v17, 0x0

    .line 3916
    .local v17, "mask":I
    move/from16 v18, p5

    move/from16 v6, v17

    .line 3917
    .end local v17    # "mask":I
    .local v6, "mask":I
    .local v18, "whitelistFlagsCopy":I
    :goto_2
    move/from16 v19, v0

    .end local v0    # "updatePermissions":Z
    .local v19, "updatePermissions":Z
    const/4 v0, 0x1

    if-eqz v18, :cond_a

    .line 3918
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v20

    move/from16 v21, v4

    .end local v4    # "j":I
    .local v21, "j":I
    shl-int v4, v0, v20

    .line 3919
    .local v4, "flag":I
    not-int v0, v4

    and-int v18, v18, v0

    .line 3920
    const/4 v0, 0x1

    if-eq v4, v0, :cond_8

    const/4 v0, 0x2

    if-eq v4, v0, :cond_6

    const/4 v0, 0x4

    if-eq v4, v0, :cond_4

    goto :goto_3

    .line 3931
    :cond_4
    or-int/lit16 v0, v6, 0x2000

    .line 3932
    .end local v6    # "mask":I
    .local v0, "mask":I
    if-eqz v12, :cond_5

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3933
    or-int/lit16 v1, v1, 0x2000

    move v6, v0

    goto :goto_3

    .line 3935
    :cond_5
    and-int/lit16 v1, v1, -0x2001

    .line 3938
    move v6, v0

    goto :goto_3

    .line 3940
    .end local v0    # "mask":I
    .restart local v6    # "mask":I
    :cond_6
    or-int/lit16 v0, v6, 0x800

    .line 3941
    .end local v6    # "mask":I
    .restart local v0    # "mask":I
    if-eqz v12, :cond_7

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3942
    or-int/lit16 v1, v1, 0x800

    move v6, v0

    goto :goto_3

    .line 3944
    :cond_7
    and-int/lit16 v1, v1, -0x801

    move v6, v0

    goto :goto_3

    .line 3922
    .end local v0    # "mask":I
    .restart local v6    # "mask":I
    :cond_8
    or-int/lit16 v0, v6, 0x1000

    .line 3923
    .end local v6    # "mask":I
    .restart local v0    # "mask":I
    if-eqz v12, :cond_9

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3924
    or-int/lit16 v1, v1, 0x1000

    move v6, v0

    goto :goto_3

    .line 3926
    :cond_9
    and-int/lit16 v1, v1, -0x1001

    .line 3929
    move v6, v0

    .line 3949
    .end local v0    # "mask":I
    .end local v4    # "flag":I
    .restart local v6    # "mask":I
    :goto_3
    move/from16 v0, v19

    move/from16 v4, v21

    goto :goto_2

    .line 3951
    .end local v21    # "j":I
    .local v4, "j":I
    :cond_a
    move/from16 v21, v4

    .end local v4    # "j":I
    .restart local v21    # "j":I
    if-ne v2, v1, :cond_b

    .line 3952
    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    goto/16 :goto_7

    .line 3955
    :cond_b
    const/16 v19, 0x1

    .line 3957
    and-int/lit16 v4, v2, 0x3800

    if-eqz v4, :cond_c

    move v4, v0

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    move/from16 v20, v4

    .line 3959
    .local v20, "wasWhitelisted":Z
    and-int/lit16 v4, v1, 0x3800

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    move/from16 v22, v0

    .line 3966
    .local v22, "isWhitelisted":Z
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_e

    .line 3967
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    .line 3969
    .local v0, "isGranted":Z
    if-nez v22, :cond_e

    if-eqz v0, :cond_e

    .line 3970
    or-int/lit8 v6, v6, 0x4

    .line 3971
    and-int/lit8 v1, v1, -0x5

    .line 3977
    .end local v0    # "isGranted":Z
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v4, 0x17

    if-ge v0, v4, :cond_f

    if-nez v20, :cond_f

    if-eqz v22, :cond_f

    .line 3979
    or-int/lit8 v6, v6, 0x40

    .line 3980
    or-int/lit8 v1, v1, 0x40

    move/from16 v23, v1

    move/from16 v24, v6

    goto :goto_6

    .line 3983
    :cond_f
    move/from16 v23, v1

    move/from16 v24, v6

    .end local v1    # "newFlags":I
    .end local v6    # "mask":I
    .local v23, "newFlags":I
    .local v24, "mask":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v27, v2

    .end local v2    # "oldFlags":I
    .local v27, "oldFlags":I
    move-object v2, v4

    move-object/from16 v28, v3

    .end local v3    # "permissionName":Ljava/lang/String;
    .local v28, "permissionName":Ljava/lang/String;
    move/from16 v3, v24

    move/from16 v4, v23

    move/from16 v29, v5

    .end local v5    # "userId":I
    .local v29, "userId":I
    move/from16 v5, p4

    move/from16 v6, v29

    move/from16 v17, v7

    .end local v7    # "i":I
    .local v17, "i":I
    move/from16 v7, v25

    move/from16 v25, v8

    .end local v8    # "permissionCount":I
    .local v25, "permissionCount":I
    move-object/from16 v8, v26

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    move/from16 v0, v19

    goto :goto_8

    .line 3901
    .end local v17    # "i":I
    .end local v18    # "whitelistFlagsCopy":I
    .end local v19    # "updatePermissions":Z
    .end local v20    # "wasWhitelisted":Z
    .end local v21    # "j":I
    .end local v22    # "isWhitelisted":Z
    .end local v23    # "newFlags":I
    .end local v24    # "mask":I
    .end local v25    # "permissionCount":I
    .end local v27    # "oldFlags":I
    .end local v28    # "permissionName":Ljava/lang/String;
    .end local v29    # "userId":I
    .local v0, "updatePermissions":Z
    .restart local v3    # "permissionName":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v5    # "userId":I
    .restart local v7    # "i":I
    .restart local v8    # "permissionCount":I
    :cond_10
    move/from16 v19, v0

    move-object/from16 v28, v3

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    .line 3896
    .end local v0    # "updatePermissions":Z
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "userId":I
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .end local v16    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v17    # "i":I
    .restart local v19    # "updatePermissions":Z
    .restart local v21    # "j":I
    .restart local v25    # "permissionCount":I
    .restart local v29    # "userId":I
    :goto_7
    move/from16 v0, v19

    .end local v19    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :goto_8
    add-int/lit8 v4, v21, 0x1

    move/from16 v7, v17

    move/from16 v8, v25

    move/from16 v5, v29

    .end local v21    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_1

    .end local v17    # "i":I
    .end local v25    # "permissionCount":I
    .end local v29    # "userId":I
    .restart local v5    # "userId":I
    .restart local v7    # "i":I
    .restart local v8    # "permissionCount":I
    :cond_11
    move/from16 v19, v0

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    .line 3894
    .end local v0    # "updatePermissions":Z
    .end local v4    # "j":I
    .end local v5    # "userId":I
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .restart local v17    # "i":I
    .restart local v19    # "updatePermissions":Z
    .restart local v25    # "permissionCount":I
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v19    # "updatePermissions":Z
    .end local v25    # "permissionCount":I
    .restart local v0    # "updatePermissions":Z
    .restart local v8    # "permissionCount":I
    :cond_12
    move/from16 v17, v7

    move/from16 v25, v8

    .line 3988
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .restart local v25    # "permissionCount":I
    if-eqz v0, :cond_17

    .line 3990
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v10, v2, v1, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v11

    if-ge v1, v2, :cond_16

    .line 3994
    aget v2, v11, v1

    .line 3995
    .local v2, "userId":I
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 3996
    .local v3, "oldPermsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v3, :cond_13

    .line 3997
    move/from16 v16, v0

    goto :goto_b

    .line 4000
    :cond_13
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 4001
    .local v4, "oldGrantedCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_a
    if-ge v5, v4, :cond_15

    .line 4002
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4004
    .local v6, "permission":Ljava/lang/String;
    iget-object v7, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4005
    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 4007
    .local v7, "newPermissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v6, v2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 4008
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v8

    move/from16 v16, v0

    .end local v0    # "updatePermissions":Z
    .local v16, "updatePermissions":Z
    const/4 v0, 0x0

    invoke-virtual {v13, v8, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    .line 4009
    goto :goto_b

    .line 4007
    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_14
    move/from16 v16, v0

    .line 4001
    .end local v0    # "updatePermissions":Z
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "newPermissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v16    # "updatePermissions":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_15
    move/from16 v16, v0

    .line 3993
    .end local v0    # "updatePermissions":Z
    .end local v2    # "userId":I
    .end local v3    # "oldPermsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "oldGrantedCount":I
    .end local v5    # "j":I
    .restart local v16    # "updatePermissions":Z
    :goto_b
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    goto :goto_9

    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_16
    move/from16 v16, v0

    .end local v0    # "updatePermissions":Z
    .restart local v16    # "updatePermissions":Z
    goto :goto_c

    .line 3988
    .end local v1    # "i":I
    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_17
    move/from16 v16, v0

    .line 4014
    .end local v0    # "updatePermissions":Z
    .restart local v16    # "updatePermissions":Z
    :goto_c
    return-void
.end method

.method private setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1263
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const/4 v0, 0x7

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1268
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1269
    int-to-float v0, v11

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1271
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v11, :cond_1

    .line 1272
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWhitelistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_1
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    .line 1278
    .local v14, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v14, :cond_2

    .line 1279
    return v1

    .line 1282
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1283
    .local v15, "callingUid":I
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v14, v15, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1284
    return v1

    .line 1287
    :cond_3
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v12

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    move/from16 v16, v0

    .line 1290
    .local v16, "isCallerPrivileged":Z
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1291
    invoke-virtual {v0, v14, v15}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v17

    .line 1293
    .local v17, "isCallerInstallerOnRecord":Z
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_6

    if-eqz v16, :cond_5

    goto :goto_2

    .line 1295
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Modifying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_6
    :goto_2
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_11

    .line 1300
    if-nez v16, :cond_8

    if-eqz v17, :cond_7

    goto :goto_3

    .line 1301
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Modifying upgrade whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_8
    :goto_3
    nop

    .line 1306
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1307
    .local v0, "whitelistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    .line 1313
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1314
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_e

    .line 1315
    if-eqz v0, :cond_a

    .line 1316
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    if-eqz v16, :cond_c

    .line 1314
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1318
    :cond_c
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Adding to upgrade whitelist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1308
    .end local v2    # "permissionCount":I
    .end local v3    # "i":I
    :cond_d
    :goto_5
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    .line 1324
    :cond_e
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_11

    .line 1325
    if-nez v16, :cond_11

    if-eqz v17, :cond_f

    goto :goto_7

    .line 1326
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Modifying installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1309
    :cond_10
    :goto_6
    return v12

    .line 1333
    .end local v0    # "whitelistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1335
    .local v18, "identity":J
    :try_start_0
    new-array v3, v12, [I

    aput v11, v3, v1

    .line 1336
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v7, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1335
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    nop

    .line 1341
    return v12

    .line 1338
    :catchall_0
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    throw v0
.end method

.method private systemReady()V
    .locals 8

    .line 4650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 4651
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v1, :cond_7

    .line 4656
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 4657
    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4659
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 4660
    .local v1, "grantPermissionsUserIds":[I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v2, v5

    .line 4661
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4662
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    .line 4660
    .end local v6    # "userId":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4667
    :cond_1
    array-length v2, v1

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_2

    aget v5, v1, v3

    .line 4668
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissions(I)V

    .line 4667
    .end local v5    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4675
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    .line 4676
    .local v2, "isDeviceUpgrading":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 4678
    .local v3, "userIds":[I
    if-eqz v2, :cond_3

    .line 4681
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->revokeDefaultPermissionsFromBrowserApps([I)V

    .line 4685
    :cond_3
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    const/16 v6, 0xb7

    if-ne v1, v5, :cond_5

    .line 4689
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->scheduleReadDefaultPermissionExceptions()V

    .line 4693
    new-array v5, v0, [I

    const/16 v7, 0x80

    aput v7, v5, v4

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_4

    new-array v0, v0, [I

    aput v6, v0, v4

    .line 4694
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4695
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->grantCarrierPackageDefPermissionsUnify(Landroid/content/Context;)V

    goto :goto_2

    .line 4701
    :cond_5
    new-array v0, v0, [I

    aput v6, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4702
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4703
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "ro.boot.opcarrier"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4702
    const-string v5, "carrier_pre_load"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4707
    :cond_6
    :goto_2
    return-void

    .line 4652
    .end local v1    # "grantPermissionsUserIds":[I
    .end local v2    # "isDeviceUpgrading":Z
    .end local v3    # "userIds":[I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4117
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 4119
    const/4 v0, 0x1

    .line 4120
    if-eqz p2, :cond_0

    .line 4121
    const/4 v1, 0x6

    goto :goto_0

    .line 4122
    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 4123
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p3

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4125
    .end local v0    # "flags":I
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4126
    nop

    .line 4127
    return-void

    .line 4125
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4126
    throw v0
.end method

.method private updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 20
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "overridePolicy"    # Z
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 753
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p8

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    return-void

    .line 757
    :cond_0
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 759
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 765
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_2
    :goto_0
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    .line 772
    and-int/lit8 v0, p3, -0x11

    .line 773
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 774
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 775
    and-int/lit8 v1, v1, -0x21

    .line 776
    and-int/lit8 v1, v1, -0x41

    .line 777
    and-int/lit16 v1, v1, -0x1001

    .line 778
    and-int/lit16 v1, v1, -0x801

    .line 779
    and-int/lit16 v1, v1, -0x2001

    .line 780
    and-int/lit16 v1, v1, -0x4001

    move/from16 v19, v1

    move v1, v0

    move/from16 v0, v19

    goto :goto_1

    .line 771
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_3
    move/from16 v1, p3

    move/from16 v0, p4

    .line 783
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v0, "flagValues":I
    .local v1, "flagMask":I
    :goto_1
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 784
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 786
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_14

    if-nez v3, :cond_4

    move-object/from16 v16, v3

    goto/16 :goto_7

    .line 790
    :cond_4
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v2, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v4

    if-nez v4, :cond_13

    .line 797
    const-string v4, "UPDATE"

    invoke-static {v2, v9, v0, v4}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 802
    .end local v0    # "flagValues":I
    .local v4, "flagValues":I
    iget-object v5, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 803
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 804
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    if-eqz v0, :cond_12

    .line 809
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 810
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 811
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 812
    .local v6, "hadState":Z
    :goto_2
    if-nez v6, :cond_b

    .line 813
    const/4 v15, 0x0

    .line 815
    .local v15, "isRequested":Z
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 816
    const/4 v15, 0x1

    .line 818
    :cond_6
    if-nez v15, :cond_9

    .line 820
    iget-object v14, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 821
    invoke-virtual {v14, v10, v12}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 822
    .local v14, "sharedUserPackageNames":[Ljava/lang/String;
    array-length v7, v14

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v16, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_3
    if-ge v3, v7, :cond_a

    move/from16 v17, v7

    aget-object v7, v14, v3

    .line 823
    .local v7, "sharedUserPackageName":Ljava/lang/String;
    iget-object v11, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    .line 825
    .local v11, "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v11, :cond_7

    .line 826
    move-object/from16 v18, v7

    .end local v7    # "sharedUserPackageName":Ljava/lang/String;
    .local v18, "sharedUserPackageName":Ljava/lang/String;
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 827
    const/4 v15, 0x1

    .line 828
    goto :goto_4

    .line 825
    .end local v18    # "sharedUserPackageName":Ljava/lang/String;
    .restart local v7    # "sharedUserPackageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v7

    .line 822
    .end local v7    # "sharedUserPackageName":Ljava/lang/String;
    .end local v11    # "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, p5

    move/from16 v7, v17

    goto :goto_3

    .line 818
    .end local v14    # "sharedUserPackageNames":[Ljava/lang/String;
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v16, v3

    .line 832
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    :goto_4
    if-nez v15, :cond_c

    .line 833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isn\'t requested by package "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void

    .line 812
    .end local v15    # "isRequested":Z
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_b
    move-object/from16 v16, v3

    .line 837
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_c
    nop

    .line 838
    invoke-virtual {v5, v0, v12, v1, v4}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v3

    .line 839
    .local v3, "permissionUpdated":Z
    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 840
    invoke-direct {v8, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 842
    :cond_d
    if-eqz v3, :cond_11

    if-eqz v13, :cond_11

    .line 845
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 846
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v12, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 847
    .local v7, "userUid":I
    invoke-virtual {v13, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 848
    .end local v7    # "userUid":I
    :cond_e
    goto :goto_5

    :cond_f
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v7

    if-nez v7, :cond_10

    if-eqz v6, :cond_e

    .line 850
    :cond_10
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v11, 0x0

    aput v12, v7, v11

    .line 851
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v14

    .line 850
    invoke-virtual {v13, v7, v11, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdatedNotifyListener([IZI)V

    .line 854
    :cond_11
    :goto_5
    return-void

    .line 806
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "hadState":Z
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    :cond_12
    move-object/from16 v16, v3

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 804
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 791
    .end local v4    # "flagValues":I
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "flagValues":I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_13
    move-object/from16 v16, v3

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 786
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_14
    move-object/from16 v16, v3

    .line 787
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void
.end method

.method private updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4279
    if-nez p1, :cond_0

    .line 4280
    const/4 v0, 0x1

    return v0

    .line 4283
    :cond_0
    const/4 v0, 0x0

    .line 4284
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4285
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4286
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4287
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4288
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 4289
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4290
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 4292
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4296
    goto :goto_0

    .line 4300
    :cond_2
    const/4 v0, 0x1

    .line 4303
    if-eqz p2, :cond_3

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4304
    :cond_3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4305
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4304
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4307
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 4308
    .local v5, "userIds":[I
    array-length v6, v5

    .line 4309
    .local v6, "numUserIds":I
    const/4 v7, 0x0

    .local v7, "userIdNum":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 4310
    aget v8, v5, v7

    .line 4311
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v10, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$tAcOXvvLnf8YMDota79zZypUyds;

    invoke-direct {v10, p0, v4, v8, p3}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$tAcOXvvLnf8YMDota79zZypUyds;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4309
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4316
    .end local v5    # "userIds":[I
    .end local v6    # "numUserIds":I
    .end local v7    # "userIdNum":I
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4318
    :cond_5
    if-nez v1, :cond_6

    .line 4319
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v5

    .line 4321
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4322
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto/16 :goto_0

    .line 4323
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4324
    if-eqz v1, :cond_9

    .line 4325
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 4326
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4327
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4328
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4330
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 4329
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4331
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4332
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 4333
    :try_start_1
    monitor-exit v6

    goto :goto_2

    .line 4335
    :cond_8
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4336
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4335
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 4338
    monitor-exit v6

    .line 4339
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_2

    .line 4338
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4341
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_9
    return v0

    .line 4323
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4398
    if-nez p1, :cond_0

    .line 4399
    const/4 v0, 0x1

    return v0

    .line 4401
    :cond_0
    const/4 v0, 0x0

    .line 4403
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4404
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4405
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4406
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4407
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 4408
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4412
    goto :goto_0

    .line 4416
    :cond_1
    const/4 v0, 0x1

    .line 4417
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4418
    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission tree "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4419
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4418
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 4422
    :cond_3
    if-nez v1, :cond_4

    .line 4423
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v5

    .line 4425
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4426
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 4427
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4428
    if-eqz v1, :cond_7

    .line 4429
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 4430
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4431
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 4432
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4434
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 4433
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4435
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4436
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 4437
    :try_start_1
    monitor-exit v6

    goto :goto_1

    .line 4439
    :cond_6
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4439
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 4442
    monitor-exit v6

    .line 4443
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 4442
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4445
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_7
    return v0

    .line 4427
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4097
    if-nez p2, :cond_0

    const/4 v0, 0x3

    move v5, v0

    goto :goto_0

    .line 4098
    :cond_0
    const/4 v0, 0x2

    move v5, v0

    :goto_0
    nop

    .line 4099
    .local v5, "flags":I
    nop

    .line 4100
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    .line 4099
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4101
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 18
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4217
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    .line 4221
    .local v11, "permissionTreesSourcePackageChanged":Z
    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v12

    .line 4224
    .local v12, "permissionSourcePackageChanged":Z
    or-int v0, v11, v12

    if-eqz v0, :cond_0

    .line 4227
    const-string v0, "PackageManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    or-int/lit8 v0, p4, 0x1

    move v13, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_0

    .line 4224
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_0
    move/from16 v13, p4

    .line 4231
    .end local p4    # "flags":I
    .local v13, "flags":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->cacheBackgroundToForegoundPermissionMapping()V

    .line 4233
    const-wide/32 v14, 0x40000

    const-string/jumbo v0, "restorePermissionState"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4235
    and-int/lit8 v0, v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_2

    .line 4236
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_1

    move/from16 v3, v17

    goto :goto_1

    :cond_1
    move/from16 v3, v16

    .line 4237
    .local v3, "replaceAll":Z
    :goto_1
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move-object/from16 v5, p1

    move-object v15, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4248
    .end local v3    # "replaceAll":Z
    :cond_2
    if-eqz v9, :cond_5

    .line 4250
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 4251
    .local v0, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v1, v13, 0x2

    if-eqz v1, :cond_3

    .line 4252
    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v16, v17

    goto :goto_2

    .line 4251
    :cond_3
    move-object/from16 v1, p3

    .line 4252
    :cond_4
    nop

    :goto_2
    move/from16 v2, v16

    .line 4253
    .local v2, "replace":Z
    invoke-direct {v7, v9, v2, v8, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_3

    .line 4248
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "replace":Z
    :cond_5
    move-object/from16 v1, p3

    .line 4255
    :goto_3
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4256
    return-void
.end method


# virtual methods
.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1092
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->addListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1098
    monitor-exit v0

    .line 1099
    return-void

    .line 1098
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 10
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 606
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 607
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 610
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 616
    .local v1, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 617
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 618
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 619
    .local v4, "added":Z
    :goto_1
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    .line 620
    .local v5, "fixedLevel":I
    if-eqz v4, :cond_3

    .line 621
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 622
    new-instance v6, Lcom/android/server/pm/permission/BasePermission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    goto :goto_2

    .line 624
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 628
    :goto_2
    invoke-virtual {v3, v5, p1, v1}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v6

    .line 629
    .local v6, "changed":Z
    if-eqz v4, :cond_4

    .line 630
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 632
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "fixedLevel":I
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    if-eqz v6, :cond_5

    .line 634
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 636
    :cond_5
    return v4

    .line 625
    .end local v6    # "changed":Z
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v5    # "fixedLevel":I
    :cond_6
    :try_start_1
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "info":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    throw v6

    .line 632
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "added":Z
    .end local v5    # "fixedLevel":I
    .restart local v0    # "callingUid":I
    .restart local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 608
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant apps can\'t add permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1202
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1205
    return v1

    .line 1208
    :cond_0
    nop

    .line 1209
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1210
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1211
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1213
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1214
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1218
    :cond_2
    return v1
.end method

.method public checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 1042
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v10, p5

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getCallingUid()I

    move-result v11

    .line 1043
    .local v11, "callingUid":I
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getCallingPid()I

    move-result v12

    .line 1044
    .local v12, "callingPid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v13, 0x0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_1

    if-ne v11, v10, :cond_0

    if-ne v12, v9, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1049
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v13

    const/4 v2, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v8, v0, v2

    const/4 v2, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1046
    const-string v2, "Calling uid %d, pid %d cannot check device identifier access for package %s (uid=%d, pid=%d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "response":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1054
    .end local v0    # "response":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 1055
    .local v14, "appId":I
    const/16 v0, 0x3e8

    if-eq v14, v0, :cond_7

    if-nez v14, :cond_2

    move/from16 v16, v14

    goto :goto_2

    .line 1059
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    .line 1061
    return v13

    .line 1065
    :cond_3
    if-eqz v8, :cond_5

    .line 1067
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v6

    .line 1068
    .local v6, "token":J
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/AppOpsManager;

    .line 1071
    .local v15, "appOpsManager":Landroid/app/AppOpsManager;
    :try_start_0
    const-string v3, "android:read_device_identifiers"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v15

    move/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v16, v14

    move-wide v13, v6

    .end local v6    # "token":J
    .end local v14    # "appId":I
    .local v13, "token":J
    .local v16, "appId":I
    move-object/from16 v6, p3

    move-object/from16 v7, p2

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 1073
    nop

    .line 1076
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1073
    const/4 v0, 0x0

    return v0

    .line 1076
    :cond_4
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1077
    nop

    .line 1080
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 1081
    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1082
    .local v2, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_6

    invoke-virtual {v2, v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1084
    const/4 v0, 0x0

    return v0

    .line 1076
    .end local v2    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v13    # "token":J
    .end local v16    # "appId":I
    .restart local v6    # "token":J
    .restart local v14    # "appId":I
    :catchall_1
    move-exception v0

    move/from16 v16, v14

    move-wide v13, v6

    .end local v6    # "token":J
    .end local v14    # "appId":I
    .restart local v13    # "token":J
    .restart local v16    # "appId":I
    :goto_1
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1077
    throw v0

    .line 1065
    .end local v13    # "token":J
    .end local v15    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v16    # "appId":I
    .restart local v14    # "appId":I
    :cond_5
    move/from16 v16, v14

    .line 1087
    .end local v14    # "appId":I
    .restart local v16    # "appId":I
    :cond_6
    const/4 v0, -0x1

    return v0

    .line 1055
    .end local v16    # "appId":I
    .restart local v14    # "appId":I
    :cond_7
    move/from16 v16, v14

    .line 1056
    .end local v14    # "appId":I
    .restart local v16    # "appId":I
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 903
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, p3}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 907
    return v0

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 913
    .local v0, "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    if-nez v0, :cond_2

    .line 915
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 917
    :cond_2
    new-instance v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$iwnRBDwjg4K5iRGbRU5_sVt0zaU;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$iwnRBDwjg4K5iRGbRU5_sVt0zaU;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;->checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I

    move-result v1

    return v1

    .line 913
    .end local v0    # "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 904
    :cond_3
    :goto_0
    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 979
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 980
    return v0

    .line 982
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 983
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v2, v1}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 984
    return v0

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 990
    .local v2, "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    if-nez v2, :cond_2

    .line 992
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 994
    :cond_2
    new-instance v0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v2, p1, p2, v0}, Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;->checkUidPermission(Ljava/lang/String;ILjava/util/function/BiFunction;)I

    move-result v0

    return v0

    .line 990
    .end local v2    # "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "PackageManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, p1, p3}, Landroid/permission/PermissionControllerManager;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 532
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 533
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 534
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 538
    .local v2, "n":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 539
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 540
    .local v5, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    invoke-static {v5, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    nop

    .end local v5    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    goto :goto_0

    .line 542
    :cond_1
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 543
    .end local v2    # "n":I
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3411
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3406
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPermissions()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 4760
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getDefaultBrowser(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .line 1904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1905
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1910
    return-object v2

    .line 1913
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1914
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 1915
    .local v3, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2

    .line 1915
    .end local v3    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 663
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 664
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 551
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 552
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 553
    const/4 v1, 0x0

    return-object v1

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 557
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 556
    invoke-static {v2, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 558
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 566
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 567
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 568
    return-object v2

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 572
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_1

    .line 573
    monitor-exit v1

    return-object v2

    .line 575
    :cond_1
    nop

    .line 576
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v2

    .line 575
    invoke-direct {p0, v2, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v2

    .line 577
    .local v2, "adjustedProtectionLevel":I
    invoke-virtual {v3, v2, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 578
    .end local v2    # "adjustedProtectionLevel":I
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 3353
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 3352
    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1114
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1119
    int-to-float v0, v3

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1121
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1122
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWhitelistedRestrictedPermissions for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1128
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_1

    .line 1129
    return-object v4

    .line 1132
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1133
    .local v7, "callingUid":I
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1134
    return-object v4

    .line 1136
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 1139
    .local v8, "isCallerPrivileged":Z
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1140
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v9

    .line 1142
    .local v9, "isCallerInstallerOnRecord":Z
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_5

    if-eqz v8, :cond_4

    goto :goto_1

    .line 1144
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Querying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_5
    :goto_1
    and-int/lit8 v0, v2, 0x6

    if-eqz v0, :cond_7

    .line 1150
    if-nez v8, :cond_7

    if-eqz v9, :cond_6

    goto :goto_2

    .line 1151
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Querying upgrade or installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1159
    .local v10, "identity":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1160
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v0, :cond_8

    .line 1162
    nop

    .line 1193
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    return-object v4

    .line 1165
    :cond_8
    const/4 v4, 0x0

    .line 1166
    .local v4, "queryFlags":I
    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_9

    .line 1167
    or-int/lit16 v4, v4, 0x1000

    .line 1169
    :cond_9
    and-int/lit8 v12, v2, 0x4

    if-eqz v12, :cond_a

    .line 1170
    or-int/lit16 v4, v4, 0x2000

    .line 1172
    :cond_a
    and-int/lit8 v12, v2, 0x2

    if-eqz v12, :cond_b

    .line 1173
    or-int/lit16 v4, v4, 0x800

    .line 1176
    :cond_b
    const/4 v12, 0x0

    .line 1178
    .local v12, "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v13

    .line 1179
    .local v13, "permissionCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v13, :cond_e

    .line 1180
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1181
    .local v15, "permissionName":Ljava/lang/String;
    nop

    .line 1182
    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v16

    .line 1183
    .local v16, "currentFlags":I
    and-int v17, v16, v4

    if-eqz v17, :cond_d

    .line 1184
    if-nez v12, :cond_c

    .line 1185
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v17

    .line 1187
    :cond_c
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1179
    .end local v15    # "permissionName":Ljava/lang/String;
    .end local v16    # "currentFlags":I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1191
    .end local v14    # "i":I
    :cond_e
    nop

    .line 1193
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1191
    return-object v12

    .line 1193
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "queryFlags":I
    .end local v12    # "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "permissionCount":I
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    throw v0
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2009
    .local v0, "callingUid":I
    nop

    .line 2010
    const-string v1, "grantDefaultPermissionsToActiveLuiApp"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2011
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2012
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2014
    monitor-exit v1

    .line 2015
    return-void

    .line 2014
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1960
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1961
    .local v0, "callingUid":I
    nop

    .line 1962
    const-string v1, "grantPermissionsToEnabledCarrierApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1963
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1964
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$aQWnOfCuKK-rSxzDPI_dUOtzv8I;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$aQWnOfCuKK-rSxzDPI_dUOtzv8I;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1966
    monitor-exit v1

    .line 1967
    return-void

    .line 1966
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1972
    .local v0, "callingUid":I
    const-string v1, "grantDefaultPermissionsToEnabledImsServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1974
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1975
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$BEPoV9HmbUN2-ZgCcIqC6xfzvew;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$BEPoV9HmbUN2-ZgCcIqC6xfzvew;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1977
    monitor-exit v1

    .line 1978
    return-void

    .line 1977
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1983
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1984
    .local v0, "callingUid":I
    const-string v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1986
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1987
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$JcWw5txStfnrnbvcFd2durv6YOo;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$JcWw5txStfnrnbvcFd2durv6YOo;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1990
    monitor-exit v1

    .line 1991
    return-void

    .line 1990
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1420
    .local v7, "callingUid":I
    nop

    .line 1421
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1424
    .local v3, "overridePolicy":Z
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1426
    return-void
.end method

.method public isAutoRevokeWhitelisted(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1397
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1400
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1401
    .local v1, "callingUid":I
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1403
    .local v2, "packageUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1404
    return v4

    .line 1407
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1409
    .local v5, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    invoke-virtual {v3, v7, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    move v4, v7

    .line 1413
    :cond_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    return v4

    .line 1413
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1414
    throw v3
.end method

.method public isPermissionEnforced(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2057
    const/4 v0, 0x1

    return v0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2124
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2131
    return v1

    .line 2134
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2135
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2136
    return v1

    .line 2139
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2141
    .local v2, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 2144
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    return v1

    .line 2144
    .end local v4    # "flags":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    throw v1
.end method

.method public synthetic lambda$grantDefaultPermissionsToActiveLuiApp$7$PermissionManagerService(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2012
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2013
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 2012
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledCarrierApps$3$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1964
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1965
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 1964
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledImsServices$4$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1976
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 1975
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$5$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1987
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 1988
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 1987
    return-void
.end method

.method public synthetic lambda$resetRuntimePermissions$1$PermissionManagerService(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1711
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$9$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "hasMoreBackup"    # Ljava/lang/Boolean;

    .line 2205
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    return-void

    .line 2209
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2211
    monitor-exit v0

    .line 2212
    return-void

    .line 2211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$6$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2000
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2001
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 2000
    return-void
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromLuiApps$8$PermissionManagerService([Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2024
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 2023
    return-void
.end method

.method public synthetic lambda$updatePermissionFlagsForAllApps$0$PermissionManagerService([ZIIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5
    .param p1, "changed"    # [Z
    .param p2, "userId"    # I
    .param p3, "effectiveFlagMask"    # I
    .param p4, "effectiveFlagValues"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 884
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 885
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 886
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 890
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    aget-boolean v3, p1, v2

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p1, v2

    .line 892
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 893
    return-void
.end method

.method public synthetic lambda$updatePermissionSourcePackage$12$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 6
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p4, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4312
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4313
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4312
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method public synthetic lambda$updatePermissions$11$PermissionManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 2
    .param p1, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replaceAll"    # Z
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "changingPkgName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p6, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4238
    if-ne p6, p1, :cond_0

    .line 4239
    return-void

    .line 4242
    :cond_0
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 4243
    .local v0, "volumeUuid":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4244
    .local v1, "replace":Z
    :goto_0
    invoke-direct {p0, p6, v1, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4245
    return-void
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 585
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 586
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 587
    return-object v2

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 591
    monitor-exit v1

    return-object v2

    .line 593
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 595
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 596
    .local v5, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_2

    .line 597
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    goto :goto_0

    .line 600
    :cond_3
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v3

    .line 601
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1103
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->removeListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1108
    monitor-exit v0

    .line 1109
    return-void

    .line 1108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1104
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 7
    .param p1, "permName"    # Ljava/lang/String;

    .line 641
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 642
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 646
    .local v1, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 647
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 648
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_0

    .line 649
    monitor-exit v2

    return-void

    .line 651
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 657
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 658
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v2

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 643
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1245
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1248
    return v1

    .line 1251
    :cond_0
    nop

    .line 1252
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1253
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1257
    :cond_1
    return v1
.end method

.method public resetRuntimePermissions()V
    .locals 7

    .line 1696
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1701
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 1702
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v3, "resetRuntimePermissions"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :cond_0
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1709
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 1710
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 1709
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1713
    :cond_1
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1997
    .local v0, "callingUid":I
    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 1999
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2000
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$T4uCZ9__oEXYpzLBYEW1T_BN3SU;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$T4uCZ9__oEXYpzLBYEW1T_BN3SU;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2003
    monitor-exit v1

    .line 2004
    return-void

    .line 2003
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2020
    .local v0, "callingUid":I
    nop

    .line 2021
    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2022
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2023
    :try_start_0
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$E0rM1FNIqzKUZzqphmkzeY3ZdTk;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$E0rM1FNIqzKUZzqphmkzeY3ZdTk;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2025
    monitor-exit v1

    .line 2026
    return-void

    .line 2025
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 1583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1584
    .local v8, "callingUid":I
    nop

    .line 1585
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v0, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1588
    .local v3, "overridePolicy":Z
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, v8

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1590
    return-void
.end method

.method public setAutoRevokeWhitelisted(Ljava/lang/String;ZI)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "whitelisted"    # Z
    .param p3, "userId"    # I

    .line 1347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1350
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1351
    .local v1, "callingUid":I
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1353
    .local v2, "packageUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1354
    return v4

    .line 1357
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x62

    .line 1358
    invoke-virtual {v3, v5, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1362
    return v4

    .line 1365
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1367
    .local v5, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    .line 1369
    const/4 v8, 0x1

    if-eqz p2, :cond_2

    move v4, v8

    .line 1367
    :cond_2
    invoke-virtual {v3, v7, v2, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    nop

    .line 1373
    return v8

    .line 1371
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    throw v3
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1921
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method public setPermissionEnforced(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "enforced"    # Z

    .line 2031
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "setPermissionEnforced"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2034
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->setReadExternalStorageEnforced(Z)V

    .line 2037
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2038
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 2039
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2041
    .local v1, "token":J
    :try_start_0
    const-string/jumbo v3, "setPermissionEnforcement"

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->killProcessesBelowForeground(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2044
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2045
    throw v3

    .line 2042
    :catch_0
    move-exception v3

    .line 2044
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "token":J
    :cond_0
    nop

    .line 2050
    return-void

    .line 2048
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No selective enforcement for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2071
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2072
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 2073
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShowRequestPermissionRationale for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v6, 0x10000000

    .line 2079
    invoke-virtual {v0, v3, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    .line 2080
    .local v6, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_1

    .line 2081
    return v8

    .line 2084
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 2086
    return v8

    .line 2091
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2093
    .local v9, "identity":J
    :try_start_0
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v7, v0

    .line 2095
    .local v7, "flags":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2096
    nop

    .line 2098
    const/16 v11, 0x16

    .line 2102
    .local v11, "fixedFlags":I
    and-int/lit8 v0, v7, 0x16

    if-eqz v0, :cond_3

    .line 2103
    return v8

    .line 2106
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2108
    .local v12, "token":J
    const/4 v14, 0x1

    :try_start_1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v15, v9

    .end local v9    # "identity":J
    .local v15, "identity":J
    const-wide/32 v8, 0x8c7dff3

    .line 2109
    :try_start_2
    invoke-interface {v0, v8, v9, v3, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    .line 2111
    nop

    .line 2116
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2111
    return v14

    .line 2113
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2108
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :cond_4
    move-wide v15, v9

    .line 2116
    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :cond_5
    nop

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2117
    goto :goto_2

    .line 2116
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_0
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    goto :goto_4

    .line 2113
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catch_1
    move-exception v0

    move-wide v15, v9

    .line 2114
    .end local v9    # "identity":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "identity":J
    :goto_1
    :try_start_3
    const-string v8, "PackageManager"

    const-string v9, "Unable to check if compatibility change is enabled."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2116
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2119
    :goto_2
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_6

    move v8, v14

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    return v8

    .line 2116
    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2117
    throw v0

    .line 2095
    .end local v7    # "flags":I
    .end local v11    # "fixedFlags":I
    .end local v12    # "token":J
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_2
    move-exception v0

    move-wide v15, v9

    move-object v7, v0

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2096
    throw v7
.end method

.method public startOneTimePermissionSession(Ljava/lang/String;IJII)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeoutMillis"    # J
    .param p5, "importanceToResetTimer"    # I
    .param p6, "importanceToKeepSessionAlive"    # I

    .line 3375
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3382
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(Ljava/lang/String;JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3385
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3386
    nop

    .line 3387
    return-void

    .line 3385
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3386
    throw v2
.end method

.method public stopOneTimePermissionSession(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3391
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3398
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3400
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3401
    nop

    .line 3402
    return-void

    .line 3400
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3401
    throw v2
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 12
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I

    .line 704
    move-object v10, p0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v11

    .line 705
    .local v11, "callingUid":I
    const/4 v1, 0x0

    .line 707
    .local v1, "overridePolicy":Z
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    if-eqz v11, :cond_3

    .line 708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 710
    .local v2, "callingIdentity":J
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 711
    if-eqz p5, :cond_0

    .line 712
    :try_start_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v5, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_1

    .line 724
    :goto_0
    const/4 v0, 0x1

    move v1, v0

    .end local v1    # "overridePolicy":Z
    .local v0, "overridePolicy":Z
    goto :goto_1

    .line 718
    .end local v0    # "overridePolicy":Z
    .restart local v1    # "overridePolicy":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "overridePolicy":Z
    .end local v2    # "callingIdentity":J
    .end local v11    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "permName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "checkAdjustPolicyFlagPermission":Z
    .end local p6    # "userId":I
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .restart local v1    # "overridePolicy":Z
    .restart local v2    # "callingIdentity":J
    .restart local v11    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "permName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    .restart local p5    # "checkAdjustPolicyFlagPermission":Z
    .restart local p6    # "userId":I
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    throw v0

    .line 727
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    move v0, v1

    goto :goto_2

    .line 731
    .end local v2    # "callingIdentity":J
    :cond_3
    move v0, v1

    .end local v1    # "overridePolicy":Z
    .restart local v0    # "overridePolicy":Z
    :goto_2
    iget-object v9, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move v6, v11

    move/from16 v7, p6

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 734
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 13
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 863
    move-object v7, p0

    move/from16 v8, p3

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v9

    .line 864
    .local v9, "callingUid":I
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v8}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    return-void

    .line 868
    :cond_0
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 870
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "updatePermissionFlagsForAllApps"

    move-object v0, p0

    move v1, v9

    move/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 877
    const/16 v0, 0x3e8

    if-eq v9, v0, :cond_1

    .line 878
    move v4, p1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, p1, -0x11

    move v4, v1

    .line 879
    .local v4, "effectiveFlagMask":I
    :goto_0
    if-eq v9, v0, :cond_2

    .line 880
    move v5, p2

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p2, -0x11

    move v5, v0

    .line 882
    .local v5, "effectiveFlagValues":I
    :goto_1
    const/4 v6, 0x1

    new-array v10, v6, [Z

    .line 883
    .local v10, "changed":[Z
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[ZIII)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 895
    const/4 v0, 0x0

    aget-boolean v1, v10, v0

    if-eqz v1, :cond_3

    .line 896
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-array v2, v6, [I

    aput v8, v2, v0

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 898
    :cond_3
    return-void
.end method
