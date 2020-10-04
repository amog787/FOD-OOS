.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;,
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
.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .line 236
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 532
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 238
    const-wide/32 v3, 0x4000000

    :try_start_0
    const-string v0, "OMS#OverlayManagerService"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 239
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 240
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "overlays.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "overlays"

    invoke-direct {v0, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 241
    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    .line 242
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 243
    new-instance v7, Lcom/android/server/om/IdmapManager;

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v11, p2

    :try_start_1
    invoke-direct {v7, v11, v0}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;)V

    .line 244
    .local v7, "im":Lcom/android/server/om/IdmapManager;
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 245
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    iget-object v8, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 246
    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v12, 0x0

    invoke-direct {v10, v1, v12}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v5, "package"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v14, v1, v12}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v14, v1, v12}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 265
    invoke-virtual {v1, v2}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 267
    const-string/jumbo v2, "overlay"

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 268
    const-class v2, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1, v2, v1}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v0    # "packageFilter":Landroid/content/IntentFilter;
    .end local v5    # "userFilter":Landroid/content/IntentFilter;
    .end local v7    # "im":Lcom/android/server/om/IdmapManager;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 271
    nop

    .line 272
    return-void

    .line 270
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p2

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 207
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 207
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 207
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 207
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 207
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method private static getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 7

    .line 314
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 319
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 320
    .local v1, "defaultPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 321
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 322
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
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

    .line 280
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 281
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 284
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 285
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 286
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_0

    .line 290
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 291
    .local v6, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    .line 284
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    .end local v3    # "userCount":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v2

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private restoreSettings()V
    .locals 11

    .line 996
    const-wide/32 v0, 0x4000000

    :try_start_0
    const-string v2, "OMS#restoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 997
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 998
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 999
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1025
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 999
    return-void

    .line 1001
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1002
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 1008
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1009
    .local v4, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1010
    .local v5, "liveUserIds":[I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1011
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    aput v8, v5, v7

    .line 1010
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1013
    .end local v7    # "i":I
    :cond_1
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1015
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget v9, v7, v6

    .line 1016
    .local v9, "userId":I
    invoke-static {v5, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-gez v10, :cond_2

    .line 1017
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v9}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1015
    .end local v9    # "userId":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1020
    .end local v4    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "liveUserIds":[I
    :cond_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1022
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_4
    goto :goto_3

    .line 1001
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1020
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_1
    move-exception v5

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :cond_5
    :goto_2
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catch_0
    move-exception v3

    .line 1021
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v4, "OverlayManager"

    const-string v5, "failed to restore overlay state"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1025
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1026
    nop

    .line 1027
    return-void

    .line 1023
    :catchall_3
    move-exception v3

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1025
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_4
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private schedulePersistSettings()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    return-void

    .line 975
    :cond_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 992
    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 958
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 959
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

    .line 962
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    .line 963
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 965
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p2, p1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    goto :goto_0

    .line 966
    :catch_0
    move-exception v1

    .line 969
    :goto_0
    return-void
.end method

.method private updateOverlayPaths(ILjava/util/List;)V
    .locals 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 903
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#updateOverlayPaths "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 904
    sget-boolean v2, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 905
    const-string v2, "OverlayManager"

    const-string v3, "Updating overlay assets"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 908
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 909
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "android"

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 910
    .local v3, "updateFrameworkRes":Z
    if-eqz v3, :cond_1

    .line 911
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object v4

    move-object p2, v4

    .line 914
    :cond_1
    new-instance v4, Landroid/util/ArrayMap;

    .line 915
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 916
    .local v4, "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 917
    :try_start_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v7, "android"

    .line 918
    invoke-virtual {v6, v7, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 919
    .local v6, "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 920
    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_3

    .line 921
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 922
    .local v9, "targetPackageName":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "android"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Lcom/android/server/om/OverlayManagerServiceInjector;->getInstance()Lcom/android/server/om/OverlayManagerServiceInjector;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/om/OverlayManagerServiceInjector;->isOverlayForbidden(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 930
    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 932
    :cond_2
    iget-object v11, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v11, v9, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    nop

    .end local v9    # "targetPackageName":Ljava/lang/String;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 935
    .end local v6    # "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "n":I
    .end local v8    # "i":I
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 938
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_6

    .line 939
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 940
    .local v7, "targetPackageName":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 941
    const-string v8, "OverlayManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-> Updating overlay: target="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " overlays=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    .line 942
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 941
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_4
    nop

    .line 947
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 946
    invoke-virtual {v2, p1, v7, v8}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 948
    const-string v8, "OverlayManager"

    const-string v9, "Failed to change enabled overlays for %s user %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 949
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 948
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 938
    .end local v7    # "targetPackageName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 953
    .end local v2    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "updateFrameworkRes":Z
    .end local v4    # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 954
    nop

    .line 955
    return-void

    .line 935
    .restart local v2    # "pm":Landroid/content/pm/PackageManagerInternal;
    .restart local v3    # "updateFrameworkRes":Z
    .restart local v4    # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "userId":I
    .end local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 953
    .end local v2    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "updateFrameworkRes":Z
    .end local v4    # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method


# virtual methods
.method public synthetic lambda$schedulePersistSettings$0$OverlayManagerService()V
    .locals 5

    .line 976
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 977
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "OverlayManager"

    const-string v1, "Writing overlay settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 981
    const/4 v1, 0x0

    .line 983
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 984
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 985
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    goto :goto_0

    .line 990
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 986
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 987
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 988
    const-string v3, "OverlayManager"

    const-string v4, "failed to persist overlay state"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 991
    return-void

    .line 990
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 0

    .line 277
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .line 300
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

    .line 303
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 305
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 306
    .end local v3    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 310
    nop

    .line 311
    return-void

    .line 306
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

    .line 309
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "newUserId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method
