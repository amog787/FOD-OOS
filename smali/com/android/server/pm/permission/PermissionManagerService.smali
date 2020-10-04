.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    }
.end annotation


# static fields
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

.field private static final IS_SUPPORT_COLOR_ADS:Z

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private mBackgroundPermissions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xfc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/permission/PermissionManagerService;->IS_SUPPORT_COLOR_ADS:Z

    .line 149
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    .line 154
    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 172
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalLock"    # Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 234
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 244
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 245
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 246
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 247
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 248
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 250
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x1

    const-string v2, "PackageManager"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 253
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 254
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 256
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 257
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v2, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 258
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 259
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 260
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 264
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    .line 265
    .local v2, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 266
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 267
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 268
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 269
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_0

    .line 270
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 271
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 273
    :cond_0
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_1

    .line 274
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 266
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v4    # "i":I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    .line 281
    .local v1, "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 282
    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 283
    return-void

    .line 277
    .end local v1    # "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 134
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # [I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/Collection;
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # Z
    .param p8, "x8"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/util/Collection;
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 134
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BLandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PermissionInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 134
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 723
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 724
    .local v0, "N":I
    const/4 v1, 0x0

    .line 725
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "PackageManager"

    if-ge v2, v0, :cond_7

    .line 726
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 727
    .local v4, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 728
    .local v5, "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 729
    .local v6, "curPackageName":Ljava/lang/String;
    :goto_1
    iget-object v7, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 730
    .local v7, "isPackageUpdate":Z
    const/16 v8, 0x100

    const/16 v9, 0x20

    if-eqz v5, :cond_3

    if-eqz v7, :cond_1

    goto :goto_3

    .line 744
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-eqz p2, :cond_6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_6

    .line 748
    if-nez v1, :cond_2

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_2

    .line 751
    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    :goto_2
    const-string v3, "DUP:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 731
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v10, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    if-eqz p2, :cond_6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_6

    .line 733
    if-nez v1, :cond_4

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_4

    .line 736
    :cond_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    :goto_4
    if-eqz v7, :cond_5

    .line 739
    const-string v3, "UPD:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :cond_5
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .end local v4    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v5    # "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v6    # "curPackageName":Ljava/lang/String;
    .end local v7    # "isPackageUpdate":Z
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 758
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_8

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Permission Groups: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_8
    return-void
.end method

.method private addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 685
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 686
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 687
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 690
    .local v2, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 692
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 697
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_0

    .line 698
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 700
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v4, :cond_0

    .line 702
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in an unknown group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v4, :cond_1

    .line 708
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 709
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 710
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 708
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 711
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 712
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_1

    .line 713
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 714
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 715
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 713
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 716
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 718
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1
    monitor-exit v3

    .line 686
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 718
    .restart local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 720
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :cond_2
    return-void
.end method

.method private addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 9
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 819
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 822
    iget v0, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Label must be specified in permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 828
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 830
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 831
    .local v3, "added":Z
    :goto_1
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    .line 832
    .local v4, "fixedLevel":I
    if-eqz v3, :cond_3

    .line 833
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 834
    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_2

    .line 836
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 840
    :goto_2
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v5

    .line 841
    .local v5, "changed":Z
    if-eqz v3, :cond_4

    .line 842
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 844
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "fixedLevel":I
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    if-eqz v5, :cond_5

    if-eqz p3, :cond_5

    .line 846
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionChanged()V

    .line 848
    :cond_5
    return v3

    .line 837
    .end local v5    # "changed":Z
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "fixedLevel":I
    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "info":Landroid/content/pm/PermissionInfo;
    .end local p2    # "callingUid":I
    .end local p3    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    throw v5

    .line 844
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "added":Z
    .end local v4    # "fixedLevel":I
    .restart local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 820
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant apps can\'t add permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 463
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    monitor-exit v0

    .line 466
    return-void

    .line 465
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

    .line 575
    and-int/lit8 v0, p1, 0x3

    .line 579
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 580
    return p1

    .line 583
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 584
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_6

    if-eqz v1, :cond_6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 590
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_2

    .line 591
    return p1

    .line 593
    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_3

    .line 594
    return v0

    .line 597
    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 598
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_4

    .line 599
    return p1

    .line 601
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 602
    return p1

    .line 604
    :cond_5
    return p1

    .line 586
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6
    :goto_0
    return p1
.end method

