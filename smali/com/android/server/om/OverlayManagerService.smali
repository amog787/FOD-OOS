.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 218
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .line 245
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 540
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 247
    const-wide/32 v3, 0x4000000

    :try_start_0
    const-string v0, "OMS#OverlayManagerService"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 248
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 249
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "overlays.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "overlays"

    invoke-direct {v0, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 250
    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v0, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 251
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 252
    new-instance v8, Lcom/android/server/om/IdmapManager;

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getInstance()Lcom/android/server/om/IdmapDaemon;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v8, v0, v6}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayableInfoCallback;)V

    .line 253
    .local v8, "im":Lcom/android/server/om/IdmapManager;
    new-instance v9, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v9}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v9, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 254
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 255
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v10

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 257
    new-instance v0, Lcom/android/server/om/OverlayActorEnforcer;

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v0, v6}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/OverlayableInfoCallback;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v6, "package"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v15, v1, v13}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 267
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v6, "userFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v15, v1, v13}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 276
    invoke-virtual {v1, v2}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 278
    const-string/jumbo v2, "overlay"

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v7}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 279
    const-class v2, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1, v2, v1}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    .end local v0    # "packageFilter":Landroid/content/IntentFilter;
    .end local v6    # "userFilter":Landroid/content/IntentFilter;
    .end local v8    # "im":Lcom/android/server/om/IdmapManager;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 215
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 215
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 215
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 215
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 215
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 215
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method private static getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 7

    .line 325
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 330
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 331
    .local v1, "defaultPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 332
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 333
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private initIfNeeded()V
    .locals 8

    .line 291
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 292
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 295
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 296
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 297
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 302
    .local v6, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;

    .line 295
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "userCount":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v2

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private restoreSettings()V
    .locals 11

    .line 1043
    const-wide/32 v0, 0x4000000

    :try_start_0
    const-string v2, "OMS#restoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1045
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1046
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1072
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1046
    return-void

    .line 1048
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1049
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 1055
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1056
    .local v4, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1057
    .local v5, "liveUserIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1058
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    aput v7, v5, v6

    .line 1057
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1060
    .end local v6    # "i":I
    :cond_1
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1062
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget v9, v6, v8

    .line 1063
    .local v9, "userId":I
    invoke-static {v5, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-gez v10, :cond_2

    .line 1064
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v9}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1062
    .end local v9    # "userId":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1067
    .end local v4    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "liveUserIds":[I
    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1069
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_4
    goto :goto_3

    .line 1048
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :cond_5
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1067
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catch_0
    move-exception v3

    .line 1068
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "OverlayManager"

    const-string v5, "failed to restore overlay state"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1072
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1073
    nop

    .line 1074
    return-void

    .line 1070
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1072
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1073
    throw v2
.end method

.method private schedulePersistSettings()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    return-void

    .line 1022
    :cond_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1039
    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 1005
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 1006
    return-void
.end method

.method private updateAssets(ILjava/util/List;)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1009
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1011
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1012
    .local v1, "updatedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    .end local v1    # "updatedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 1013
    :catch_0
    move-exception v1

    .line 1016
    :goto_0
    return-void
.end method

.method private updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 940
    const-wide/32 v4, 0x4000000

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMS#updateOverlayPaths "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 941
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 942
    const-string v0, "OverlayManager"

    const-string v6, "Updating overlay assets"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 945
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v6, v0

    .line 946
    .local v6, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string v0, "android"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v7, v0

    .line 947
    .local v7, "updateFrameworkRes":Z
    if-eqz v7, :cond_1

    .line 948
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v3, v0

    .line 951
    .end local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v0, Landroid/util/ArrayMap;

    .line 952
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    .line 953
    .local v8, "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 954
    :try_start_2
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v10, "android"

    .line 955
    invoke-virtual {v0, v10, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 956
    .local v0, "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 957
    .local v10, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v12, 0x1

    if-ge v11, v10, :cond_7

    .line 958
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 959
    .local v13, "targetPackageName":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, "android"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 961
    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 963
    :cond_2
    iget-object v15, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v15, v13, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 964
    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/om/OverlayManagerServiceInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/om/OverlayManagerServiceInjector;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/server/om/OverlayManagerServiceInjector;->isOnePlusApp(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 968
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v15

    .line 969
    .local v4, "overlayPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v12

    .local v5, "index":I
    :goto_1
    if-ltz v5, :cond_5

    .line 970
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 971
    .local v12, "overlayPackage":Ljava/lang/String;
    const-string v15, "black"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string/jumbo v15, "white"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 972
    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 969
    .end local v12    # "overlayPackage":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 975
    .end local v5    # "index":I
    :cond_5
    invoke-interface {v8, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    .end local v4    # "overlayPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "targetPackageName":Ljava/lang/String;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v11, v11, 0x1

    const-wide/32 v4, 0x4000000

    goto :goto_0

    .line 979
    .end local v0    # "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    :cond_7
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 981
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 982
    .local v0, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 983
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_a

    .line 984
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 985
    .local v9, "targetPackageName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v10, :cond_8

    .line 986
    const-string v10, "OverlayManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-> Updating overlay: target="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " overlays=["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    .line 987
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    invoke-static {v13, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] userId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 986
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_8
    nop

    .line 992
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 991
    invoke-virtual {v6, v2, v9, v10, v0}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 994
    const-string v10, "OverlayManager"

    const-string v11, "Failed to change enabled overlays for %s user %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    .line 995
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    .line 994
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v9    # "targetPackageName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 998
    .end local v5    # "i":I
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1000
    const-wide/32 v9, 0x4000000

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 998
    return-object v5

    .line 979
    .end local v0    # "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "n":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "userId":I
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1000
    .end local v6    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v7    # "updateFrameworkRes":Z
    .end local v8    # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    .end local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    const-wide/32 v4, 0x4000000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1001
    throw v0
.end method


# virtual methods
.method public synthetic lambda$schedulePersistSettings$0$OverlayManagerService()V
    .locals 5

    .line 1023
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1024
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1025
    const-string v0, "OverlayManager"

    const-string v1, "Writing overlay settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1028
    const/4 v1, 0x0

    .line 1030
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1031
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 1032
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    goto :goto_0

    .line 1037
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1033
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 1034
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1035
    const-string v3, "OverlayManager"

    const-string v4, "failed to persist overlay state"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 0

    .line 288
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .line 311
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onSwitchUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 316
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 317
    .end local v3    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 321
    nop

    .line 322
    return-void

    .line 317
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "newUserId":I
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "newUserId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 321
    throw v2
.end method