.method private backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 403
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 404
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;)V

    .line 408
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

    .line 409
    :catch_0
    move-exception v1

    .line 410
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

    .line 411
    const/4 v2, 0x0

    return-object v2
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .locals 4
    .param p1, "tree"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    .line 3032
    const/4 v0, 0x0

    .line 3033
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

    .line 3034
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 3035
    .end local v2    # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 3036
    :cond_0
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .locals 4
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"    # Ljava/lang/String;

    .line 1989
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1990
    return v1

    .line 1994
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1995
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 1999
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1996
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

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "replace"    # Z
    .param p3, "updatedUserIds"    # [I

    .line 1574
    if-eqz p2, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1575
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1576
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0

    .line 1580
    :cond_1
    return-object p3
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 313
    return v1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 317
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 318
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    return v1

    .line 321
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 322
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    .line 323
    .local v3, "instantApp":Z
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 324
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 325
    if-eqz v3, :cond_3

    .line 326
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 327
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    .line 328
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 329
    monitor-exit v5

    return v6

    .line 331
    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 333
    :cond_3
    return v6

    .line 336
    :cond_4
    :goto_0
    invoke-static {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 337
    return v6

    .line 341
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "instantApp":Z
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_5
    return v1
.end method

.method private checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .locals 8
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "uid"    # I
    .param p4, "callingUid"    # I

    .line 346
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 347
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 348
    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 349
    .local v1, "isCallerInstantApp":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 350
    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 351
    .local v2, "isUidInstantApp":Z
    :goto_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 352
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_2

    .line 353
    return v6

    .line 356
    :cond_2
    if-eqz p2, :cond_8

    .line 357
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 358
    if-eqz v1, :cond_4

    .line 359
    return v6

    .line 361
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p2, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 362
    return v6

    .line 364
    :cond_4
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 365
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 366
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 367
    if-eqz v2, :cond_5

    .line 368
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 369
    return v3

    .line 372
    :cond_5
    return v3

    .line 375
    :cond_6
    invoke-static {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 376
    return v3

    .line 378
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_7
    goto :goto_2

    .line 379
    :cond_8
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 380
    .local v5, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_a

    .line 381
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 382
    return v3

    .line 384
    :cond_9
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 385
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 386
    return v3

    .line 390
    .end local v5    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a
    :goto_2
    return v6
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalLock"    # Ljava/lang/Object;

    .line 296
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 297
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 298
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    if-eqz v0, :cond_0

    .line 299
    return-object v0

    .line 301
    :cond_0
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 302
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

    .line 485
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    monitor-exit v0

    return-void

    .line 489
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 490
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 493
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 490
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

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 2998
    if-ltz p2, :cond_7

    .line 3001
    if-eqz p4, :cond_0

    .line 3002
    const-string/jumbo v0, "no_debugging_features"

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 3005
    :cond_0
    if-nez p5, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_1

    return-void

    .line 3008
    :cond_1
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-nez p2, :cond_4

    .line 3010
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 3011
    :cond_3
    return-void

    .line 3014
    :cond_4
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_6

    .line 3015
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p3, :cond_5

    .line 3016
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3020
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3025
    goto :goto_0

    .line 3022
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "se":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_6
    :goto_0
    return-void

    .line 2999
    :cond_7
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

    .line 2976
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2978
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2980
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2982
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

    .line 2987
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 2965
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2967
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2969
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

    .line 2973
    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    .line 3043
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 3044
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 3045
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 3046
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3049
    .end local v0    # "curTreeSize":I
    :cond_1
    :goto_0
    return-void
.end method

.method private getAllPermissionGroups(II)Ljava/util/List;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 526
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 528
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 529
    .local v4, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    nop

    .end local v4    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    goto :goto_0

    .line 531
    :cond_1
    monitor-exit v0

    return-object v2

    .line 532
    .end local v1    # "N":I
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 2586
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2587
    return-object v1

    .line 2589
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2590
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2591
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 2592
    monitor-exit v0

    return-object v1

    .line 2594
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2595
    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 2600
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2601
    return v1

    .line 2604
    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2606
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2612
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2613
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_0

    .line 2616
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2617
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2618
    monitor-exit v2

    return v1

    .line 2620
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2621
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2622
    return v1

    .line 2624
    :cond_3
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2625
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2626
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 2620
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2614
    :cond_4
    :goto_0
    return v1
.end method

.method private getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I

    .line 511
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    return-object v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 516
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 515
    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callingUid"    # I

    .line 537
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 538
    return-object v1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 543
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_1

    .line 544
    monitor-exit v0

    return-object v1

    .line 546
    :cond_1
    nop

    .line 547
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v1

    .line 546
    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v1

    .line 548
    .local v1, "adjustedProtectionLevel":I
    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 549
    .end local v1    # "adjustedProtectionLevel":I
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 555
    return-object v1

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    monitor-exit v0

    return-object v1

    .line 561
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 563
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 564
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_2

    .line 565
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    goto :goto_0

    .line 568
    :cond_3
    monitor-exit v0

    return-object v1

    .line 569
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 3063
    if-nez p0, :cond_0

    .line 3064
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 3066
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3067
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3068
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 3070
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    return-object v0

    .line 3073
    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "whitelistFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2074
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2075
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 2076
    const/4 v1, 0x0

    return-object v1

    .line 2079
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 2081
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    .line 2082
    .local v2, "queryFlags":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 2083
    or-int/lit16 v2, v2, 0x1000

    .line 2085
    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    .line 2086
    or-int/lit16 v2, v2, 0x2000

    .line 2088
    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    .line 2089
    or-int/lit16 v2, v2, 0x800

    .line 2092
    :cond_3
    const/4 v3, 0x0

    .line 2094
    .local v3, "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2095
    .local v4, "permissionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 2096
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2097
    .local v6, "permissionName":Ljava/lang/String;
    invoke-virtual {v1, v6, p3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    .line 2098
    .local v7, "currentFlags":I
    and-int v8, v7, v2

    if-eqz v8, :cond_5

    .line 2099
    if-nez v3, :cond_4

    .line 2100
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 2102
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "currentFlags":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2106
    .end local v5    # "i":I
    :cond_6
    return-object v3
.end method

.method private grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2065
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v8, p2, v1

    .line 2066
    .local v8, "userId":I
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2065
    .end local v8    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2069
    :cond_0
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 22
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2121
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2122
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_0

    .line 2123
    return-void

    .line 2126
    :cond_0
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    .line 2128
    .local v15, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v16, 0x14

    .line 2131
    .local v16, "immutableFlags":I
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    .line 2134
    .local v17, "supportsRuntimePermissions":Z
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 2136
    .local v18, "instantApp":Z
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 2138
    .local v9, "permission":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2139
    :try_start_0
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object/from16 v19, v2

    .line 2140
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    if-eqz v18, :cond_3

    .line 2142
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_3
    if-nez v17, :cond_4

    .line 2143
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_4
    if-eqz v13, :cond_5

    .line 2145
    invoke-static {v13, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2146
    :cond_5
    invoke-virtual {v15, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v20

    .line 2147
    .local v20, "flags":I
    if-eqz v17, :cond_6

    .line 2149
    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_9

    .line 2150
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    .line 2156
    :cond_6
    and-int/lit8 v1, v20, 0x40

    if-eqz v1, :cond_7

    .line 2157
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

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

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    .line 2156
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .restart local v21    # "permission":Ljava/lang/String;
    goto :goto_2

    .line 2141
    .end local v20    # "flags":I
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_8
    move-object/from16 v21, v9

    .line 2163
    .end local v9    # "permission":Ljava/lang/String;
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_9
    :goto_2
    goto :goto_1

    .line 2140
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

    .line 2164
    .end local v21    # "permission":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 16
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2168
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    return-void

    .line 2173
    :cond_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2183
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2184
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_16

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 2188
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2189
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v3, v0

    .line 2190
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2191
    if-eqz v3, :cond_15

    .line 2194
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2198
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 2204
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    .line 2205
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2206
    return-void

    .line 2209
    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2211
    .local v5, "uid":I
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 2212
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 2214
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 2215
    .local v13, "flags":I
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_2

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant system fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    return-void

    .line 2220
    :cond_2
    if-nez p3, :cond_3

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_3

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant policy fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    return-void

    .line 2226
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    and-int/lit16 v0, v13, 0x3800

    if-nez v0, :cond_4

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    return-void

    .line 2233
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2234
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 2233
    invoke-static {v0, v14, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v0

    .line 2234
    invoke-virtual {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->canBeGranted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant soft restricted permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    return-void

    .line 2240
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_7

    .line 2243
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_6

    .line 2245
    if-eqz v12, :cond_6

    .line 2246
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 2249
    :cond_6
    return-void

    .line 2252
    :cond_7
    invoke-virtual {v6, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 2253
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2257
    :cond_9
    :goto_0
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_a

    .line 2258
    const-string v0, "PackageManager"

    const-string v2, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    return-void

    .line 2262
    :cond_a
    invoke-virtual {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v2

    .line 2263
    .local v2, "result":I
    if-eq v2, v14, :cond_13

    const/4 v0, 0x1

    if-eq v2, v0, :cond_b

    goto :goto_1

    .line 2269
    :cond_b
    if-eqz v12, :cond_c

    .line 2270
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 2276
    :cond_c
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2277
    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 2280
    :cond_d
    if-eqz v12, :cond_e

    .line 2281
    invoke-virtual {v12, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 2284
    :cond_e
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2285
    invoke-direct {v8, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2291
    :cond_f
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2292
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2293
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2295
    .local v14, "token":J
    :try_start_1
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2296
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2298
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v0, v5, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2301
    .end local v0    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2302
    nop

    .line 2305
    .end local v14    # "token":J
    :cond_12
    return-void

    .line 2301
    .restart local v14    # "token":J
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2265
    .end local v14    # "token":J
    :cond_13
    return-void

    .line 2195
    .end local v2    # "result":I
    .end local v5    # "uid":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "flags":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2192
    :cond_15
    move/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2190
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_1
    move-exception v0

    move/from16 v4, p4

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 2184
    :cond_16
    move/from16 v4, p4

    .line 2185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 19
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2032
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_0

    .line 2033
    return-void

    .line 2035
    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2036
    return-void

    .line 2038
    :cond_1
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2039
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 2040
    .local v9, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_9

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 2043
    :cond_2
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 2044
    .local v10, "disabledPs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 2047
    :cond_3
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2048
    .local v11, "permCount":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_7

    .line 2049
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 2050
    .local v13, "permission":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v14

    .line 2051
    .local v14, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v14}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2052
    goto :goto_3

    .line 2054
    :cond_4
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v15

    array-length v6, v15

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_6

    aget v4, v15, v5

    .line 2055
    .local v4, "userId":I
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, v13, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2056
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v16, v4

    .end local v4    # "userId":I
    .local v16, "userId":I
    move/from16 v4, p2

    move/from16 v17, v5

    move/from16 v5, v16

    move/from16 v18, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_2

    .line 2055
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    :cond_5
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .line 2054
    .end local v4    # "userId":I
    :goto_2
    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto :goto_1

    .line 2048
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2061
    .end local v12    # "i":I
    :cond_7
    return-void

    .line 2045
    .end local v11    # "permCount":I
    :cond_8
    :goto_4
    return-void

    .line 2041
    .end local v10    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_9
    :goto_5
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .locals 22
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p4, "origPermissions"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 1722
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v3

    .line 1723
    .local v3, "oemPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    .line 1724
    .local v4, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 1725
    .local v5, "privilegedPermission":Z
    :goto_1
    sget-boolean v8, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 1727
    .local v8, "privappPermissionsDisable":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1728
    .local v9, "platformPermission":Z
    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1737
    .local v10, "platformPackage":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v11

    .line 1738
    .local v11, "systemApp":Z
    const-string v12, "PackageManager"

    if-nez v8, :cond_b

    if-eqz v5, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v11, :cond_b

    if-nez v10, :cond_b

    if-eqz v9, :cond_b

    .line 1741
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1743
    iget-boolean v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v13, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v13

    if-nez v13, :cond_a

    .line 1745
    const/4 v13, 0x0

    .line 1746
    .local v13, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1747
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1748
    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    goto :goto_2

    .line 1749
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1750
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1751
    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    goto :goto_2

    .line 1752
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1753
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1754
    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    goto :goto_2

    .line 1756
    :cond_4
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v14

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1757
    invoke-virtual {v14, v15}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    .line 1759
    :goto_2
    if-eqz v13, :cond_6

    .line 1760
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v14, 0x1

    .line 1761
    .local v14, "permissionViolation":Z
    :goto_4
    if-eqz v14, :cond_9

    .line 1762
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Privileged permission "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for package "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - not in privapp-permissions whitelist"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_8

    .line 1766
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v6, :cond_7

    .line 1767
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iput-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 1769
    :cond_7
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_5

    .line 1765
    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    .line 1772
    :cond_9
    const/4 v6, 0x0

    return v6

    .line 1743
    .end local v13    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "permissionViolation":Z
    :cond_a
    const/4 v6, 0x0

    .line 1775
    :goto_5
    sget-boolean v7, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v7, :cond_b

    .line 1776
    return v6

    .line 1780
    :cond_b
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v6

    .line 1782
    .local v6, "systemPackageName":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1783
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1792
    .local v7, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1794
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    .line 1793
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1795
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1798
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1799
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v13, 0x1

    .line 1806
    .local v13, "allowed":Z
    :goto_7
    const/4 v14, 0x1

    new-array v15, v14, [I

    const/4 v14, 0x0

    aput v14, v15, v14

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1807
    if-nez v13, :cond_e

    .line 1808
    invoke-static {v2, v1}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->allowOrdinaryAppGrantingSigPerms(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1809
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Allowing package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to get permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const/4 v13, 0x1

    .line 1815
    :cond_e
    if-nez v13, :cond_2b

    if-nez v5, :cond_10

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto/16 :goto_10

    .line 1816
    :cond_10
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 1819
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v14

    if-eqz v14, :cond_26

    .line 1820
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1821
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1823
    .local v14, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_11

    iget-object v15, v14, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    goto :goto_9

    :cond_11
    const/4 v15, 0x0

    .line 1824
    .local v15, "disabledPs":Lcom/android/server/pm/PackageSetting;
    :goto_9
    if-eqz v15, :cond_15

    .line 1825
    move-object/from16 v16, v6

    .end local v6    # "systemPackageName":Ljava/lang/String;
    .local v16, "systemPackageName":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1829
    if-eqz v5, :cond_12

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_13

    :cond_12
    if-eqz v3, :cond_14

    .line 1830
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1831
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1832
    :cond_13
    const/4 v13, 0x1

    move-object/from16 v17, v7

    goto/16 :goto_d

    .line 1880
    .end local v14    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v15    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_14
    move-object/from16 v17, v7

    goto/16 :goto_d

    .line 1824
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v6    # "systemPackageName":Ljava/lang/String;
    .restart local v14    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v15    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_15
    move-object/from16 v16, v6

    .line 1841
    .end local v6    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    :cond_16
    if-eqz v15, :cond_19

    if-eqz v14, :cond_19

    .line 1842
    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    if-eqz v5, :cond_17

    .line 1843
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_18

    :cond_17
    if-eqz v3, :cond_19

    .line 1844
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1845
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1846
    :cond_18
    const/4 v13, 0x1

    .line 1851
    :cond_19
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_25

    .line 1852
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v17, v7

    .end local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .local v17, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1853
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1854
    .local v6, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1a

    .line 1855
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_a

    :cond_1a
    const/4 v7, 0x0

    .line 1856
    .local v7, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :goto_a
    if-eqz v6, :cond_24

    if-eqz v5, :cond_1b

    .line 1857
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v18

    if-nez v18, :cond_1c

    :cond_1b
    if-eqz v3, :cond_23

    .line 1858
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v18

    if-eqz v18, :cond_22

    .line 1859
    :cond_1c
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 1860
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 1861
    const/4 v13, 0x1

    goto :goto_d

    .line 1862
    :cond_1d
    move-object/from16 v18, v7

    .end local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .local v18, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v7, :cond_21

    .line 1864
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    .end local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v20, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v6, v19

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 1866
    .local v6, "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1e

    .line 1867
    move-object/from16 v19, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_c

    .line 1868
    :cond_1e
    move-object/from16 v19, v7

    const/4 v7, 0x0

    :goto_c
    nop

    .line 1869
    .local v7, "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 1870
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 1872
    const/4 v13, 0x1

    .line 1873
    goto :goto_d

    .line 1875
    .end local v6    # "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    :cond_1f
    move-object/from16 v7, v19

    move-object/from16 v6, v20

    goto :goto_b

    .line 1864
    .end local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v6, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    :cond_20
    move-object/from16 v20, v6

    .end local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_d

    .line 1862
    .end local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    :cond_21
    move-object/from16 v20, v6

    .end local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_d

    .line 1858
    .end local v18    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v7, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :cond_22
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .end local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_d

    .line 1857
    .end local v18    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :cond_23
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .end local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_d

    .line 1856
    .end local v18    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :cond_24
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .end local v6    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v18    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_d

    .line 1851
    .end local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .end local v18    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v7, "systemPackage":Landroid/content/pm/PackageParser$Package;
    :cond_25
    move-object/from16 v17, v7

    .line 1880
    .end local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v15    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    :goto_d
    goto :goto_f

    .line 1881
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .end local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .local v6, "systemPackageName":Ljava/lang/String;
    .restart local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    :cond_26
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "systemPackageName":Ljava/lang/String;
    .end local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1882
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_27

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    if-eqz v3, :cond_29

    .line 1883
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isOem()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1884
    invoke-static {v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    :cond_28
    const/4 v7, 0x1

    goto :goto_e

    :cond_29
    const/4 v7, 0x0

    :goto_e
    move v13, v7

    .line 1889
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_f
    if-eqz v13, :cond_2c

    if-eqz v5, :cond_2c

    if-nez v4, :cond_2c

    .line 1890
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be granted to privileged vendor apk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/4 v13, 0x0

    goto :goto_10

    .line 1816
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .end local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .local v6, "systemPackageName":Ljava/lang/String;
    .restart local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2a
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "systemPackageName":Ljava/lang/String;
    .end local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_10

    .line 1815
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .end local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "systemPackageName":Ljava/lang/String;
    .restart local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2b
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 1897
    .end local v6    # "systemPackageName":Ljava/lang/String;
    .end local v7    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v17    # "systemPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2c
    :goto_10
    if-nez v13, :cond_39

    .line 1898
    if-nez v13, :cond_2d

    .line 1899
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_2d

    .line 1904
    const/4 v13, 0x1

    .line 1909
    :cond_2d
    if-nez v13, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x2

    .line 1910
    const/4 v14, 0x0

    invoke-virtual {v7, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x6

    .line 1912
    invoke-virtual {v7, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1917
    :cond_2e
    const/4 v13, 0x1

    .line 1919
    :cond_2f
    if-nez v13, :cond_30

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v6

    if-eqz v6, :cond_30

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v12, 0x3

    .line 1920
    const/4 v14, 0x0

    invoke-virtual {v7, v12, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1924
    const/4 v13, 0x1

    .line 1926
    :cond_30
    if-nez v13, :cond_31

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1929
    const/4 v13, 0x1

    .line 1931
    :cond_31
    if-nez v13, :cond_32

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1934
    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    goto :goto_11

    .line 1931
    :cond_32
    move-object/from16 v6, p4

    .line 1936
    :goto_11
    if-nez v13, :cond_33

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v7

    if-eqz v7, :cond_33

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1937
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1941
    const/4 v13, 0x1

    .line 1943
    :cond_33
    if-nez v13, :cond_34

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v7

    if-eqz v7, :cond_34

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x5

    .line 1944
    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1948
    const/4 v13, 0x1

    .line 1950
    :cond_34
    if-nez v13, :cond_35

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isConfigurator()Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x9

    .line 1951
    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1955
    const/4 v13, 0x1

    .line 1957
    :cond_35
    if-nez v13, :cond_36

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isWellbeing()Z

    move-result v7

    if-eqz v7, :cond_36

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x7

    .line 1958
    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1961
    const/4 v13, 0x1

    .line 1963
    :cond_36
    if-nez v13, :cond_37

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDocumenter()Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x8

    .line 1964
    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1968
    const/4 v13, 0x1

    .line 1970
    :cond_37
    if-nez v13, :cond_38

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isIncidentReportApprover()Z

    move-result v7

    if-eqz v7, :cond_38

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xa

    .line 1971
    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1976
    const/4 v7, 0x1

    move v13, v7

    .line 1978
    :cond_38
    if-nez v13, :cond_3a

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isAppPredictor()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xb

    .line 1979
    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1982
    const/4 v13, 0x1

    goto :goto_12

    .line 1897
    :cond_39
    move-object/from16 v6, p4

    .line 1985
    :cond_3a
    :goto_12
    return v13
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "permName"    # Ljava/lang/String;

    .line 3078
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3079
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3080
    return v1

    .line 3078
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3083
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1702
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    .line 1703
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1705
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    .line 1706
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1708
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_0

    .line 1711
    :cond_2
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1714
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 1716
    .local v3, "whitelisted":Z
    :goto_1
    if-nez v3, :cond_5

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_4

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1717
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 1716
    :goto_3
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V
    .locals 7
    .param p2, "newPerm"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p4, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Landroid/content/pm/PackageParser$Package;",
            "I)V"
        }
    .end annotation

    .line 1526
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1527
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1528
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 1530
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 1531
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 1532
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1533
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1534
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1542
    :cond_0
    if-nez v1, :cond_3

    .line 1543
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2

    .line 1535
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1536
    const/4 v2, 0x0

    .line 1539
    :cond_2
    const/4 v1, 0x1

    .line 1540
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    .line 1531
    .end local v5    # "sourcePerm":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1548
    .end local v4    # "i":I
    :cond_4
    if-eqz v1, :cond_6

    .line 1549
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_5

    .line 1550
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

    .line 1554
    :cond_5
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1558
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1559
    return-void
.end method

.method private static isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 505
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 506
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 6
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1675
    const/4 v0, 0x0

    .line 1676
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 1677
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1678
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 1680
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_0

    .line 1682
    const/4 v0, 0x1

    .line 1683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    goto :goto_1

    .line 1677
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1688
    .end local v2    # "ip":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "permission"    # Ljava/lang/String;

    .line 2019
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2020
    .local v0, "permCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2021
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2022
    .local v2, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2023
    const/4 v3, 0x1

    return v3

    .line 2020
    .end local v2    # "requestedPermission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2026
    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 2005
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 2006
    return v1

    .line 2010
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2011
    return v1

    .line 2013
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2014
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 2015
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2
.end method

.method public static synthetic lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3094
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3095
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 3096
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3098
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3099
    return-void
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 477
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    .line 479
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 478
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    return-void
.end method

.method private removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 765
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 767
    .local v1, "N":I
    const/4 v2, 0x0

    .line 768
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 769
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Permission;

    .line 770
    .local v4, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/BasePermission;

    .line 771
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_0

    .line 772
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    move-object v5, v6

    .line 774
    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/PackageParser$Permission;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 775
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/PackageParser$Permission;)V

    .line 776
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    .line 777
    if-nez v2, :cond_1

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v6

    goto :goto_1

    .line 780
    :cond_1
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    :goto_1
    iget-object v6, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Permission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 786
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 787
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 788
    .local v6, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 789
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 768
    .end local v4    # "p":Landroid/content/pm/PackageParser$Permission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 793
    .end local v3    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 794
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

    .line 797
    :cond_5
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 798
    const/4 v2, 0x0

    .line 799
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_7

    .line 800
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 801
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 802
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 803
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    .line 804
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 805
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 806
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 811
    .end local v3    # "i":I
    :cond_7
    if-eqz v2, :cond_8

    .line 812
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

    .line 814
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    :cond_8
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 853
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 857
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 859
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_0

    .line 860
    monitor-exit v1

    return-void

    .line 862
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 868
    if-eqz p3, :cond_2

    .line 869
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRemoved()V

    .line 871
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    monitor-exit v1

    .line 872
    return-void

    .line 871
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 854
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 443
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    monitor-exit v0

    return-void

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 449
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V

    .line 448
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/permission/PermissionControllerManager;->restoreDelayedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 37
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 903
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 904
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v12, :cond_0

    .line 905
    return-void

    .line 908
    :cond_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 909
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v1, v13

    .line 911
    .local v1, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v14

    .line 913
    .local v14, "currentUserIds":[I
    const/4 v2, 0x0

    .line 914
    .local v2, "runtimePermissionsRevoked":Z
    sget-object v3, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 916
    .local v3, "updatedUserIds":[I
    const/4 v4, 0x0

    .line 918
    .local v4, "changedInstallPermission":Z
    const/4 v0, 0x0

    if-eqz v9, :cond_3

    .line 919
    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 920
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v5

    if-nez v5, :cond_1

    .line 921
    new-instance v5, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v5, v13}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v1, v5

    .line 922
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    move-object v15, v1

    move v5, v2

    goto :goto_0

    .line 929
    :cond_1
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 930
    nop

    .line 931
    :try_start_0
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v15

    .line 930
    invoke-direct {v7, v6, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v6

    move-object v3, v6

    .line 932
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 933
    const/4 v2, 0x1

    .line 935
    :cond_2
    monitor-exit v5

    move-object v15, v1

    move v5, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 918
    :cond_3
    move-object v15, v1

    move v5, v2

    .line 939
    .end local v1    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v2    # "runtimePermissionsRevoked":Z
    .local v5, "runtimePermissionsRevoked":Z
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :goto_0
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v13, v1}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 941
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 942
    :try_start_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 944
    .local v1, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_21

    .line 945
    .local v6, "N":I
    const/16 v16, 0x0

    move/from16 v36, v4

    move-object v4, v3

    move/from16 v3, v16

    move/from16 v16, v36

    .local v3, "i":I
    .local v4, "updatedUserIds":[I
    .local v16, "changedInstallPermission":Z
    :goto_1
    if-ge v3, v6, :cond_67

    .line 946
    :try_start_2
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1a

    .line 947
    .local v0, "permName":Ljava/lang/String;
    move/from16 v19, v5

    .end local v5    # "runtimePermissionsRevoked":Z
    .local v19, "runtimePermissionsRevoked":Z
    :try_start_3
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 948
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    move/from16 v20, v6

    .end local v6    # "N":I
    .local v20, "N":I
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x17

    if-lt v6, v11, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 950
    .local v6, "appSupportsRuntimePermissions":Z
    :goto_2
    const/4 v11, 0x0

    .line 952
    .local v11, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_19

    if-eqz v21, :cond_5

    .line 953
    move-object/from16 v21, v11

    .end local v11    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v21, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_4
    const-string v11, "PackageManager"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v22, v4

    .end local v4    # "updatedUserIds":[I
    .local v22, "updatedUserIds":[I
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " checking "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1436
    .end local v0    # "permName":Ljava/lang/String;
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v20    # "N":I
    .end local v21    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v3, v22

    move-object v14, v7

    move-object v12, v10

    move/from16 v7, v19

    move/from16 v10, p2

    goto/16 :goto_2e

    .end local v22    # "updatedUserIds":[I
    .restart local v4    # "updatedUserIds":[I
    :catchall_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v3, v22

    move-object v14, v7

    move-object v12, v10

    move/from16 v7, v19

    move/from16 v10, p2

    .end local v4    # "updatedUserIds":[I
    .restart local v22    # "updatedUserIds":[I
    goto/16 :goto_2e

    .line 952
    .end local v22    # "updatedUserIds":[I
    .restart local v0    # "permName":Ljava/lang/String;
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "updatedUserIds":[I
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v11    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v20    # "N":I
    :cond_5
    move-object/from16 v22, v4

    move-object/from16 v21, v11

    .line 956
    .end local v4    # "updatedUserIds":[I
    .end local v11    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v21    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v22    # "updatedUserIds":[I
    :goto_3
    if-eqz v5, :cond_64

    :try_start_6
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-nez v4, :cond_6

    move-object/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v15, v0

    move-object v12, v10

    goto/16 :goto_27

    .line 968
    :cond_6
    invoke-virtual {v15, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_17

    if-nez v4, :cond_f

    :try_start_7
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    .line 969
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "android.permission.ACTIVITY_RECOGNITION"

    .line 970
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v24, v1

    goto/16 :goto_7

    .line 971
    :cond_8
    :goto_4
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 973
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 975
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_9

    .line 976
    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is newly added for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v1

    goto/16 :goto_7

    .line 975
    :cond_9
    move-object/from16 v24, v1

    goto/16 :goto_7

    .line 986
    :cond_a
    sget-object v4, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 987
    .local v4, "numSplitPerms":I
    const/4 v9, 0x0

    .local v9, "splitPermNum":I
    :goto_5
    if-ge v9, v4, :cond_e

    .line 988
    sget-object v11, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    .line 989
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 990
    .local v11, "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v11}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v23

    .line 991
    .local v24, "splitPermName":Ljava/lang/String;
    move/from16 v23, v4

    .end local v4    # "numSplitPerms":I
    .local v23, "numSplitPerms":I
    invoke-virtual {v11}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 992
    move-object/from16 v4, v24

    .end local v24    # "splitPermName":Ljava/lang/String;
    .local v4, "splitPermName":Ljava/lang/String;
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 993
    move-object/from16 v21, v4

    .line 994
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 996
    sget-boolean v24, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v24, :cond_b

    .line 997
    move-object/from16 v24, v1

    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v24, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v1, "PackageManager"

    move-object/from16 v25, v4

    .end local v4    # "splitPermName":Ljava/lang/String;
    .local v25, "splitPermName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v11

    .end local v11    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .local v26, "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    const-string v11, " is newly added for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 996
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "splitPermName":Ljava/lang/String;
    .end local v26    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "splitPermName":Ljava/lang/String;
    .restart local v11    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_b
    move-object/from16 v24, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v11

    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "splitPermName":Ljava/lang/String;
    .end local v11    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "splitPermName":Ljava/lang/String;
    .restart local v26    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    goto :goto_7

    .line 992
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "splitPermName":Ljava/lang/String;
    .end local v26    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "splitPermName":Ljava/lang/String;
    .restart local v11    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_c
    move-object/from16 v24, v1

    move-object/from16 v25, v4

    move-object/from16 v26, v11

    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "splitPermName":Ljava/lang/String;
    .end local v11    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "splitPermName":Ljava/lang/String;
    .restart local v26    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    goto :goto_6

    .line 991
    .end local v25    # "splitPermName":Ljava/lang/String;
    .end local v26    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .local v24, "splitPermName":Ljava/lang/String;
    :cond_d
    move-object/from16 v26, v11

    move-object/from16 v25, v24

    move-object/from16 v24, v1

    .line 987
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .local v24, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v23

    move-object/from16 v1, v24

    goto :goto_5

    .end local v23    # "numSplitPerms":I
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "numSplitPerms":I
    :cond_e
    move-object/from16 v24, v1

    move/from16 v23, v4

    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "numSplitPerms":I
    .restart local v23    # "numSplitPerms":I
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_7

    .line 968
    .end local v9    # "splitPermNum":I
    .end local v23    # "numSplitPerms":I
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v24, v1

    .line 1007
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_7
    move-object/from16 v1, v21

    .end local v21    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v1, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_8
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_17

    if-eqz v4, :cond_11

    :try_start_9
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1008
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_10

    .line 1009
    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Denying non-ephemeral permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    .line 1008
    :cond_10
    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    .line 1015
    :cond_11
    :try_start_a
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_17

    if-eqz v4, :cond_13

    if-nez v6, :cond_13

    .line 1016
    :try_start_b
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_12

    .line 1017
    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Denying runtime-only permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    .line 1016
    :cond_12
    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    .line 1023
    :cond_13
    :try_start_c
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1024
    .local v4, "perm":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1025
    .local v9, "allowedSig":Z
    const/4 v11, 0x1

    .line 1028
    .local v11, "grant":I
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_17

    if-eqz v21, :cond_14

    .line 1029
    move/from16 v21, v9

    .end local v9    # "allowedSig":Z
    .local v21, "allowedSig":Z
    :try_start_d
    iget-object v9, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    move/from16 v23, v11

    .end local v11    # "grant":I
    .local v23, "grant":I
    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4, v11}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    .line 1028
    .end local v21    # "allowedSig":Z
    .end local v23    # "grant":I
    .restart local v9    # "allowedSig":Z
    .restart local v11    # "grant":I
    :cond_14
    move/from16 v21, v9

    move/from16 v23, v11

    .line 1032
    .end local v9    # "allowedSig":Z
    .end local v11    # "grant":I
    .restart local v21    # "allowedSig":Z
    .restart local v23    # "grant":I
    :goto_8
    :try_start_e
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1034
    const/4 v11, 0x2

    move/from16 v25, v3

    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    goto :goto_a

    .line 1035
    .end local v11    # "grant":I
    .restart local v23    # "grant":I
    :cond_15
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_17

    if-eqz v9, :cond_18

    .line 1036
    :try_start_f
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-nez v9, :cond_17

    if-eqz v1, :cond_16

    goto :goto_9

    .line 1043
    :cond_16
    const/4 v11, 0x3

    move/from16 v25, v3

    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    goto :goto_a

    .line 1040
    .end local v11    # "grant":I
    .restart local v23    # "grant":I
    :cond_17
    :goto_9
    const/4 v11, 0x4

    move/from16 v25, v3

    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    goto :goto_a

    .line 1045
    .end local v11    # "grant":I
    .restart local v23    # "grant":I
    :cond_18
    :try_start_10
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_17

    if-eqz v9, :cond_1b

    .line 1047
    :try_start_11
    invoke-direct {v7, v4, v8, v5, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v9

    .line 1051
    .end local v21    # "allowedSig":Z
    .restart local v9    # "allowedSig":Z
    move/from16 v25, v3

    const/4 v11, 0x1

    .end local v3    # "i":I
    .local v25, "i":I
    new-array v3, v11, [I

    const/4 v11, 0x0

    aput v11, v3, v11

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1052
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    or-int/2addr v3, v9

    move v9, v3

    .line 1056
    :cond_19
    if-eqz v9, :cond_1a

    .line 1057
    const/4 v11, 0x2

    move/from16 v21, v9

    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    goto :goto_a

    .line 1056
    .end local v11    # "grant":I
    .restart local v23    # "grant":I
    :cond_1a
    move/from16 v21, v9

    move/from16 v11, v23

    goto :goto_a

    .line 1045
    .end local v9    # "allowedSig":Z
    .end local v25    # "i":I
    .restart local v3    # "i":I
    .restart local v21    # "allowedSig":Z
    :cond_1b
    move/from16 v25, v3

    .end local v3    # "i":I
    .restart local v25    # "i":I
    move/from16 v11, v23

    .line 1063
    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    :goto_a
    :try_start_12
    sget-boolean v3, Lcom/android/server/pm/permission/PermissionManagerService;->IS_SUPPORT_COLOR_ADS:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_17

    if-eqz v3, :cond_1d

    :try_start_13
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1064
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_1c

    .line 1065
    const-string v3, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v11

    .end local v11    # "grant":I
    .restart local v23    # "grant":I
    const-string v11, "granting permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_b

    .line 1064
    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    :cond_1c
    move/from16 v23, v11

    .line 1067
    .end local v11    # "grant":I
    .restart local v23    # "grant":I
    :goto_b
    const/4 v11, 0x2

    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    goto :goto_c

    .line 1063
    :cond_1d
    move/from16 v23, v11

    .line 1071
    .end local v11    # "grant":I
    .restart local v23    # "grant":I
    move/from16 v11, v23

    .end local v23    # "grant":I
    .restart local v11    # "grant":I
    :goto_c
    :try_start_14
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_17

    if-eqz v3, :cond_1e

    .line 1072
    :try_start_15
    const-string v3, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v0

    .end local v0    # "permName":Ljava/lang/String;
    .local v23, "permName":Ljava/lang/String;
    const-string v0, "Considering granting permission "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to package "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_d

    .line 1071
    .end local v23    # "permName":Ljava/lang/String;
    .restart local v0    # "permName":Ljava/lang/String;
    :cond_1e
    move-object/from16 v23, v0

    .line 1076
    .end local v0    # "permName":Ljava/lang/String;
    .restart local v23    # "permName":Ljava/lang/String;
    :goto_d
    const/4 v9, 0x1

    if-eq v11, v9, :cond_5f

    .line 1086
    :try_start_16
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    if-nez v18, :cond_20

    :try_start_17
    new-array v0, v9, [I

    const/16 v9, 0x16

    const/16 v17, 0x0

    aput v9, v0, v17

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 1087
    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1088
    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1089
    :cond_1f
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1094
    if-nez v21, :cond_20

    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1098
    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1099
    const/4 v11, 0x1

    .line 1104
    :cond_20
    const/4 v0, 0x2

    if-eq v11, v0, :cond_5b

    const/4 v0, 0x3

    if-eq v11, v0, :cond_3e

    const/4 v0, 0x4

    if-eq v11, v0, :cond_24

    .line 1385
    if-eqz v10, :cond_22

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1386
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_e

    :cond_21
    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    .line 1387
    :cond_22
    :goto_e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_23

    .line 1388
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not granting permission "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to package "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " because it was previously installed without"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    .line 1387
    :cond_23
    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_28

    .line 1258
    :cond_24
    nop

    .line 1259
    :try_start_18
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 1260
    .local v0, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v0, :cond_25

    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_f

    :cond_25
    const/4 v9, 0x0

    .line 1263
    .local v9, "flags":I
    :goto_f
    if-nez v1, :cond_26

    .line 1264
    move-object v3, v5

    goto :goto_10

    :cond_26
    :try_start_1a
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 1267
    .local v3, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_10
    move-object/from16 v27, v1

    .end local v1    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v27, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    invoke-virtual {v15, v3}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    move/from16 v28, v9

    const/4 v9, -0x1

    .end local v9    # "flags":I
    .local v28, "flags":I
    if-eq v1, v9, :cond_27

    .line 1269
    const v1, 0xbbff

    move/from16 v29, v11

    const/4 v11, 0x0

    .end local v11    # "grant":I
    .local v29, "grant":I
    :try_start_1b
    invoke-virtual {v15, v3, v9, v1, v11}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 1273
    const/4 v1, 0x1

    move/from16 v16, v1

    .end local v16    # "changedInstallPermission":Z
    .local v1, "changedInstallPermission":Z
    goto :goto_11

    .line 1267
    .end local v1    # "changedInstallPermission":Z
    .end local v29    # "grant":I
    .restart local v11    # "grant":I
    .restart local v16    # "changedInstallPermission":Z
    :cond_27
    move/from16 v29, v11

    .line 1276
    .end local v11    # "grant":I
    .restart local v29    # "grant":I
    :goto_11
    :try_start_1c
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v1

    .line 1277
    .local v1, "hardRestricted":Z
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v9

    .line 1279
    .local v9, "softRestricted":Z
    array-length v11, v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    move-object/from16 v30, v3

    move-object/from16 v10, v22

    const/4 v3, 0x0

    move/from16 v36, v28

    move-object/from16 v28, v12

    move/from16 v12, v36

    .end local v3    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v22    # "updatedUserIds":[I
    .local v10, "updatedUserIds":[I
    .local v12, "flags":I
    .local v28, "ps":Lcom/android/server/pm/PackageSetting;
    .local v30, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_12
    if-ge v3, v11, :cond_3d

    :try_start_1d
    aget v22, v14, v3

    move/from16 v31, v22

    .line 1283
    .local v31, "userId":I
    move/from16 v32, v11

    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v11, :cond_28

    :try_start_1e
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 1285
    move-object/from16 v33, v4

    move/from16 v4, v31

    .end local v31    # "userId":I
    .local v4, "userId":I
    .local v33, "perm":Ljava/lang/String;
    invoke-virtual {v11, v4}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    if-eqz v11, :cond_29

    const/4 v11, 0x1

    goto :goto_13

    .line 1436
    .end local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v1    # "hardRestricted":Z
    .end local v4    # "userId":I
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v9    # "softRestricted":Z
    .end local v12    # "flags":I
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v23    # "permName":Ljava/lang/String;
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    .end local v30    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v33    # "perm":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v11, v28

    move/from16 v10, p2

    move-object v14, v7

    move/from16 v7, v19

    goto/16 :goto_2e

    .line 1283
    .restart local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v1    # "hardRestricted":Z
    .local v4, "perm":Ljava/lang/String;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v9    # "softRestricted":Z
    .restart local v12    # "flags":I
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v23    # "permName":Ljava/lang/String;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "grant":I
    .restart local v30    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v31    # "userId":I
    :cond_28
    move-object/from16 v33, v4

    move/from16 v4, v31

    .line 1285
    .end local v31    # "userId":I
    .local v4, "userId":I
    .restart local v33    # "perm":Ljava/lang/String;
    :cond_29
    const/4 v11, 0x0

    .line 1287
    .local v11, "permissionPolicyInitialized":Z
    :goto_13
    const/16 v22, 0x0

    .line 1289
    .local v22, "wasChanged":Z
    :try_start_1f
    iget-object v7, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 1290
    invoke-virtual {v15, v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    and-int/lit16 v7, v7, 0x3800

    if-eqz v7, :cond_2a

    const/4 v7, 0x1

    goto :goto_14

    :cond_2a
    const/4 v7, 0x0

    .line 1292
    .local v7, "restrictionExempt":Z
    :goto_14
    move-object/from16 v31, v14

    .end local v14    # "currentUserIds":[I
    .local v31, "currentUserIds":[I
    :try_start_20
    iget-object v14, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v15, v14, v4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v14

    and-int/lit16 v14, v14, 0x4000

    if-eqz v14, :cond_2b

    const/4 v14, 0x1

    goto :goto_15

    :cond_2b
    const/4 v14, 0x0

    .line 1295
    .local v14, "restrictionApplied":Z
    :goto_15
    if-eqz v6, :cond_34

    .line 1297
    if-eqz v11, :cond_2f

    if-eqz v1, :cond_2f

    .line 1298
    if-nez v7, :cond_2e

    .line 1299
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v34

    if-eqz v34, :cond_2c

    .line 1300
    move-object/from16 v34, v0

    .end local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v34, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-object/from16 v35, v15

    const/4 v15, -0x1

    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v35, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eq v0, v15, :cond_2d

    .line 1302
    const/4 v0, 0x1

    move/from16 v22, v0

    .end local v22    # "wasChanged":Z
    .local v0, "wasChanged":Z
    goto :goto_16

    .line 1299
    .end local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v0, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v22    # "wasChanged":Z
    :cond_2c
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    .line 1304
    .end local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_2d
    :goto_16
    if-nez v14, :cond_30

    .line 1305
    or-int/lit16 v12, v12, 0x4000

    .line 1306
    const/16 v22, 0x1

    goto :goto_17

    .line 1298
    .end local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_2e
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    .end local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_17

    .line 1297
    .end local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_2f
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    .line 1310
    .end local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eqz v11, :cond_30

    if-eqz v9, :cond_30

    .line 1313
    if-nez v7, :cond_30

    if-nez v14, :cond_30

    .line 1314
    or-int/lit16 v12, v12, 0x4000

    .line 1315
    const/16 v22, 0x1

    .line 1320
    :cond_30
    :goto_17
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_31

    .line 1321
    and-int/lit8 v12, v12, -0x41

    .line 1322
    const/16 v22, 0x1

    .line 1325
    :cond_31
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_32

    .line 1326
    and-int/lit8 v12, v12, -0x9

    .line 1327
    const/16 v22, 0x1

    goto :goto_18

    .line 1329
    :cond_32
    if-eqz v11, :cond_33

    if-eqz v1, :cond_33

    if-eqz v7, :cond_37

    .line 1331
    :cond_33
    :try_start_21
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    const/4 v15, -0x1

    if-eq v0, v15, :cond_37

    .line 1333
    const/16 v22, 0x1

    goto :goto_18

    .line 1337
    .end local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_34
    move-object/from16 v34, v0

    move-object/from16 v35, v15

    .end local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v0, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v0, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1338
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    const/4 v15, -0x1

    if-eq v0, v15, :cond_35

    .line 1340
    or-int/lit8 v12, v12, 0x40

    .line 1341
    const/16 v22, 0x1

    .line 1346
    :cond_35
    if-eqz v11, :cond_37

    if-nez v1, :cond_36

    if-eqz v9, :cond_37

    :cond_36
    if-nez v7, :cond_37

    if-nez v14, :cond_37

    .line 1349
    or-int/lit16 v12, v12, 0x4000

    .line 1350
    const/16 v22, 0x1

    .line 1355
    :cond_37
    :goto_18
    if-eqz v11, :cond_3b

    .line 1356
    if-nez v1, :cond_38

    if-eqz v9, :cond_39

    :cond_38
    if-eqz v7, :cond_3b

    .line 1357
    :cond_39
    if-eqz v14, :cond_3b

    .line 1358
    and-int/lit16 v0, v12, -0x4001

    .line 1360
    .end local v12    # "flags":I
    .local v0, "flags":I
    if-nez v6, :cond_3a

    .line 1361
    or-int/lit8 v0, v0, 0x40

    move v12, v0

    goto :goto_19

    .line 1360
    :cond_3a
    move v12, v0

    .line 1363
    .end local v0    # "flags":I
    .restart local v12    # "flags":I
    :goto_19
    const/16 v22, 0x1

    .line 1368
    :cond_3b
    if-eqz v22, :cond_3c

    .line 1369
    invoke-static {v10, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    move-object v10, v0

    .line 1375
    :cond_3c
    const-string v0, "RESTORE UPGRADE"

    move-object/from16 v15, v23

    .end local v23    # "permName":Ljava/lang/String;
    .local v15, "permName":Ljava/lang/String;
    invoke-static {v8, v15, v12, v0}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v12, v0

    .line 1379
    const v0, 0xfbff

    invoke-virtual {v13, v5, v4, v0, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 1279
    nop

    .end local v4    # "userId":I
    .end local v7    # "restrictionExempt":Z
    .end local v11    # "permissionPolicyInitialized":Z
    .end local v14    # "restrictionApplied":Z
    .end local v22    # "wasChanged":Z
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p0

    move-object/from16 v23, v15

    move-object/from16 v14, v31

    move/from16 v11, v32

    move-object/from16 v4, v33

    move-object/from16 v0, v34

    move-object/from16 v15, v35

    goto/16 :goto_12

    .line 1436
    .end local v1    # "hardRestricted":Z
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v9    # "softRestricted":Z
    .end local v12    # "flags":I
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    .end local v30    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v33    # "perm":Ljava/lang/String;
    .end local v34    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v32, v31

    move-object/from16 v9, v35

    move/from16 v10, p2

    goto/16 :goto_2e

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v32, v31

    move/from16 v10, p2

    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2e

    .end local v31    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v14, "currentUserIds":[I
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_6
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v14, p0

    move/from16 v10, p2

    .end local v14    # "currentUserIds":[I
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31    # "currentUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2e

    .line 1279
    .end local v31    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v0, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v1    # "hardRestricted":Z
    .local v4, "perm":Ljava/lang/String;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v9    # "softRestricted":Z
    .restart local v12    # "flags":I
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v23    # "permName":Ljava/lang/String;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "grant":I
    .restart local v30    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :cond_3d
    move-object/from16 v34, v0

    move-object/from16 v33, v4

    move-object/from16 v31, v14

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    .line 1382
    .end local v0    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v1    # "hardRestricted":Z
    .end local v4    # "perm":Ljava/lang/String;
    .end local v9    # "softRestricted":Z
    .end local v12    # "flags":I
    .end local v14    # "currentUserIds":[I
    .end local v23    # "permName":Ljava/lang/String;
    .end local v30    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .local v15, "permName":Ljava/lang/String;
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v12, p3

    move-object v4, v10

    move-object/from16 v32, v31

    move-object/from16 v9, v35

    const/4 v7, 0x0

    goto/16 :goto_29

    .line 1436
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v10    # "updatedUserIds":[I
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29    # "grant":I
    .end local v31    # "currentUserIds":[I
    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v22, "updatedUserIds":[I
    :catchall_7
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31    # "currentUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2e

    .line 1130
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v1, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .local v11, "grant":I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v23    # "permName":Ljava/lang/String;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    :cond_3e
    move-object/from16 v27, v1

    move-object/from16 v33, v4

    move/from16 v29, v11

    move-object/from16 v28, v12

    move-object/from16 v31, v14

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    .end local v1    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4    # "perm":Ljava/lang/String;
    .end local v11    # "grant":I
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v23    # "permName":Ljava/lang/String;
    .local v15, "permName":Ljava/lang/String;
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "grant":I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_22
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    .line 1131
    .local v0, "hardRestricted":Z
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 1133
    .local v1, "softRestricted":Z
    move-object/from16 v7, v31

    .end local v31    # "currentUserIds":[I
    .local v7, "currentUserIds":[I
    :try_start_23
    array-length v3, v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    move-object/from16 v9, v22

    const/4 v4, 0x0

    .end local v22    # "updatedUserIds":[I
    .local v9, "updatedUserIds":[I
    :goto_1a
    if-ge v4, v3, :cond_5a

    :try_start_24
    aget v10, v7, v4

    .line 1137
    .local v10, "userId":I
    move-object/from16 v12, p0

    iget-object v11, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    if-eqz v11, :cond_3f

    :try_start_25
    iget-object v11, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 1139
    invoke-virtual {v11, v10}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    if-eqz v11, :cond_3f

    const/4 v11, 0x1

    goto :goto_1b

    .line 1436
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v10    # "userId":I
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    .end local v33    # "perm":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object/from16 v32, v7

    move-object v3, v9

    move-object v14, v12

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    move-object/from16 v12, p3

    goto/16 :goto_2e

    .line 1139
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v10    # "userId":I
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "grant":I
    .restart local v33    # "perm":Ljava/lang/String;
    :cond_3f
    const/4 v11, 0x0

    .line 1141
    .local v11, "permissionPolicyInitialized":Z
    :goto_1b
    nop

    .line 1142
    move/from16 v23, v3

    move-object/from16 v3, v33

    move-object/from16 v14, v35

    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v3, "perm":Ljava/lang/String;
    .local v14, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_26
    invoke-virtual {v14, v3, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v22
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 1143
    .local v22, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v22, :cond_40

    :try_start_27
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v30
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    goto :goto_1c

    .line 1436
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v10    # "userId":I
    .end local v11    # "permissionPolicyInitialized":Z
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v22    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    :catchall_9
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object/from16 v32, v7

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object v14, v12

    move-object/from16 v12, p3

    goto/16 :goto_2e

    .line 1143
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v10    # "userId":I
    .restart local v11    # "permissionPolicyInitialized":Z
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v22    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "grant":I
    :cond_40
    const/16 v30, 0x0

    :goto_1c
    move/from16 v31, v30

    .line 1145
    .local v31, "flags":I
    const/16 v30, 0x0

    .line 1147
    .local v30, "wasChanged":Z
    move-object/from16 v32, v7

    .end local v7    # "currentUserIds":[I
    .local v32, "currentUserIds":[I
    :try_start_28
    iget-object v7, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 1148
    invoke-virtual {v14, v7, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v7, v7, 0x3800

    if-eqz v7, :cond_41

    const/4 v7, 0x1

    goto :goto_1d

    :cond_41
    const/4 v7, 0x0

    .line 1150
    .local v7, "restrictionExempt":Z
    :goto_1d
    iget-object v12, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v14, v12, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v12

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_42

    const/4 v12, 0x1

    goto :goto_1e

    :cond_42
    const/4 v12, 0x0

    .line 1153
    .local v12, "restrictionApplied":Z
    :goto_1e
    if-eqz v6, :cond_4f

    .line 1155
    if-eqz v11, :cond_47

    if-eqz v0, :cond_47

    .line 1156
    if-nez v7, :cond_46

    .line 1157
    if-eqz v22, :cond_43

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v33

    if-eqz v33, :cond_43

    .line 1158
    move-object/from16 v33, v3

    .end local v3    # "perm":Ljava/lang/String;
    .restart local v33    # "perm":Ljava/lang/String;
    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    move-object/from16 v35, v14

    const/4 v14, -0x1

    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eq v3, v14, :cond_44

    .line 1160
    const/4 v3, 0x1

    move/from16 v30, v3

    .end local v30    # "wasChanged":Z
    .local v3, "wasChanged":Z
    goto :goto_1f

    .line 1157
    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v3, "perm":Ljava/lang/String;
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v30    # "wasChanged":Z
    :cond_43
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    .line 1162
    .end local v3    # "perm":Ljava/lang/String;
    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_44
    :goto_1f
    if-nez v12, :cond_45

    .line 1163
    move/from16 v3, v31

    .end local v31    # "flags":I
    .local v3, "flags":I
    or-int/lit16 v3, v3, 0x4000

    .line 1164
    const/16 v30, 0x1

    goto :goto_20

    .line 1162
    .end local v3    # "flags":I
    .restart local v31    # "flags":I
    :cond_45
    move/from16 v3, v31

    .end local v31    # "flags":I
    .restart local v3    # "flags":I
    goto :goto_20

    .line 1156
    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v3, "perm":Ljava/lang/String;
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31    # "flags":I
    :cond_46
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    move/from16 v3, v31

    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v31    # "flags":I
    .local v3, "flags":I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_20

    .line 1155
    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v3, "perm":Ljava/lang/String;
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31    # "flags":I
    :cond_47
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    move/from16 v3, v31

    .line 1168
    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v31    # "flags":I
    .local v3, "flags":I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eqz v11, :cond_48

    if-eqz v1, :cond_48

    .line 1171
    if-nez v7, :cond_48

    if-nez v12, :cond_48

    .line 1172
    or-int/lit16 v3, v3, 0x4000

    .line 1173
    const/16 v30, 0x1

    .line 1178
    :cond_48
    :goto_20
    and-int/lit8 v14, v3, 0x40

    if-eqz v14, :cond_49

    .line 1179
    and-int/lit8 v3, v3, -0x41

    .line 1180
    const/16 v30, 0x1

    .line 1183
    :cond_49
    and-int/lit8 v14, v3, 0x8

    if-eqz v14, :cond_4a

    .line 1184
    and-int/lit8 v3, v3, -0x9

    .line 1185
    const/16 v30, 0x1

    move/from16 v31, v4

    goto/16 :goto_24

    .line 1187
    :cond_4a
    if-eqz v11, :cond_4c

    if-eqz v0, :cond_4c

    if-eqz v7, :cond_4b

    goto :goto_21

    :cond_4b
    move/from16 v31, v3

    goto :goto_22

    .line 1189
    :cond_4c
    :goto_21
    if-eqz v22, :cond_4d

    :try_start_29
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 1190
    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v14

    move/from16 v31, v3

    const/4 v3, -0x1

    .end local v3    # "flags":I
    .restart local v31    # "flags":I
    if-ne v14, v3, :cond_4e

    .line 1192
    const/16 v30, 0x1

    move/from16 v3, v31

    move/from16 v31, v4

    goto :goto_24

    .line 1189
    .end local v31    # "flags":I
    .restart local v3    # "flags":I
    :cond_4d
    move/from16 v31, v3

    .line 1226
    .end local v3    # "flags":I
    .restart local v31    # "flags":I
    :cond_4e
    :goto_22
    move/from16 v3, v31

    move/from16 v31, v4

    goto :goto_24

    .line 1197
    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v3, "perm":Ljava/lang/String;
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_4f
    move-object/from16 v33, v3

    move-object/from16 v35, v14

    move/from16 v3, v31

    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v31    # "flags":I
    .local v3, "flags":I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v22, :cond_50

    .line 1199
    const-string v14, "android"

    .line 1200
    move/from16 v31, v4

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    .line 1199
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1201
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_51

    .line 1202
    or-int/lit8 v3, v3, 0x48

    .line 1204
    const/16 v30, 0x1

    goto :goto_23

    .line 1197
    :cond_50
    move/from16 v31, v4

    .line 1209
    :cond_51
    :goto_23
    iget-object v4, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v4, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1210
    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v14, -0x1

    if-eq v4, v14, :cond_52

    .line 1212
    const/4 v4, 0x1

    move/from16 v30, v4

    .line 1217
    :cond_52
    if-eqz v11, :cond_54

    if-nez v0, :cond_53

    if-eqz v1, :cond_54

    :cond_53
    if-nez v7, :cond_54

    if-nez v12, :cond_54

    .line 1220
    or-int/lit16 v3, v3, 0x4000

    .line 1221
    const/16 v30, 0x1

    .line 1226
    :cond_54
    :goto_24
    if-eqz v11, :cond_58

    .line 1227
    if-nez v0, :cond_55

    if-eqz v1, :cond_56

    :cond_55
    if-eqz v7, :cond_58

    .line 1228
    :cond_56
    if-eqz v12, :cond_58

    .line 1229
    and-int/lit16 v3, v3, -0x4001

    .line 1231
    if-nez v6, :cond_57

    .line 1232
    or-int/lit8 v3, v3, 0x40

    .line 1234
    :cond_57
    const/16 v30, 0x1

    .line 1239
    :cond_58
    if-eqz v30, :cond_59

    .line 1240
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    move-object v9, v4

    .line 1246
    :cond_59
    const-string v4, "RESTORE RUNTIME"

    invoke-static {v8, v15, v3, v4}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    move v3, v4

    .line 1250
    const v4, 0xfbff

    invoke-virtual {v13, v5, v10, v4, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    .line 1133
    nop

    .end local v3    # "flags":I
    .end local v7    # "restrictionExempt":Z
    .end local v10    # "userId":I
    .end local v11    # "permissionPolicyInitialized":Z
    .end local v12    # "restrictionApplied":Z
    .end local v22    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v30    # "wasChanged":Z
    add-int/lit8 v4, v31, 0x1

    move/from16 v3, v23

    move-object/from16 v7, v32

    goto/16 :goto_1a

    .line 1436
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    .end local v33    # "perm":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    goto/16 :goto_2e

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_b
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v14, p0

    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2e

    .end local v32    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v7, "currentUserIds":[I
    .restart local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_c
    move-exception v0

    move-object/from16 v32, v7

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v14, p0

    .end local v7    # "currentUserIds":[I
    .end local v14    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v32    # "currentUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2e

    .end local v32    # "currentUserIds":[I
    .restart local v7    # "currentUserIds":[I
    :catchall_d
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    .end local v7    # "currentUserIds":[I
    .restart local v32    # "currentUserIds":[I
    goto/16 :goto_2e

    .line 1133
    .end local v32    # "currentUserIds":[I
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v7    # "currentUserIds":[I
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "grant":I
    .restart local v33    # "perm":Ljava/lang/String;
    :cond_5a
    move-object/from16 v32, v7

    .line 1253
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v7    # "currentUserIds":[I
    .restart local v32    # "currentUserIds":[I
    move-object/from16 v12, p3

    move-object v4, v9

    move-object/from16 v9, v35

    const/4 v7, 0x0

    goto/16 :goto_29

    .line 1436
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v9    # "updatedUserIds":[I
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    .end local v32    # "currentUserIds":[I
    .end local v33    # "perm":Ljava/lang/String;
    .restart local v7    # "currentUserIds":[I
    .local v22, "updatedUserIds":[I
    :catchall_e
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    .end local v7    # "currentUserIds":[I
    .restart local v32    # "currentUserIds":[I
    goto/16 :goto_2e

    .end local v32    # "currentUserIds":[I
    .local v31, "currentUserIds":[I
    :catchall_f
    move-exception v0

    move-object/from16 v32, v31

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    move-object/from16 v9, v35

    .end local v31    # "currentUserIds":[I
    .restart local v32    # "currentUserIds":[I
    goto/16 :goto_2e

    .line 1110
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "currentUserIds":[I
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v1, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .local v11, "grant":I
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .local v14, "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v23    # "permName":Ljava/lang/String;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    :cond_5b
    move-object/from16 v27, v1

    move-object/from16 v33, v4

    move/from16 v29, v11

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    .end local v1    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4    # "perm":Ljava/lang/String;
    .end local v11    # "grant":I
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v23    # "permName":Ljava/lang/String;
    .local v15, "permName":Ljava/lang/String;
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29    # "grant":I
    .restart local v32    # "currentUserIds":[I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_2a
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    move-object/from16 v4, v22

    const/4 v3, 0x0

    .end local v22    # "updatedUserIds":[I
    .local v4, "updatedUserIds":[I
    :goto_25
    if-ge v3, v1, :cond_5d

    :try_start_2b
    aget v7, v0, v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    .line 1111
    .local v7, "userId":I
    move-object/from16 v10, v33

    move-object/from16 v9, v35

    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v9, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v10, "perm":Ljava/lang/String;
    :try_start_2c
    invoke-virtual {v9, v10, v7}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v11

    if-eqz v11, :cond_5c

    .line 1114
    invoke-virtual {v9, v5, v7}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1115
    const v11, 0xfbff

    const/4 v12, 0x0

    invoke-virtual {v9, v5, v7, v11, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1118
    invoke-static {v4, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    move-object v4, v11

    .line 1110
    .end local v7    # "userId":I
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v35, v9

    move-object/from16 v33, v10

    goto :goto_25

    .line 1436
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_10
    move-exception v0

    move-object/from16 v9, v35

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v4

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2e

    .line 1123
    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "grant":I
    .restart local v33    # "perm":Ljava/lang/String;
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_5d
    move-object/from16 v10, v33

    move-object/from16 v9, v35

    .end local v33    # "perm":Ljava/lang/String;
    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10    # "perm":Ljava/lang/String;
    invoke-virtual {v13, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5e

    .line 1125
    const/4 v0, 0x1

    move-object/from16 v12, p3

    move/from16 v16, v0

    const/4 v7, 0x0

    .end local v16    # "changedInstallPermission":Z
    .local v0, "changedInstallPermission":Z
    goto/16 :goto_29

    .line 1123
    .end local v0    # "changedInstallPermission":Z
    .restart local v16    # "changedInstallPermission":Z
    :cond_5e
    move-object/from16 v12, p3

    const/4 v7, 0x0

    goto/16 :goto_29

    .line 1436
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v10    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v29    # "grant":I
    :catchall_11
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v4

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v11, v28

    goto/16 :goto_2e

    .end local v4    # "updatedUserIds":[I
    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v22    # "updatedUserIds":[I
    .restart local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_12
    move-exception v0

    move-object/from16 v9, v35

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    .end local v35    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_2e

    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "currentUserIds":[I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_13
    move-exception v0

    move-object/from16 v32, v14

    move-object v9, v15

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v12, p3

    goto/16 :goto_26

    .line 1396
    .restart local v1    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v4, "perm":Ljava/lang/String;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v11    # "grant":I
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v23    # "permName":Ljava/lang/String;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    :cond_5f
    move-object/from16 v27, v1

    move-object v10, v4

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object/from16 v15, v23

    .end local v1    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4    # "perm":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v23    # "permName":Ljava/lang/String;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10    # "perm":Ljava/lang/String;
    .local v15, "permName":Ljava/lang/String;
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "currentUserIds":[I
    :try_start_2d
    invoke-virtual {v13, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    const/4 v1, -0x1

    if-eq v0, v1, :cond_60

    .line 1399
    const v0, 0xfbff

    const/4 v7, 0x0

    :try_start_2e
    invoke-virtual {v13, v5, v1, v0, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    .line 1401
    const/4 v4, 0x1

    .line 1402
    .end local v16    # "changedInstallPermission":Z
    .local v4, "changedInstallPermission":Z
    :try_start_2f
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un-granting permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (protectionLevel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1405
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    move-object/from16 v12, p3

    move/from16 v16, v4

    move-object/from16 v4, v22

    goto/16 :goto_29

    .line 1436
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v10    # "perm":Ljava/lang/String;
    .end local v11    # "grant":I
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_14
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    .end local v4    # "changedInstallPermission":Z
    .restart local v16    # "changedInstallPermission":Z
    :catchall_15
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    .line 1407
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v10    # "perm":Ljava/lang/String;
    .restart local v11    # "grant":I
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v21    # "allowedSig":Z
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_60
    const/4 v7, 0x0

    :try_start_30
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1410
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_16

    if-eqz v0, :cond_62

    move-object/from16 v12, p3

    if-eqz v12, :cond_61

    :try_start_31
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1412
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1413
    :cond_61
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not granting permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (protectionLevel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1416
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1410
    :cond_62
    move-object/from16 v12, p3

    goto/16 :goto_28

    .line 1407
    :cond_63
    move-object/from16 v12, p3

    goto/16 :goto_28

    .line 1436
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v10    # "perm":Ljava/lang/String;
    .end local v11    # "grant":I
    .end local v15    # "permName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "allowedSig":Z
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v27    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_16
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "currentUserIds":[I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_17
    move-exception v0

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "currentUserIds":[I
    :goto_26
    goto/16 :goto_2e

    .line 956
    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "currentUserIds":[I
    .local v0, "permName":Ljava/lang/String;
    .local v1, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "i":I
    .restart local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v20    # "N":I
    .local v21, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_64
    move-object/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v15, v0

    move-object v12, v10

    .line 957
    .end local v0    # "permName":Ljava/lang/String;
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v15, "permName":Ljava/lang/String;
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "currentUserIds":[I
    :goto_27
    if-eqz v12, :cond_65

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 958
    :cond_65
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_66

    .line 959
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    .line 945
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appSupportsRuntimePermissions":Z
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_66
    :goto_28
    move-object/from16 v4, v22

    .end local v22    # "updatedUserIds":[I
    .local v4, "updatedUserIds":[I
    :goto_29
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v11, p4

    move v0, v7

    move-object v15, v9

    move-object v10, v12

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v1, v24

    move-object/from16 v12, v28

    move-object/from16 v14, v32

    move-object/from16 v7, p0

    move/from16 v9, p2

    .end local v25    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1

    .line 1436
    .end local v3    # "i":I
    .end local v4    # "updatedUserIds":[I
    .end local v20    # "N":I
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "updatedUserIds":[I
    :catchall_18
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v22    # "updatedUserIds":[I
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "currentUserIds":[I
    .restart local v4    # "updatedUserIds":[I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_19
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    .end local v4    # "updatedUserIds":[I
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v22    # "updatedUserIds":[I
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "currentUserIds":[I
    goto/16 :goto_2e

    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v19    # "runtimePermissionsRevoked":Z
    .end local v22    # "updatedUserIds":[I
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "currentUserIds":[I
    .restart local v4    # "updatedUserIds":[I
    .local v5, "runtimePermissionsRevoked":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_1a
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move v7, v5

    move/from16 v4, v16

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    .end local v4    # "updatedUserIds":[I
    .end local v5    # "runtimePermissionsRevoked":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v19    # "runtimePermissionsRevoked":Z
    .restart local v22    # "updatedUserIds":[I
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "currentUserIds":[I
    goto/16 :goto_2e

    .line 945
    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v19    # "runtimePermissionsRevoked":Z
    .end local v22    # "updatedUserIds":[I
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "currentUserIds":[I
    .restart local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "updatedUserIds":[I
    .restart local v5    # "runtimePermissionsRevoked":Z
    .local v6, "N":I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_67
    move-object/from16 v24, v1

    move/from16 v25, v3

    move-object/from16 v22, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v28, v12

    move-object/from16 v32, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    .line 1423
    .end local v1    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "updatedUserIds":[I
    .end local v5    # "runtimePermissionsRevoked":Z
    .end local v6    # "N":I
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v19    # "runtimePermissionsRevoked":Z
    .restart local v20    # "N":I
    .restart local v22    # "updatedUserIds":[I
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "currentUserIds":[I
    if-nez v16, :cond_68

    move/from16 v10, p2

    if-eqz v10, :cond_69

    goto :goto_2a

    :cond_68
    move/from16 v10, p2

    :goto_2a
    :try_start_32
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_20

    if-nez v0, :cond_69

    .line 1424
    :try_start_33
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1b

    if-eqz v0, :cond_6a

    goto :goto_2b

    .line 1436
    .end local v20    # "N":I
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    goto/16 :goto_2e

    .line 1424
    .restart local v20    # "N":I
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_69
    :goto_2b
    :try_start_34
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_20

    if-eqz v0, :cond_6b

    .line 1428
    :cond_6a
    move-object/from16 v11, v28

    const/4 v0, 0x1

    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_35
    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c

    goto :goto_2c

    .line 1436
    .end local v20    # "N":I
    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1c
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v19

    move-object/from16 v3, v22

    goto/16 :goto_2e

    .line 1424
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "N":I
    .restart local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6b
    move-object/from16 v11, v28

    .line 1431
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_2c
    move-object/from16 v14, p0

    move-object/from16 v3, v22

    .end local v22    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :try_start_36
    invoke-direct {v14, v13, v8, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I

    move-result-object v6
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1f

    move/from16 v0, v20

    .line 1433
    .end local v3    # "updatedUserIds":[I
    .end local v20    # "N":I
    .local v0, "N":I
    .local v6, "updatedUserIds":[I
    move-object/from16 v15, v24

    .end local v24    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v15, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v9

    move-object v3, v13

    move-object/from16 v4, p1

    move/from16 v7, v19

    .end local v19    # "runtimePermissionsRevoked":Z
    .local v7, "runtimePermissionsRevoked":Z
    move-object v5, v15

    :try_start_37
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I

    move-result-object v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e

    move-object v3, v1

    .line 1435
    .end local v6    # "updatedUserIds":[I
    .restart local v3    # "updatedUserIds":[I
    :try_start_38
    invoke-direct {v14, v8, v10, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I

    move-result-object v1

    move-object v3, v1

    .line 1436
    .end local v0    # "N":I
    .end local v15    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v17
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    .line 1441
    move-object/from16 v1, p4

    if-eqz v1, :cond_6c

    .line 1442
    invoke-virtual {v1, v3, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 1445
    :cond_6c
    array-length v0, v3

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_6d

    aget v4, v3, v2

    .line 1446
    .local v4, "userId":I
    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v14, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1445
    .end local v4    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1448
    :cond_6d
    return-void

    .line 1436
    :catchall_1d
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v16

    goto :goto_2e

    .end local v3    # "updatedUserIds":[I
    .restart local v6    # "updatedUserIds":[I
    :catchall_1e
    move-exception v0

    move-object/from16 v1, p4

    move-object v3, v6

    move/from16 v4, v16

    goto :goto_2e

    .end local v6    # "updatedUserIds":[I
    .end local v7    # "runtimePermissionsRevoked":Z
    .restart local v3    # "updatedUserIds":[I
    .restart local v19    # "runtimePermissionsRevoked":Z
    :catchall_1f
    move-exception v0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v19

    move/from16 v4, v16

    .end local v19    # "runtimePermissionsRevoked":Z
    .restart local v7    # "runtimePermissionsRevoked":Z
    goto :goto_2e

    .end local v3    # "updatedUserIds":[I
    .end local v7    # "runtimePermissionsRevoked":Z
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "runtimePermissionsRevoked":Z
    .restart local v22    # "updatedUserIds":[I
    .restart local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_20
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-object/from16 v11, v28

    move/from16 v4, v16

    .end local v19    # "runtimePermissionsRevoked":Z
    .end local v22    # "updatedUserIds":[I
    .end local v28    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "updatedUserIds":[I
    .restart local v7    # "runtimePermissionsRevoked":Z
    .restart local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_2e

    .end local v7    # "runtimePermissionsRevoked":Z
    .end local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "changedInstallPermission":Z
    .end local v32    # "currentUserIds":[I
    .local v4, "changedInstallPermission":Z
    .restart local v5    # "runtimePermissionsRevoked":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_21
    move-exception v0

    move-object/from16 v17, v2

    move-object v1, v11

    move-object v11, v12

    move-object/from16 v32, v14

    move-object v14, v7

    move-object v12, v10

    move v7, v5

    move v10, v9

    move-object v9, v15

    .end local v5    # "runtimePermissionsRevoked":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v15    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v7    # "runtimePermissionsRevoked":Z
    .restart local v9    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "currentUserIds":[I
    :goto_2e
    :try_start_39
    monitor-exit v17
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_22

    throw v0

    :catchall_22
    move-exception v0

    goto :goto_2e
.end method

.method private restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .locals 3
    .param p1, "backup"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 425
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 427
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, p1, p2}, Landroid/permission/PermissionControllerManager;->restoreRuntimePermissionBackup([BLandroid/os/UserHandle;)V

    .line 428
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I
    .locals 18
    .param p1, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "updatedUserIds"    # [I

    .line 1464
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1465
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1468
    .local v3, "supportsRuntimePermissions":Z
    :goto_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .line 1469
    .local v5, "users":[I
    array-length v6, v5

    .line 1470
    .local v6, "numUsers":I
    const/4 v7, 0x0

    move-object/from16 v8, p3

    .end local p3    # "updatedUserIds":[I
    .local v7, "i":I
    .local v8, "updatedUserIds":[I
    :goto_1
    if-ge v7, v6, :cond_8

    .line 1471
    aget v9, v5, v7

    .line 1473
    .local v9, "userId":I
    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1474
    .local v11, "permission":Ljava/lang/String;
    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1475
    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1476
    invoke-virtual {v0, v11, v9}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v12

    .line 1478
    .local v12, "flags":I
    and-int/lit16 v13, v12, 0x80

    if-eqz v13, :cond_4

    .line 1479
    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v14, v11}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v14

    .line 1481
    .local v14, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/16 v15, 0x80

    .line 1483
    .local v15, "flagsToRemove":I
    and-int/lit8 v16, v12, 0x34

    if-nez v16, :cond_3

    if-eqz v3, :cond_3

    .line 1485
    invoke-virtual {v0, v14, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    .line 1486
    .local v4, "revokeResult":I
    const/4 v1, -0x1

    if-eq v4, v1, :cond_2

    .line 1487
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v1, :cond_1

    .line 1488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    .end local v3    # "supportsRuntimePermissions":Z
    .local v17, "supportsRuntimePermissions":Z
    const-string v3, "Revoking runtime permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as it is now requested"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1487
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_1
    move/from16 v17, v3

    .end local v3    # "supportsRuntimePermissions":Z
    .restart local v17    # "supportsRuntimePermissions":Z
    goto :goto_3

    .line 1486
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_2
    move/from16 v17, v3

    .line 1494
    .end local v3    # "supportsRuntimePermissions":Z
    .restart local v17    # "supportsRuntimePermissions":Z
    :goto_3
    or-int/lit8 v15, v15, 0x3

    goto :goto_4

    .line 1483
    .end local v4    # "revokeResult":I
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_3
    move/from16 v17, v3

    .line 1497
    .end local v3    # "supportsRuntimePermissions":Z
    .restart local v17    # "supportsRuntimePermissions":Z
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v0, v14, v9, v15, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1498
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    goto :goto_5

    .line 1478
    .end local v14    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v15    # "flagsToRemove":I
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .end local v3    # "supportsRuntimePermissions":Z
    .restart local v17    # "supportsRuntimePermissions":Z
    goto :goto_5

    .line 1475
    .end local v12    # "flags":I
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .end local v3    # "supportsRuntimePermissions":Z
    .restart local v17    # "supportsRuntimePermissions":Z
    goto :goto_5

    .line 1474
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .line 1502
    .end local v3    # "supportsRuntimePermissions":Z
    .end local v11    # "permission":Ljava/lang/String;
    .restart local v17    # "supportsRuntimePermissions":Z
    :goto_5
    move-object/from16 v1, p2

    move/from16 v3, v17

    goto/16 :goto_2

    .line 1473
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .line 1470
    .end local v3    # "supportsRuntimePermissions":Z
    .end local v9    # "userId":I
    .restart local v17    # "supportsRuntimePermissions":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 1505
    .end local v7    # "i":I
    .end local v17    # "supportsRuntimePermissions":Z
    .restart local v3    # "supportsRuntimePermissions":Z
    :cond_8
    return-object v8
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 10
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2309
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    return-void

    .line 2314
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "revokeRuntimePermission"

    move-object v3, p0

    move v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2324
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2325
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const-string v1, "Unknown package: "

    if-eqz v0, :cond_f

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 2328
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v0, v3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2331
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 2332
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v1, :cond_d

    .line 2336
    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 2342
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 2343
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2344
    return-void

    .line 2347
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2348
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 2350
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v3, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v4

    .line 2352
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x10

    const-string v6, " for package "

    if-eqz v5, :cond_3

    .line 2353
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v7, 0x3e8

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 2354
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2357
    :cond_3
    :goto_0
    if-nez p3, :cond_5

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_4

    goto :goto_1

    .line 2358
    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot revoke policy fixed permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2362
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_7

    .line 2365
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v5

    if-eq v5, v6, :cond_6

    .line 2367
    if-eqz p5, :cond_6

    .line 2368
    invoke-virtual {p5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 2371
    :cond_6
    return-void

    .line 2375
    :cond_7
    invoke-virtual {v3, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2376
    return-void

    .line 2379
    :cond_8
    invoke-virtual {v3, v1, p4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    .line 2381
    return-void

    .line 2384
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2385
    const/16 v5, 0x4dd

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 2388
    :cond_a
    if-eqz p5, :cond_b

    .line 2389
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p5, v5, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 2392
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2393
    invoke-direct {p0, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2395
    :cond_c
    return-void

    .line 2333
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "flags":I
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2329
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2326
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 24
    .param p1, "newPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "oldPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 622
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 623
    .local v10, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    .line 626
    .local v11, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 627
    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 629
    .local v1, "permission":Landroid/content/pm/PackageParser$Permission;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v3, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v1    # "permission":Landroid/content/pm/PackageParser$Permission;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "i":I
    :cond_1
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 636
    .local v12, "numNewPackagePermissions":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "newPermissionNum":I
    :goto_1
    if-ge v13, v12, :cond_9

    .line 638
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 639
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    .line 640
    .local v14, "newPermission":Landroid/content/pm/PackageParser$Permission;
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v15

    .line 642
    .local v15, "newProtection":I
    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_8

    .line 643
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 645
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    :goto_2
    move-object v5, v0

    .line 646
    .local v5, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 649
    .local v4, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 650
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 651
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 652
    .local v3, "userIds":[I
    array-length v2, v3

    .line 653
    .local v2, "numUserIds":I
    const/4 v0, 0x0

    move v1, v0

    .local v1, "userIdNum":I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 654
    aget v9, v3, v1

    .line 656
    .local v9, "userId":I
    move/from16 v16, v10

    .end local v10    # "numOldPackagePermissions":I
    .local v16, "numOldPackagePermissions":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 657
    .local v10, "numPackages":I
    const/4 v0, 0x0

    move-object/from16 v17, v11

    move v11, v0

    .local v11, "packageNum":I
    .local v17, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    if-ge v11, v10, :cond_4

    .line 658
    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v10    # "numPackages":I
    .local v18, "numPackages":I
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 660
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {v7, v6, v10, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    if-nez v19, :cond_3

    .line 662
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v21, "72710897"

    const/16 v19, 0x0

    aput-object v21, v0, v19

    move/from16 v19, v1

    .end local v1    # "userIdNum":I
    .local v19, "userIdNum":I
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 663
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v21, 0x1

    aput-object v1, v0, v21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v2

    .end local v2    # "numUserIds":I
    .local v22, "numUserIds":I
    const-string v2, "Revoking permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the group changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 662
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 670
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v20, v22

    .end local v22    # "numUserIds":I
    .local v20, "numUserIds":I
    move-object v2, v6

    move-object/from16 v21, v3

    .end local v3    # "userIds":[I
    .local v21, "userIds":[I
    move-object v3, v10

    move-object/from16 v22, v4

    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .local v22, "oldPermissionGroupName":Ljava/lang/String;
    move v4, v0

    move-object/from16 v23, v5

    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .local v23, "newPermissionGroupName":Ljava/lang/String;
    move v5, v9

    move-object v7, v6

    .end local v6    # "permissionName":Ljava/lang/String;
    .local v7, "permissionName":Ljava/lang/String;
    move-object/from16 v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    goto :goto_5

    .line 672
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 673
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 660
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v19    # "userIdNum":I
    .end local v20    # "numUserIds":I
    .end local v21    # "userIds":[I
    .end local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    :cond_3
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    .line 657
    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v19    # "userIdNum":I
    .restart local v20    # "numUserIds":I
    .restart local v21    # "userIds":[I
    .restart local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23    # "newPermissionGroupName":Ljava/lang/String;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object v6, v7

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v7, p0

    goto/16 :goto_4

    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v18    # "numPackages":I
    .end local v19    # "userIdNum":I
    .end local v20    # "numUserIds":I
    .end local v21    # "userIds":[I
    .end local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .local v10, "numPackages":I
    :cond_4
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v18, v10

    .line 653
    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v9    # "userId":I
    .end local v10    # "numPackages":I
    .end local v11    # "packageNum":I
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v19    # "userIdNum":I
    .restart local v20    # "numUserIds":I
    .restart local v21    # "userIds":[I
    .restart local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23    # "newPermissionGroupName":Ljava/lang/String;
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v9, p2

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v7, p0

    .end local v19    # "userIdNum":I
    .restart local v1    # "userIdNum":I
    goto/16 :goto_3

    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v16    # "numOldPackagePermissions":I
    .end local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "numUserIds":I
    .end local v21    # "userIds":[I
    .end local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .local v10, "numOldPackagePermissions":I
    .local v11, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .end local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v16    # "numOldPackagePermissions":I
    .restart local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "userIdNum":I
    .restart local v20    # "numUserIds":I
    .restart local v21    # "userIds":[I
    .restart local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 650
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v16    # "numOldPackagePermissions":I
    .end local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "userIdNum":I
    .end local v20    # "numUserIds":I
    .end local v21    # "userIds":[I
    .end local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    .restart local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .end local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v16    # "numOldPackagePermissions":I
    .restart local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 649
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v16    # "numOldPackagePermissions":I
    .end local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    .restart local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .end local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "permissionName":Ljava/lang/String;
    .restart local v16    # "numOldPackagePermissions":I
    .restart local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_6

    .line 642
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v16    # "numOldPackagePermissions":I
    .end local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    .restart local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    move/from16 v16, v10

    move-object/from16 v17, v11

    .line 637
    .end local v10    # "numOldPackagePermissions":I
    .end local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .end local v15    # "newProtection":I
    .restart local v16    # "numOldPackagePermissions":I
    .restart local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move/from16 v10, v16

    move-object/from16 v11, v17

    goto/16 :goto_1

    .line 682
    .end local v13    # "newPermissionNum":I
    .end local v16    # "numOldPackagePermissions":I
    .end local v17    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "numOldPackagePermissions":I
    .restart local v11    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .locals 17
    .param p1, "suSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2525
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2526
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 2527
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 2530
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 2531
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 2532
    goto :goto_0

    .line 2534
    :cond_1
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2535
    .local v6, "requestedPermCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 2536
    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2537
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 2538
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_2

    .line 2539
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2535
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2542
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "requestedPermCount":I
    .end local v7    # "j":I
    :cond_3
    goto :goto_0

    .line 2544
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 2546
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 2547
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 2548
    .local v6, "installPermCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_2
    const v8, 0xfbff

    const/4 v9, 0x0

    if-ltz v7, :cond_6

    .line 2549
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2550
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 2551
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 2552
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_5

    .line 2553
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2554
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2548
    .end local v10    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 2560
    .end local v7    # "i":I
    :cond_6
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 2563
    .local v7, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move-object v11, v7

    move v7, v9

    .end local v7    # "runtimePermissionChangedUserIds":[I
    .local v11, "runtimePermissionChangedUserIds":[I
    :goto_3
    if-ge v7, v10, :cond_a

    aget v12, v1, v7

    .line 2564
    .local v12, "userId":I
    nop

    .line 2565
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 2566
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 2567
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_4
    if-ltz v15, :cond_9

    .line 2568
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2569
    .local v16, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 2570
    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v8

    .line 2571
    .local v8, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v8, :cond_7

    .line 2572
    invoke-virtual {v4, v8, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 2573
    const/4 v0, 0x0

    const v9, 0xfbff

    invoke-virtual {v4, v8, v12, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2575
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    goto :goto_5

    .line 2571
    :cond_7
    const/4 v0, 0x0

    const v9, 0xfbff

    goto :goto_5

    .line 2569
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_8
    move v0, v9

    const v9, 0xfbff

    .line 2567
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

    .line 2563
    .end local v12    # "userId":I
    .end local v13    # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14    # "runtimePermCount":I
    .end local v15    # "i":I
    add-int/lit8 v7, v7, 0x1

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_3

    .line 2582
    :cond_a
    return-object v11

    .line 2528
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v6    # "installPermCount":I
    .end local v11    # "runtimePermissionChangedUserIds":[I
    :cond_b
    :goto_6
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I
    .locals 22
    .param p1, "origPs"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p5, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[I)[I"
        }
    .end annotation

    .line 1598
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1599
    .local v8, "pkgName":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 1601
    .local v9, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    sget-object v0, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1602
    .local v10, "numSplitPerms":I
    const/4 v0, 0x0

    .local v0, "splitPermNum":I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 1603
    sget-object v1, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    .line 1604
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1606
    .local v1, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v1}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    .line 1607
    .local v2, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1608
    .local v3, "numNewPerms":I
    const/4 v4, 0x0

    .local v4, "newPermNum":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1609
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1611
    .local v5, "newPerm":Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1612
    .local v11, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_0

    .line 1613
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 1614
    invoke-virtual {v9, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    :cond_0
    invoke-virtual {v1}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1608
    .end local v5    # "newPerm":Ljava/lang/String;
    .end local v11    # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1602
    .end local v1    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v2    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "numNewPerms":I
    .end local v4    # "newPermNum":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
    .end local v0    # "splitPermNum":I
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 1622
    .local v11, "numNewImplicitPerms":I
    const/4 v0, 0x0

    move v12, v0

    move-object/from16 v0, p5

    .end local p5    # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    .local v12, "newImplicitPermNum":I
    :goto_2
    if-ge v12, v11, :cond_a

    .line 1624
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 1625
    .local v14, "newPerm":Ljava/lang/String;
    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 1627
    .local v15, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v15, :cond_9

    .line 1628
    invoke-virtual {v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1629
    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 1631
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 1632
    .local v3, "users":[I
    array-length v2, v3

    .line 1633
    .local v2, "numUsers":I
    const/4 v1, 0x0

    .local v1, "userNum":I
    :goto_3
    if-ge v1, v2, :cond_8

    .line 1634
    aget v7, v3, v1

    .line 1636
    .local v7, "userId":I
    move/from16 p5, v1

    .end local v1    # "userNum":I
    .local p5, "userNum":I
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1637
    const/16 v1, 0x80

    invoke-virtual {v6, v4, v7, v1, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1641
    :cond_3
    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v16

    .line 1643
    .end local v0    # "updatedUserIds":[I
    .local v16, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 1644
    .local v0, "inheritsFromInstallPerm":Z
    const/4 v1, 0x0

    .local v1, "sourcePermNum":I
    :goto_4
    move/from16 v17, v0

    .end local v0    # "inheritsFromInstallPerm":Z
    .local v17, "inheritsFromInstallPerm":Z
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1646
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1647
    const/4 v0, 0x1

    .line 1648
    .end local v17    # "inheritsFromInstallPerm":Z
    .restart local v0    # "inheritsFromInstallPerm":Z
    move/from16 v17, v0

    goto :goto_5

    .line 1645
    .end local v0    # "inheritsFromInstallPerm":Z
    .restart local v17    # "inheritsFromInstallPerm":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_4

    .line 1652
    .end local v1    # "sourcePermNum":I
    :cond_5
    :goto_5
    move-object/from16 v1, p1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v17, :cond_7

    .line 1655
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_6

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not inherit from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as split permission is also new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    .end local v2    # "numUsers":I
    .end local v3    # "users":[I
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "userId":I
    .end local v14    # "newPerm":Ljava/lang/String;
    .end local v15    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "inheritsFromInstallPerm":Z
    .end local p5    # "userNum":I
    :cond_6
    move-object/from16 v0, v16

    goto :goto_6

    .line 1663
    .restart local v2    # "numUsers":I
    .restart local v3    # "users":[I
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "userId":I
    .restart local v14    # "newPerm":Ljava/lang/String;
    .restart local v15    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "inheritsFromInstallPerm":Z
    .restart local p5    # "userNum":I
    :cond_7
    move-object/from16 v0, p0

    move/from16 v18, p5

    .end local p5    # "userNum":I
    .local v18, "userNum":I
    move-object v1, v15

    move/from16 v19, v2

    .end local v2    # "numUsers":I
    .local v19, "numUsers":I
    move-object v2, v14

    move-object/from16 v20, v3

    .end local v3    # "users":[I
    .local v20, "users":[I
    move-object/from16 v3, p2

    move-object/from16 v21, v4

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v21, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V

    .line 1633
    .end local v7    # "userId":I
    .end local v17    # "inheritsFromInstallPerm":Z
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p3

    move-object/from16 v0, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    .end local v18    # "userNum":I
    .local v1, "userNum":I
    goto/16 :goto_3

    .end local v16    # "updatedUserIds":[I
    .end local v19    # "numUsers":I
    .end local v20    # "users":[I
    .end local v21    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v0, "updatedUserIds":[I
    .restart local v2    # "numUsers":I
    .restart local v3    # "users":[I
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_8
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 1623
    .end local v1    # "userNum":I
    .end local v2    # "numUsers":I
    .end local v3    # "users":[I
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v14    # "newPerm":Ljava/lang/String;
    .end local v15    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_9
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p3

    goto/16 :goto_2

    .line 1622
    :cond_a
    move-object/from16 v13, p4

    .line 1671
    .end local v12    # "newImplicitPermNum":I
    return-object v0
.end method

.method private setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .param p4, "callingUid"    # I
    .param p5, "whitelistFlags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2113
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v10, v0, v2

    .line 2114
    .local v10, "userId":I
    move-object v3, p0

    move-object v4, p1

    move v5, v10

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUser(Landroid/content/pm/PackageParser$Package;ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2113
    .end local v10    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2117
    :cond_0
    return-void
.end method

.method private setWhitelistedRestrictedPermissionsForUser(Landroid/content/pm/PackageParser$Package;ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 29
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "whitelistFlags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2400
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2401
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_0

    .line 2402
    return-void

    .line 2405
    :cond_0
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    .line 2407
    .local v15, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v0, 0x0

    .line 2408
    .local v0, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2410
    .local v1, "updatePermissions":Z
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2411
    .local v8, "permissionCount":I
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_11

    .line 2412
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 2414
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v3, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v16

    .line 2415
    .local v16, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v16, :cond_1

    .line 2416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot whitelist unknown permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    goto :goto_1

    .line 2420
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2421
    nop

    .line 2411
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v16    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_1
    move/from16 v28, v7

    move/from16 v24, v8

    goto/16 :goto_8

    .line 2424
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v16    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2425
    if-nez v0, :cond_3

    .line 2426
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v3

    .line 2428
    :cond_3
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v0

    goto :goto_2

    .line 2424
    :cond_4
    move-object/from16 v17, v0

    .line 2431
    .end local v0    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    .line 2433
    .local v5, "oldFlags":I
    move v0, v5

    .line 2434
    .local v0, "newFlags":I
    const/4 v3, 0x0

    .line 2435
    .local v3, "mask":I
    move/from16 v4, p5

    move/from16 v18, v4

    .line 2436
    .local v18, "whitelistFlagsCopy":I
    :goto_3
    const/4 v4, 0x1

    if-eqz v18, :cond_b

    .line 2437
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v19

    shl-int v2, v4, v19

    .line 2438
    .local v2, "flag":I
    not-int v4, v2

    and-int v18, v18, v4

    .line 2439
    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    goto :goto_4

    .line 2449
    :cond_5
    or-int/lit16 v3, v3, 0x2000

    .line 2450
    if-eqz v12, :cond_6

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2451
    or-int/lit16 v0, v0, 0x2000

    goto :goto_4

    .line 2453
    :cond_6
    and-int/lit16 v0, v0, -0x2001

    .line 2455
    goto :goto_4

    .line 2457
    :cond_7
    or-int/lit16 v3, v3, 0x800

    .line 2458
    if-eqz v12, :cond_8

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2459
    or-int/lit16 v0, v0, 0x800

    goto :goto_4

    .line 2461
    :cond_8
    and-int/lit16 v0, v0, -0x801

    goto :goto_4

    .line 2441
    :cond_9
    or-int/lit16 v3, v3, 0x1000

    .line 2442
    if-eqz v12, :cond_a

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2443
    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    .line 2445
    :cond_a
    and-int/lit16 v0, v0, -0x1001

    .line 2447
    nop

    .line 2465
    .end local v2    # "flag":I
    :goto_4
    goto :goto_3

    .line 2467
    :cond_b
    if-ne v5, v0, :cond_c

    .line 2468
    move/from16 v28, v7

    move/from16 v24, v8

    move-object/from16 v0, v17

    goto/16 :goto_8

    .line 2471
    :cond_c
    const/16 v19, 0x1

    .line 2473
    .end local v1    # "updatePermissions":Z
    .local v19, "updatePermissions":Z
    and-int/lit16 v1, v5, 0x3800

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_5
    move/from16 v21, v1

    .line 2475
    .local v21, "wasWhitelisted":Z
    and-int/lit16 v1, v0, 0x3800

    if-eqz v1, :cond_e

    move/from16 v20, v4

    goto :goto_6

    :cond_e
    const/16 v20, 0x0

    .line 2482
    .local v20, "isWhitelisted":Z
    :goto_6
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_f

    .line 2483
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    .line 2484
    .local v1, "isGranted":Z
    if-nez v20, :cond_f

    if-eqz v1, :cond_f

    .line 2485
    or-int/lit8 v3, v3, 0x4

    .line 2486
    and-int/lit8 v0, v0, -0x5

    .line 2492
    .end local v1    # "isGranted":Z
    :cond_f
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_10

    if-nez v21, :cond_10

    if-eqz v20, :cond_10

    .line 2494
    or-int/lit8 v1, v3, 0x40

    .line 2495
    .end local v3    # "mask":I
    .local v1, "mask":I
    or-int/lit8 v0, v0, 0x40

    move/from16 v23, v0

    move/from16 v22, v1

    goto :goto_7

    .line 2498
    .end local v1    # "mask":I
    .restart local v3    # "mask":I
    :cond_10
    move/from16 v23, v0

    move/from16 v22, v3

    .end local v0    # "newFlags":I
    .end local v3    # "mask":I
    .local v22, "mask":I
    .local v23, "newFlags":I
    :goto_7
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v26, v5

    .end local v5    # "oldFlags":I
    .local v26, "oldFlags":I
    move/from16 v5, p4

    move-object/from16 v27, v6

    .end local v6    # "permissionName":Ljava/lang/String;
    .local v27, "permissionName":Ljava/lang/String;
    move/from16 v6, p2

    move/from16 v28, v7

    .end local v7    # "i":I
    .local v28, "i":I
    move/from16 v7, v24

    move/from16 v24, v8

    .end local v8    # "permissionCount":I
    .local v24, "permissionCount":I
    move-object/from16 v8, v25

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    .line 2411
    .end local v16    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "whitelistFlagsCopy":I
    .end local v19    # "updatePermissions":Z
    .end local v20    # "isWhitelisted":Z
    .end local v21    # "wasWhitelisted":Z
    .end local v22    # "mask":I
    .end local v23    # "newFlags":I
    .end local v26    # "oldFlags":I
    .end local v27    # "permissionName":Ljava/lang/String;
    .local v0, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "updatePermissions":Z
    :goto_8
    add-int/lit8 v7, v28, 0x1

    move/from16 v8, v24

    .end local v28    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_0

    .end local v24    # "permissionCount":I
    .restart local v8    # "permissionCount":I
    :cond_11
    move/from16 v28, v7

    move/from16 v24, v8

    .line 2502
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .restart local v24    # "permissionCount":I
    if-eqz v1, :cond_13

    .line 2504
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v9, v10, v3, v2, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2507
    if-eqz v0, :cond_13

    .line 2508
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2509
    .local v2, "oldGrantedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_13

    .line 2510
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2512
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2513
    iget-object v5, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 2514
    goto :goto_a

    .line 2509
    .end local v4    # "permission":Ljava/lang/String;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2519
    .end local v2    # "oldGrantedCount":I
    .end local v3    # "i":I
    :cond_13
    :goto_a
    return-void
.end method

.method private systemReady()V
    .locals 3

    .line 3052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 3053
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 3058
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 3059
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 3060
    return-void

    .line 3054
    :cond_0
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

.method private updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2650
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    nop

    .line 2651
    if-eqz p2, :cond_0

    .line 2652
    const/4 v0, 0x6

    goto :goto_0

    .line 2653
    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x1

    .line 2654
    .local v0, "flags":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2655
    return-void
.end method

.method private updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 18
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "overridePolicy"    # Z
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2856
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

    .line 2857
    return-void

    .line 2860
    :cond_0
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2862
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2868
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 2869
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2874
    :cond_2
    :goto_0
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3

    .line 2875
    and-int/lit8 v0, p3, -0x11

    .line 2876
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 2877
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 2878
    and-int/lit8 v1, v1, -0x21

    .line 2879
    and-int/lit8 v1, v1, -0x41

    .line 2880
    and-int/lit16 v1, v1, -0x1001

    .line 2881
    and-int/lit16 v1, v1, -0x801

    .line 2882
    and-int/lit16 v1, v1, -0x2001

    .line 2883
    and-int/lit16 v1, v1, -0x4001

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    goto :goto_1

    .line 2874
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_3
    move/from16 v1, p3

    move/from16 v0, p4

    .line 2886
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v0, "flagValues":I
    .local v1, "flagMask":I
    :goto_1
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 2887
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_c

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto/16 :goto_4

    .line 2891
    :cond_4
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2898
    const-string v3, "UPDATE"

    invoke-static {v2, v9, v0, v3}, Lcom/android/server/pm/PermissionPmInjector;->mayClearFlagsForLegacyApp(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 2903
    .end local v0    # "flagValues":I
    .local v3, "flagValues":I
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2904
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 2905
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    if-eqz v0, :cond_a

    .line 2910
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2911
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 2912
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 2913
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v14, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v14

    .line 2914
    .local v6, "hadState":Z
    :goto_2
    nop

    .line 2915
    invoke-virtual {v5, v0, v12, v1, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v15

    .line 2916
    .local v15, "permissionUpdated":Z
    if-eqz v15, :cond_6

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2917
    invoke-direct {v8, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2919
    :cond_6
    if-eqz v15, :cond_9

    if-eqz v13, :cond_9

    .line 2922
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 2923
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_3

    .line 2924
    :cond_7
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-nez v16, :cond_8

    if-eqz v6, :cond_9

    .line 2926
    :cond_8
    new-array v7, v7, [I

    aput v12, v7, v14

    invoke-virtual {v13, v7, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 2929
    :cond_9
    :goto_3
    return-void

    .line 2907
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "hadState":Z
    .end local v15    # "permissionUpdated":Z
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2905
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2892
    .end local v3    # "flagValues":I
    .local v0, "flagValues":I
    :cond_b
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

    .line 2888
    :cond_c
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    return-void
.end method

.method private updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .locals 8
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    .line 2933
    .local p5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2934
    const/4 v0, 0x0

    return v0

    .line 2937
    :cond_0
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2939
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlagsForAllApps"

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2946
    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_1

    .line 2947
    and-int/lit8 p1, p1, -0x11

    .line 2948
    and-int/lit8 p2, p2, -0x11

    .line 2951
    :cond_1
    const/4 v0, 0x0

    .line 2952
    .local v0, "changed":Z
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2953
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2954
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2

    .line 2955
    goto :goto_0

    .line 2957
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 2958
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2960
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_0

    .line 2961
    :cond_3
    return v0
.end method

.method private updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I

    .line 2811
    const/4 v0, 0x0

    .line 2812
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2813
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2814
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2815
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 2816
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2817
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    .line 2818
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2819
    :cond_1
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2819
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    or-int/lit8 p3, p3, 0x1

    .line 2822
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2826
    :cond_2
    if-nez v0, :cond_3

    .line 2827
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 2829
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2830
    nop

    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_0

    .line 2831
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2832
    if-eqz v0, :cond_7

    .line 2833
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2834
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2835
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2836
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2837
    if-eqz v3, :cond_6

    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 2838
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2839
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_5

    .line 2840
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 2842
    :cond_5
    monitor-exit v4

    goto :goto_1

    .line 2844
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_6
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2844
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 2847
    monitor-exit v4

    .line 2848
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_1

    .line 2847
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2850
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_7
    return p3

    .line 2831
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2726
    const/4 v0, 0x0

    .line 2727
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2728
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2729
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2730
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 2731
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2732
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 2734
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2735
    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_2

    .line 2736
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2737
    :cond_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2738
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2737
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2740
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v4}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    .line 2741
    .local v4, "userIds":[I
    array-length v5, v4

    .line 2742
    .local v5, "numUserIds":I
    const/4 v6, 0x0

    .local v6, "userIdNum":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 2743
    aget v7, v4, v6

    .line 2745
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;

    invoke-direct {v9, p0, v3, v7, p4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 2742
    .end local v7    # "userId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2777
    .end local v4    # "userIds":[I
    .end local v5    # "numUserIds":I
    .end local v6    # "userIdNum":I
    :cond_3
    or-int/lit8 p3, p3, 0x1

    .line 2778
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 2782
    :cond_4
    if-nez v0, :cond_5

    .line 2783
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 2785
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2786
    nop

    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto/16 :goto_0

    .line 2787
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2788
    if-eqz v0, :cond_9

    .line 2789
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2790
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2791
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2792
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2793
    if-eqz v3, :cond_8

    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 2794
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2795
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_7

    .line 2796
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 2798
    :cond_7
    monitor-exit v4

    goto :goto_2

    .line 2800
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_8
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2800
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 2803
    monitor-exit v4

    .line 2804
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_2

    .line 2803
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2806
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_9
    return p3

    .line 2787
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 8
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2670
    .local p5, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 2674
    invoke-direct {p0, p1, p2, p4, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I

    move-result p4

    .line 2676
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2677
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    .line 2680
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    .line 2681
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

    .line 2682
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2684
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 2685
    .local v3, "fgPerm":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 2687
    .local v4, "bgPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2688
    .local v5, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 2689
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 2690
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2695
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "fgPerm":Ljava/lang/String;
    .end local v4    # "bgPerm":Ljava/lang/String;
    .end local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 2697
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2699
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "restorePermissionState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2702
    and-int/lit8 v2, p4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 2703
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 2704
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eq v5, p2, :cond_4

    .line 2706
    invoke-static {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v6

    .line 2707
    .local v6, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v7, p4, 0x4

    if-eqz v7, :cond_3

    .line 2708
    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    .line 2709
    .local v7, "replace":Z
    :goto_2
    invoke-direct {p0, v5, v7, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2711
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "volumeUuid":Ljava/lang/String;
    .end local v7    # "replace":Z
    :cond_4
    goto :goto_1

    .line 2714
    :cond_5
    if-eqz p2, :cond_7

    .line 2716
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v2

    .line 2717
    .local v2, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_6

    .line 2718
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    nop

    .line 2719
    .local v3, "replace":Z
    :goto_3
    invoke-direct {p0, p2, v3, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2721
    .end local v2    # "volumeUuid":Ljava/lang/String;
    .end local v3    # "replace":Z
    :cond_7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2722
    return-void

    .line 2697
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceGrant"    # Z
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2636
    .local p4, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2637
    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x2

    :cond_1
    or-int/2addr v0, v1

    .line 2638
    .local v0, "flags":I
    nop

    .line 2639
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 2638
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2640
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2641
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    .line 2642
    .local v9, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2643
    invoke-static {v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 2642
    move-object v2, p0

    move-object v4, v9

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2644
    .end local v9    # "childPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_1

    .line 2646
    :cond_2
    return-void
.end method


# virtual methods
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

    .line 3109
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$0$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "hasMoreBackup"    # Ljava/lang/Boolean;

    .line 450
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 456
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$updatePermissions$1$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Landroid/content/pm/PackageParser$Package;)V
    .locals 9
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p4, "p"    # Landroid/content/pm/PackageParser$Package;

    .line 2746
    iget-object v6, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2747
    .local v6, "pName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2748
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2750
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 2752
    return-void

    .line 2755
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2756
    .local v8, "permissionName":Ljava/lang/String;
    invoke-direct {p0, v8, v6, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 2759
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, v6

    move v4, p2

    move-object v5, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2772
    goto :goto_0

    .line 2765
    :catch_0
    move-exception v0

    .line 2766
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2774
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method
