.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceDumper;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$AppOpCallback;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$ActiveForegroundApp;,
        Lcom/android/server/am/ActiveServices$ForcedStandbyListener;
    }
.end annotation


# static fields
.field private static DEBUG_DELAYED_SERVICE:Z = false

.field private static DEBUG_DELAYED_STARTS:Z = false

.field private static final DEBUG_FGS_ALLOW_WHILE_IN_USE:I = 0x0

.field private static final DEBUG_FGS_ENFORCE_TYPE:I = 0x1

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static LOG_SERVICE_START_STOP:Z = false

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field private static SERVICE_RESCHEDULE:Z = false

.field static final SERVICE_START_FOREGROUND_TIMEOUT:I = 0x2710

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final SHOW_DUNGEON_NOTIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"

.field static isChina:Z

.field static isSupport:Z

.field public static mPerf:Landroid/util/BoostFramework;

.field private static servicesCanRestartAnonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppIdleWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mFgsAppOpCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$AppOpCallback;",
            ">;"
        }
    .end annotation
.end field

.field mLastAnrDump:Ljava/lang/String;

.field final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field final mMaxStartingBackground:I

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOn:Z

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

.field private mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 166
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    .line 167
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    .line 195
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    sput-object v1, Lcom/android/server/am/ActiveServices;->mPerf:Landroid/util/BoostFramework;

    .line 198
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 252
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->isSupport:Z

    .line 257
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v1, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->isChina:Z

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.tencent.mm"

    const-string v3, "com.whatsapp"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->servicesCanRestartAnonList:Ljava/util/ArrayList;

    .line 262
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 248
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 270
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 1041
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.oneplus.factorymode"

    const-string v3, "com.oem.autotest"

    const-string v4, "com.oem.oemlogkit"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    .line 463
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 464
    const/4 v1, 0x0

    .line 466
    .local v1, "maxBg":I
    :try_start_0
    const-string/jumbo v2, "ro.config.max_starting_bg"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 468
    goto :goto_0

    .line 467
    :catch_0
    move-exception v2

    .line 469
    :goto_0
    if-lez v1, :cond_0

    .line 470
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 472
    sget-object v0, Lcom/android/server/am/ActiveServices;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    .line 473
    const-string/jumbo v2, "ro.vendor.qti.am.reschedule_service"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 474
    :cond_2
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 151
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    return-object v0
.end method

.method private appIsTopLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 542
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .line 3704
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3705
    return-void

    .line 3709
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3710
    return-void

    .line 3713
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3714
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3719
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v3, v0

    .line 3720
    .local v3, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 3721
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 3722
    iget-wide v4, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v4, v4

    iput-wide v4, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 3723
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 3724
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    goto :goto_0

    .line 3726
    :cond_0
    iput v4, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 3727
    iput-boolean v5, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 3731
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3732
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3737
    :cond_1
    goto :goto_1

    .line 3734
    :catch_0
    move-exception v0

    .line 3735
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "ActivityManager"

    const-string v8, "Failed to send destroy details to servicetracker HAL"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3736
    iput-object v6, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 3740
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v7

    .line 3741
    .local v7, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "conni":I
    :goto_2
    if-ltz v9, :cond_3

    .line 3742
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/ArrayList;

    .line 3743
    .local v10, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 3744
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    .line 3747
    .local v12, "cr":Lcom/android/server/am/ConnectionRecord;
    iput-boolean v8, v12, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 3748
    invoke-virtual {v12}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 3750
    :try_start_1
    iget-object v0, v12, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v13, v6, v8}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3755
    goto :goto_4

    .line 3751
    :catch_1
    move-exception v0

    .line 3752
    .local v0, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure disconnecting service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to connection "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3753
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ConnectionRecord;

    iget-object v14, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v14}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " (in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3754
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ConnectionRecord;

    iget-object v14, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3752
    const-string v14, "ActivityManager"

    invoke-static {v14, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3743
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "cr":Lcom/android/server/am/ConnectionRecord;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3741
    .end local v10    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v11    # "i":I
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 3760
    .end local v9    # "conni":I
    :cond_3
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_7

    .line 3761
    const/4 v0, 0x0

    .line 3762
    .local v0, "needOomAdj":Z
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v8

    move v10, v9

    move v9, v0

    .end local v0    # "needOomAdj":Z
    .local v9, "needOomAdj":Z
    .local v10, "i":I
    :goto_5
    if-ltz v10, :cond_6

    .line 3763
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/am/IntentBindRecord;

    .line 3764
    .local v11, "ibr":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bringing down binding "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": hasBound="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v11, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ActivityManager"

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_4
    iget-boolean v0, v11, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_5

    .line 3768
    :try_start_2
    const-string v0, "bring down unbind"

    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3769
    const/4 v9, 0x1

    .line 3770
    iput-boolean v5, v11, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3771
    iput-boolean v5, v11, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3772
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v12, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3773
    invoke-virtual {v12}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 3772
    invoke-interface {v0, v2, v12}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3780
    goto :goto_6

    .line 3774
    :catch_2
    move-exception v0

    .line 3775
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception when unbinding service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ActivityManager"

    invoke-static {v13, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3777
    const/4 v9, 0x0

    .line 3778
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3779
    goto :goto_7

    .line 3762
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_5
    :goto_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 3783
    .end local v10    # "i":I
    :cond_6
    :goto_7
    if-eqz v9, :cond_7

    .line 3784
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v11, "updateOomAdj_unbindService"

    invoke-virtual {v0, v10, v8, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3791
    .end local v9    # "needOomAdj":Z
    :cond_7
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_9

    .line 3792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 3795
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 3796
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 3797
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_8

    .line 3798
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    iget-wide v10, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v5, v9, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3801
    :cond_8
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v9}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v11

    const/16 v12, 0x4c

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 3803
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x42

    invoke-virtual {v9, v10, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3805
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_9

    .line 3806
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x45

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3808
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v10, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3809
    invoke-virtual {v9}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 3810
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3809
    const-string/jumbo v12, "servicerecord"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3811
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3815
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_a

    .line 3816
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3817
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3818
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bringing down "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ActivityManager"

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3820
    .end local v0    # "here":Ljava/lang/RuntimeException;
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 3821
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    if-eqz v0, :cond_c

    .line 3822
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3823
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_b

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3822
    :cond_b
    invoke-static {v0, v9, v4}, Lcom/android/server/am/EventLogTags;->writeAmDestroyService(III)V

    .line 3826
    :cond_c
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    .line 3827
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 3831
    .local v9, "found":Lcom/android/server/am/ServiceRecord;
    if-eqz v9, :cond_e

    if-ne v9, v2, :cond_d

    goto :goto_8

    .line 3834
    :cond_d
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3835
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bringing down "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but actually running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3838
    :cond_e
    :goto_8
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3839
    iput v5, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3840
    invoke-direct {v1, v2, v5, v8}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 3843
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_10

    .line 3844
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_f

    .line 3845
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3846
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed pending: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ActivityManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3850
    .end local v0    # "i":I
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3851
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_12

    .line 3852
    invoke-direct {v1, v4, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 3853
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 3854
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_11

    .line 3855
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    iget-wide v11, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v5, v10, v11, v12}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3858
    :cond_11
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 3859
    invoke-static {v10}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v12

    const/16 v13, 0x4c

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    .line 3858
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 3861
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3862
    const/16 v10, 0x3c

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/4 v13, 0x2

    iget-boolean v14, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 3866
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v12, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 3869
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_12
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 3870
    iput v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 3871
    iput-object v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 3872
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 3875
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 3876
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3877
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3879
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 3880
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v10

    monitor-enter v10

    .line 3881
    :try_start_3
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 3882
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3883
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3884
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3885
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_13

    .line 3886
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3888
    :cond_13
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_14

    .line 3889
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3891
    :try_start_4
    const-string v0, "destroy"

    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3892
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3893
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 3894
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v11, "updateOomAdj_unbindService"

    invoke-virtual {v0, v10, v8, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3896
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v2}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    .line 3897
    :catch_3
    move-exception v0

    .line 3898
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception when destroying service "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ActivityManager"

    invoke-static {v10, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3900
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3901
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    goto :goto_b

    .line 3903
    :cond_14
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed service that has no process: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "ActivityManager"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3882
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 3907
    :cond_15
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed service that is not running: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "ActivityManager"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    :cond_16
    :goto_b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 3912
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3915
    :cond_17
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v0, :cond_18

    .line 3916
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 3919
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 3920
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3921
    .local v10, "now":J
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v8, :cond_19

    .line 3922
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v8, v5, v0, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3923
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v8, v5, v0, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3924
    iget v8, v2, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v8, :cond_19

    .line 3925
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v8, v2, v5}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 3926
    iput-object v6, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3930
    :cond_19
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3931
    return-void
.end method

.method private bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .param p5, "permissionsReviewRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3298
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 3299
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3300
    return-object v4

    .line 3303
    :cond_0
    if-nez p4, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3305
    return-object v4

    .line 3308
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v6, "ActivityManager"

    if-eqz v0, :cond_2

    .line 3309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bringing up "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " fg="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3315
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3319
    :cond_3
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_5

    .line 3320
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REM FR DELAY LIST (bring up): "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :cond_4
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3322
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 3327
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v7, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v7}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    const-string v7, " for service "

    const-string v8, "/"

    const-string v9, "Unable to launch app "

    if-nez v0, :cond_6

    .line 3328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3331
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is stopped"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3332
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3334
    return-object v0

    .line 3339
    .end local v0    # "msg":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v11, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v10, v5, v11}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3342
    :catch_0
    move-exception v0

    .line 3343
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed trying to unstop package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3341
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3345
    :goto_0
    nop

    .line 3347
    :goto_1
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v5

    :goto_2
    move/from16 v20, v0

    .line 3348
    .local v20, "isolated":Z
    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3349
    .local v15, "procName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/HostingRecord;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    const-string/jumbo v11, "service"

    invoke-direct {v0, v11, v10}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    move-object v10, v0

    .line 3352
    .local v10, "hostingRecord":Lcom/android/server/am/HostingRecord;
    if-nez v20, :cond_a

    .line 3353
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v15, v11, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    .line 3354
    .local v11, "app":Lcom/android/server/am/ProcessRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bringUpServiceLocked: appInfo.uid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " app="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ActivityManager_MU"

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :cond_8
    if-eqz v11, :cond_9

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_9

    .line 3358
    :try_start_1
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v12, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 3359
    invoke-direct {v1, v2, v11, v3}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3360
    return-object v4

    .line 3363
    :catch_2
    move-exception v0

    .line 3364
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception when starting service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3365
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 3361
    :catch_3
    move-exception v0

    .line 3362
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    throw v0

    .line 3392
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    :cond_9
    :goto_3
    move-object v0, v10

    move-object v14, v11

    goto :goto_4

    .line 3377
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_a
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3378
    .restart local v11    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3379
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3380
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/am/HostingRecord;->byWebviewZygote(Landroid/content/ComponentName;)Lcom/android/server/am/HostingRecord;

    move-result-object v10

    .line 3382
    :cond_b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    .line 3383
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    invoke-static {v0, v12, v13}, Lcom/android/server/am/HostingRecord;->byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/am/HostingRecord;

    move-result-object v10

    move-object v0, v10

    move-object v14, v11

    goto :goto_4

    .line 3382
    :cond_c
    move-object v0, v10

    move-object v14, v11

    .line 3392
    .end local v10    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "hostingRecord":Lcom/android/server/am/HostingRecord;
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    :goto_4
    if-eqz v14, :cond_e

    iget v10, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v10, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    goto :goto_6

    :cond_e
    :goto_5
    if-nez p5, :cond_10

    .line 3398
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v11, v15

    move-object/from16 v21, v14

    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    .local v21, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v14, p2

    move-object/from16 v22, v15

    .end local v15    # "procName":Ljava/lang/String;
    .local v22, "procName":Ljava/lang/String;
    move-object v15, v0

    move/from16 v18, v20

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    move-object v14, v10

    .end local v21    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "app":Lcom/android/server/am/ProcessRecord;
    if-nez v10, :cond_f

    .line 3400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3403
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": process is bad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3404
    .local v4, "msg":Ljava/lang/String;
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3406
    return-object v4

    .line 3408
    .end local v4    # "msg":Ljava/lang/String;
    :cond_f
    if-eqz v20, :cond_11

    .line 3409
    iput-object v14, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_7

    .line 3392
    .end local v22    # "procName":Ljava/lang/String;
    .restart local v15    # "procName":Ljava/lang/String;
    :cond_10
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .line 3413
    .end local v14    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "procName":Ljava/lang/String;
    .restart local v21    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "procName":Ljava/lang/String;
    :goto_6
    move-object/from16 v14, v21

    .end local v21    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_11
    :goto_7
    iget-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v7, :cond_13

    .line 3414
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v7, :cond_12

    .line 3415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Whitelisting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for fg-service launch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    :cond_12
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v9, 0x2710

    const-string v11, "fg-service-launch"

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 3422
    :cond_13
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 3423
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3426
    :cond_14
    iget-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v7, :cond_16

    .line 3428
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3429
    iget-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_16

    .line 3430
    sget-boolean v5, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Applying delayed stop (in bring up): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3436
    :cond_16
    return-object v4
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .line 2881
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v1, " of "

    const-string v2, ">>> EXECUTING "

    const-string v3, "ActivityManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2883
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2896
    .local v0, "timeoutNeeded":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2897
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2899
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    const/4 v0, 0x0

    .line 2904
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2907
    .local v1, "now":J
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bumpServiceExecutingLocked r.executeNesting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_3
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v5, 0x1

    if-nez v4, :cond_6

    .line 2911
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2912
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    .line 2913
    .local v4, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v4, :cond_4

    .line 2914
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 2916
    :cond_4
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    .line 2920
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bumpServiceExecutingLocked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/am/OpBGFrozenInjector;->bumpServiceEvent(IIZLjava/lang/String;)V

    .line 2923
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2924
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v7, p2

    iput-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2927
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bumpServiceExecutingLocked r.app.executingServices.size() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 2928
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2927
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :cond_5
    if-eqz v0, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 2931
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 2934
    .end local v4    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_6
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_7

    .line 2935
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2936
    if-eqz v0, :cond_8

    .line 2937
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_2

    .line 2934
    :cond_7
    :goto_1
    nop

    .line 2940
    :cond_8
    :goto_2
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2941
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr v3, v5

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2942
    iput-wide v1, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2943
    return-void
.end method

.method private cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1921
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_2

    .line 1926
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1927
    .local v0, "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_1

    .line 1928
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1929
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1930
    .local v2, "other":Lcom/android/server/am/ServiceRecord;
    if-eq v2, p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1931
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1933
    return-void

    .line 1928
    .end local v2    # "other":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1937
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1939
    .end local v0    # "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_2
    return-void
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3277
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_2

    .line 3280
    const/4 v0, 0x0

    .line 3281
    .local v0, "stillTracking":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3282
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v2, v3, :cond_0

    .line 3283
    const/4 v0, 0x1

    .line 3284
    goto :goto_1

    .line 3281
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3287
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 3288
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 3289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3288
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 3290
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3293
    .end local v0    # "stillTracking":Z
    :cond_2
    return-void
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .line 4292
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, 0x0

    .line 4293
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 4294
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4295
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 4296
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 4298
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v2

    .line 4299
    .local v4, "sameComponent":Z
    :goto_2
    if-eqz v4, :cond_6

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    if-nez p3, :cond_2

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4300
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4301
    :cond_2
    if-nez p4, :cond_3

    .line 4302
    return v2

    .line 4304
    :cond_3
    const/4 v0, 0x1

    .line 4305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4307
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4308
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4309
    iget-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v5, :cond_4

    .line 4310
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4313
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 4314
    iput-object v5, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4315
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 4316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 4318
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4293
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "sameComponent":Z
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 4321
    .end local v1    # "i":I
    :cond_7
    return v0
.end method

.method private decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1378
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1379
    .local v0, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-eqz v0, :cond_2

    .line 1380
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1381
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_2

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1383
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    const-string v3, "Ended running of service"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_0
    iget-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1386
    iget-object v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1388
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_0

    .line 1389
    :cond_1
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1390
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1394
    :cond_2
    :goto_0
    return-void
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .line 5370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5371
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5372
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "SERVICE "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5373
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5374
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5375
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5376
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 5377
    :cond_0
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5378
    :goto_0
    if-eqz p6, :cond_1

    .line 5379
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5381
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5382
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    .line 5383
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Client:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5384
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5386
    :try_start_1
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5388
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-interface {v2, v3, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 5389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 5390
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5392
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5393
    goto :goto_1

    .line 5392
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5393
    nop

    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p5    # "args":[Ljava/lang/String;
    .end local p6    # "dumpAll":Z
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5396
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0    # "innerPrefix":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p5    # "args":[Ljava/lang/String;
    .restart local p6    # "dumpAll":Z
    :catch_0
    move-exception v1

    .line 5397
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Got a RemoteException while dumping the service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5394
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 5395
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Failure while dumping the service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5400
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 5381
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method static dynamicallyUpdateLogTag(Z)V
    .locals 0
    .param p0, "on"    # Z

    .line 5405
    sput-boolean p0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    .line 5406
    sput-boolean p0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    .line 5407
    sput-boolean p0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    .line 5408
    return-void
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 2616
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 2617
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 2
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2870
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2873
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2874
    const/4 v0, 0x3

    return v0

    .line 2876
    :cond_1
    return v0

    .line 2871
    :cond_2
    :goto_0
    return v0
.end method

.method private getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 3
    .param p1, "callingUser"    # I

    .line 527
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 528
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_0

    .line 529
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    move-object v0, v1

    .line 530
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    :cond_0
    return-object v0
.end method

.method private getServicetrackerInstance()Z
    .locals 4

    .line 497
    const-string v0, "ActivityManager"

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    if-nez v1, :cond_2

    .line 499
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->getService(Z)Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_0

    const-string v3, "Failed to get servicetracker interface"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    :cond_0
    return v1

    .line 500
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 505
    :goto_0
    nop

    .line 506
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    if-nez v2, :cond_2

    .line 507
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "servicetracker HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    return v1

    .line 511
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private inAppIdleWhitelist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1052
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1053
    .local v2, "appPackageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1054
    return v1

    .line 1051
    .end local v2    # "appPackageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1058
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .line 3684
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3685
    return v1

    .line 3689
    :cond_0
    if-nez p2, :cond_1

    .line 3690
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 3692
    :cond_1
    if-eqz p3, :cond_2

    .line 3693
    return v1

    .line 3696
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private maybeLogBindCrossProfileService(ILjava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 2385
    invoke-static {p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    return-void

    .line 2388
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2389
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 2390
    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2393
    :cond_1
    const/16 v1, 0x97

    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 2394
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 2395
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2396
    return-void

    .line 2391
    :cond_2
    :goto_0
    return-void
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3456
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_10

    .line 3459
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    .line 3460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "realStartServiceLocked, ServiceRecord.uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ProcessRecord.uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager_MU"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3463
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 3465
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->startService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v12

    .line 3466
    .local v12, "newService":Z
    const-string v0, "create"

    invoke-direct {v1, v9, v11, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3467
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v13, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3468
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v13}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3469
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_startService"

    invoke-virtual {v0, v10, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3471
    const/4 v3, 0x0

    .line 3473
    .local v3, "created":Z
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    if-eqz v0, :cond_2

    .line 3475
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 3476
    .local v0, "lastPeriod":I
    if-ltz v0, :cond_1

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3477
    :cond_1
    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    :goto_0
    nop

    .line 3478
    .local v4, "nameTerm":Ljava/lang/String;
    iget v5, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3479
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3478
    invoke-static {v5, v6, v4, v7, v8}, Lcom/android/server/am/EventLogTags;->writeAmCreateService(IILjava/lang/String;II)V

    .line 3481
    .end local v0    # "lastPeriod":I
    .end local v4    # "nameTerm":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x64

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3482
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 3481
    invoke-static {v0, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    .line 3483
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3484
    :try_start_1
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 3485
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3486
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v4, v14}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 3488
    const/16 v0, 0xa

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 3491
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMS Creating service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    :cond_3
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3494
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    .line 3495
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v6

    .line 3493
    invoke-interface {v0, v9, v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 3496
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3497
    const/4 v15, 0x1

    .line 3499
    .end local v3    # "created":Z
    .local v15, "created":Z
    :try_start_3
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v3, v0

    .line 3500
    .local v3, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 3501
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 3502
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 3503
    iget-wide v4, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v4, v4

    iput-wide v4, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 3504
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3507
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3508
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3513
    :cond_4
    goto :goto_1

    .line 3510
    :catch_0
    move-exception v0

    .line 3511
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "ActivityManager"

    const-string v5, "Failed to send start details to servicetracker HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3512
    iput-object v2, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3519
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    :goto_1
    if-nez v15, :cond_6

    .line 3521
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3522
    .local v0, "inDestroying":Z
    invoke-direct {v1, v9, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3525
    if-eqz v12, :cond_5

    .line 3526
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3527
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3528
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v3, :cond_5

    .line 3529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Failed to create Service !!!! .This will introduce huge delay...  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :cond_5
    if-nez v0, :cond_6

    .line 3537
    invoke-direct {v1, v9, v13}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3542
    .end local v0    # "inDestroying":Z
    :cond_6
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_7

    .line 3543
    iput-boolean v14, v10, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 3546
    :cond_7
    invoke-direct {v1, v9, v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3548
    invoke-direct {v1, v10, v2, v14}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3550
    if-eqz v12, :cond_8

    if-eqz v15, :cond_8

    .line 3551
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V

    .line 3557
    :cond_8
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 3558
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v13, v8

    move/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3562
    :cond_9
    invoke-direct {v1, v9, v11, v14}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3564
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_b

    .line 3565
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REM FR DELAY LIST (new proc): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    :cond_a
    iget v0, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3567
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    goto :goto_2

    .line 3564
    :cond_b
    const/4 v2, 0x0

    .line 3570
    :goto_2
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_d

    .line 3572
    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3573
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_d

    .line 3574
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying delayed stop (from start): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3579
    :cond_d
    return-void

    .line 3519
    :catchall_0
    move-exception v0

    move v3, v15

    goto :goto_4

    .line 3514
    :catch_1
    move-exception v0

    move v3, v15

    goto :goto_3

    .line 3485
    .end local v15    # "created":Z
    .local v3, "created":Z
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v3    # "created":Z
    .end local v12    # "newService":Z
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "execInFg":Z
    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3519
    .restart local v3    # "created":Z
    .restart local v12    # "newService":Z
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "execInFg":Z
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 3514
    :catch_2
    move-exception v0

    .line 3515
    .local v0, "e":Landroid/os/DeadObjectException;
    :goto_3
    :try_start_8
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application dead when creating service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "Died when creating service"

    invoke-virtual {v4, v10, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3517
    nop

    .end local v3    # "created":Z
    .end local v12    # "newService":Z
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p3    # "execInFg":Z
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3519
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local v3    # "created":Z
    .restart local v12    # "newService":Z
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "execInFg":Z
    :goto_4
    if-nez v3, :cond_f

    .line 3521
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3522
    .local v4, "inDestroying":Z
    invoke-direct {v1, v9, v4, v4}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3525
    if-eqz v12, :cond_e

    .line 3526
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3527
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3528
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v2, :cond_e

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Failed to create Service !!!! .This will introduce huge delay...  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :cond_e
    if-nez v4, :cond_f

    .line 3537
    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3540
    .end local v4    # "inDestroying":Z
    :cond_f
    throw v0

    .line 3457
    .end local v3    # "created":Z
    .end local v12    # "newService":Z
    :cond_10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1735
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    .line 1736
    return-void

    .line 1738
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1739
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    .line 1740
    .local v1, "callback":Lcom/android/server/am/ActiveServices$AppOpCallback;
    if-nez v1, :cond_1

    .line 1741
    new-instance v2, Lcom/android/server/am/ActiveServices$AppOpCallback;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/ActiveServices$AppOpCallback;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V

    move-object v1, v2

    .line 1742
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1744
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->registerLocked()V

    .line 1745
    return-void
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"    # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"    # Z
    .param p4, "rebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2947
    const-string v0, "Crashed while binding "

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2951
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v3, "ActivityManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestBind "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": requested="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " rebind="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_1
    iget-boolean v1, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_6

    :cond_2
    iget-object v1, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 2955
    :try_start_0
    const-string v1, "bind"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2956
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2957
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2958
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v6

    .line 2957
    invoke-interface {v1, p1, v5, p4, v6}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 2959
    if-nez p4, :cond_3

    .line 2960
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2962
    :cond_3
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 2963
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2976
    goto :goto_0

    .line 2970
    :catch_0
    move-exception v1

    .line 2971
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2974
    .local v0, "inDestroying":Z
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2975
    return v2

    .line 2964
    .end local v0    # "inDestroying":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2966
    .local v1, "e":Landroid/os/TransactionTooLargeException;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2967
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2968
    .restart local v0    # "inDestroying":Z
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2969
    throw v1

    .line 2978
    .end local v0    # "inDestroying":Z
    .end local v1    # "e":Landroid/os/TransactionTooLargeException;
    :cond_6
    :goto_0
    return v4

    .line 2949
    :cond_7
    :goto_1
    return v2
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3441
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3442
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 3443
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3444
    goto :goto_1

    .line 3441
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3447
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZI)Z
    .locals 21
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "service"    # Landroid/content/Intent;
    .param p6, "callerFg"    # Z
    .param p7, "userId"    # I

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 834
    const-string/jumbo v3, "u"

    const-string v5, "ActivityManager"

    const/4 v6, 0x0

    if-nez p6, :cond_0

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Starting a service in package"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requires a permissions review"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v6

    .line 840
    :cond_0
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v9, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-array v7, v4, [Landroid/content/Intent;

    aput-object v2, v7, v6

    new-array v4, v4, [Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 843
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    const/high16 v19, 0x54000000

    const/16 v20, 0x0

    .line 840
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p7

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    invoke-virtual/range {v8 .. v20}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v4

    .line 847
    .local v4, "target":Landroid/content/IIntentSender;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v8, 0x18800000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 851
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v4}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 854
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v8, :cond_1

    .line 855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Launching permission review for package "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActiveServices$2;

    move/from16 v8, p7

    invoke-direct {v5, v0, v7, v8}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 866
    return v6

    .line 869
    .end local v4    # "target":Landroid/content/IIntentSender;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    move/from16 v8, p7

    return v4
.end method

.method private requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .locals 5
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "timeElapsed"    # J

    .line 1367
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1368
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 1369
    nop

    .line 1370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1369
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1372
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1373
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    :goto_0
    return-void
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 31
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "instanceName"    # Ljava/lang/String;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "userId"    # I
    .param p8, "createIfNeeded"    # Z
    .param p9, "callingFromFg"    # Z
    .param p10, "isBindExternal"    # Z
    .param p11, "allowInstant"    # Z

    .line 2649
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    move/from16 v6, p6

    const/4 v0, 0x0

    .line 2650
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieveServiceLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    .line 2653
    :goto_0
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v15, 0x0

    .line 2654
    invoke-direct {v1, v9, v8}, Lcom/android/server/am/ActiveServices;->getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v16

    .line 2653
    const-string/jumbo v17, "service"

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v18, p4

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2657
    .end local p7    # "userId":I
    .local v11, "userId":I
    invoke-direct {v1, v11}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v12

    .line 2659
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v10, :cond_1

    .line 2660
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v13, v2

    .local v2, "comp":Landroid/content/ComponentName;
    goto :goto_1

    .line 2662
    .end local v2    # "comp":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2663
    .local v2, "realComp":Landroid/content/ComponentName;
    if-eqz v2, :cond_27

    .line 2667
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2668
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v4, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    .line 2670
    .end local v2    # "realComp":Landroid/content/ComponentName;
    .local v13, "comp":Landroid/content/ComponentName;
    :goto_1
    if-eqz v13, :cond_2

    .line 2671
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 2672
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved by component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_2
    if-nez v0, :cond_3

    if-nez p10, :cond_3

    if-nez v10, :cond_3

    .line 2675
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, v9}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2676
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 2677
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieved by intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2680
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2683
    const/4 v0, 0x0

    .line 2684
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityManager"

    const-string v3, "Whoops, can\'t use existing external service"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_4
    move-object v14, v0

    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v15, 0x0

    if-nez v14, :cond_1e

    .line 2688
    const v0, 0x10000400

    .line 2690
    .local v0, "flags":I
    if-eqz p11, :cond_5

    .line 2691
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    move/from16 v16, v0

    goto :goto_2

    .line 2690
    :cond_5
    move/from16 v16, v0

    .line 2694
    .end local v0    # "flags":I
    .local v16, "flags":I
    :goto_2
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_e

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, v16

    move v6, v11

    move/from16 v7, p6

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_d

    move-object v7, v0

    .line 2696
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_6

    :try_start_2
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 2815
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "flags":I
    :catch_0
    move-exception v0

    move/from16 v15, p6

    goto/16 :goto_13

    .line 2696
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "flags":I
    :cond_6
    move-object v0, v15

    .line 2697
    .local v0, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_3
    if-nez v0, :cond_7

    .line 2698
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " U="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    return-object v15

    .line 2702
    :cond_7
    if-eqz v10, :cond_9

    iget v2, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 2704
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use instance name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' with non-isolated service \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2707
    .restart local v11    # "userId":I
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_9
    :goto_4
    :try_start_3
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    .local v2, "className":Landroid/content/ComponentName;
    if-eqz v13, :cond_a

    move-object v3, v13

    goto :goto_5

    :cond_a
    move-object v3, v2

    .line 2710
    .local v3, "name":Landroid/content/ComponentName;
    :goto_5
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2711
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_d

    .line 2710
    move/from16 v15, p6

    :try_start_4
    invoke-virtual {v4, v8, v15, v5, v6}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_c

    if-nez v4, :cond_b

    .line 2712
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "association not allowed between packages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2714
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    const-string v7, "Service lookup failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    new-instance v5, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v4}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v5

    .line 2815
    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "className":Landroid/content/ComponentName;
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v16    # "flags":I
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v0

    goto/16 :goto_13

    .line 2721
    .restart local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v2    # "className":Landroid/content/ComponentName;
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "flags":I
    :cond_b
    move-object/from16 v17, v7

    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_6
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v4

    .line 2722
    .local v23, "definingPackageName":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v4

    .line 2723
    .local v24, "definingUid":I
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_c

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_11

    .line 2724
    if-eqz p10, :cond_10

    .line 2725
    :try_start_7
    iget-boolean v4, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_f

    .line 2729
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_e

    .line 2734
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x400

    invoke-interface {v4, v8, v5, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2736
    .local v4, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_d

    .line 2740
    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5, v0}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v0, v5

    .line 2741
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2742
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2743
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2744
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 2745
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2746
    if-nez v10, :cond_c

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v0

    goto :goto_6

    .line 2747
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v18, "sInfo":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 2748
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2749
    move-object/from16 v29, v2

    move-object v6, v3

    move-object/from16 v7, v18

    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_7

    .line 2737
    .end local v18    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_d
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v5

    .line 2730
    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "userId":I
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_e
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not an isolatedProcess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v4

    .line 2726
    .restart local v11    # "userId":I
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_f
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not exported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v4

    .line 2750
    .restart local v11    # "userId":I
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_10
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE required for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "userId":I
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2753
    .restart local v11    # "userId":I
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :cond_11
    if-nez p10, :cond_1d

    move-object v7, v0

    move-object/from16 v29, v2

    move-object v6, v3

    .line 2757
    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "className":Landroid/content/ComponentName;
    .end local v3    # "name":Landroid/content/ComponentName;
    .local v6, "name":Landroid/content/ComponentName;
    .local v7, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v29, "className":Landroid/content/ComponentName;
    :goto_7
    if-lez v11, :cond_15

    .line 2758
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v5, v7, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2760
    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2761
    const/4 v11, 0x0

    .line 2762
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_c

    move-object v12, v0

    .line 2764
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    move-wide/from16 v18, v2

    .line 2766
    .local v18, "token":J
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2767
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v20, v12

    move-object v12, v6

    .end local v6    # "name":Landroid/content/ComponentName;
    .local v12, "name":Landroid/content/ComponentName;
    .local v20, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move v6, v11

    move-object/from16 v30, v17

    move-object/from16 v17, v7

    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v17, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v30, "rInfo":Landroid/content/pm/ResolveInfo;
    move/from16 v7, p6

    :try_start_b
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2769
    .local v0, "rInfoForUserId0":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_12

    .line 2770
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " U="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2773
    nop

    .line 2777
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    .line 2773
    const/4 v2, 0x0

    return-object v2

    .line 2775
    :cond_12
    :try_start_d
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v7, v2

    .line 2777
    .end local v0    # "rInfoForUserId0":Landroid/content/pm/ResolveInfo;
    .end local v17    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2778
    move-object/from16 v4, v20

    goto :goto_a

    .line 2777
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v17    # "sInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v0

    goto :goto_8

    .end local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v30, v17

    move-object v12, v6

    move-object/from16 v17, v7

    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v12, "name":Landroid/content/ComponentName;
    .local v17, "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2778
    nop

    .end local v11    # "userId":I
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 2815
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    .end local v17    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v18    # "token":J
    .end local v23    # "definingPackageName":Ljava/lang/String;
    .end local v24    # "definingUid":I
    .end local v29    # "className":Landroid/content/ComponentName;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "userId":I
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :catch_2
    move-exception v0

    move-object/from16 v12, v20

    goto/16 :goto_13

    .end local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :catch_3
    move-exception v0

    move-object/from16 v20, v12

    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto/16 :goto_13

    .line 2760
    .end local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v16    # "flags":I
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23    # "definingPackageName":Ljava/lang/String;
    .restart local v24    # "definingUid":I
    .restart local v29    # "className":Landroid/content/ComponentName;
    :cond_13
    move-object v4, v12

    move-object/from16 v30, v17

    move-object v12, v6

    move-object/from16 v17, v7

    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v12, "name":Landroid/content/ComponentName;
    .local v17, "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_9

    .line 2758
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_14
    move-object v4, v12

    move-object/from16 v30, v17

    move-object v12, v6

    move-object/from16 v17, v7

    .line 2780
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v12, "name":Landroid/content/ComponentName;
    .local v17, "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_9
    move-object/from16 v7, v17

    .end local v17    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_a
    :try_start_f
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v7}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v7, v0

    .line 2781
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v11}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_b

    .line 2757
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "name":Landroid/content/ComponentName;
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_15
    move-object v4, v12

    move-object/from16 v30, v17

    move-object v12, v6

    move-object/from16 v17, v7

    .line 2783
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v12, "name":Landroid/content/ComponentName;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_b
    :try_start_10
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_a

    move-object v2, v0

    .line 2784
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_11
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9

    if-eqz v0, :cond_16

    if-eqz v2, :cond_16

    :try_start_12
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved via pm by intent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_c

    .line 2815
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    .end local v23    # "definingPackageName":Ljava/lang/String;
    .end local v24    # "definingUid":I
    .end local v29    # "className":Landroid/content/ComponentName;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_4
    move-exception v0

    move-object v14, v2

    move-object v12, v4

    goto/16 :goto_13

    .line 2786
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v16    # "flags":I
    .restart local v23    # "definingPackageName":Ljava/lang/String;
    .restart local v24    # "definingUid":I
    .restart local v29    # "className":Landroid/content/ComponentName;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_16
    :goto_c
    if-nez v2, :cond_1c

    if-eqz p8, :cond_1c

    .line 2787
    :try_start_13
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2788
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v3, v0

    .line 2789
    .local v3, "filter":Landroid/content/Intent$FilterComparison;
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    move-object v5, v0

    .line 2791
    .local v5, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    move-object v6, v0

    .line 2792
    .local v6, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v6
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9

    .line 2793
    :try_start_14
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2794
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 2795
    move-object/from16 v17, v2

    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .local v17, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_15
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2793
    invoke-virtual {v6, v0, v14, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v20

    .line 2796
    .local v20, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 2797
    :try_start_16
    new-instance v0, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v21, v29

    move-object/from16 v22, v12

    move-object/from16 v25, v3

    move-object/from16 v26, v7

    move/from16 v27, p9

    move-object/from16 v28, v5

    invoke-direct/range {v18 .. v28}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7

    move-object v2, v0

    .line 2799
    .end local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :try_start_17
    iput-object v8, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 2800
    invoke-virtual {v5, v2}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 2801
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1a

    .line 2806
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 2807
    .local v14, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v18, v3

    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .local v18, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_6

    move-object/from16 v19, v4

    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :try_start_18
    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_19

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 2808
    invoke-virtual {v3, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2809
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_17

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .local v21, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    const-string v5, "Remove pending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :cond_17
    move-object/from16 v21, v5

    .line 2810
    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :goto_e
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 2808
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :cond_18
    move-object/from16 v21, v5

    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    goto :goto_f

    .line 2807
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :cond_19
    move-object/from16 v21, v5

    .line 2805
    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v14    # "pr":Lcom/android/server/am/ServiceRecord;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :goto_f
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    goto :goto_d

    .end local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :cond_1a
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    .line 2813
    .end local v0    # "i":I
    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_1b

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieve created new service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_5

    .line 2817
    .end local v6    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    .end local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v20    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v23    # "definingPackageName":Ljava/lang/String;
    .end local v24    # "definingUid":I
    .end local v29    # "className":Landroid/content/ComponentName;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1b
    move-object v14, v2

    goto :goto_11

    .line 2815
    :catch_5
    move-exception v0

    move-object v14, v2

    move-object/from16 v12, v19

    goto/16 :goto_13

    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :catch_6
    move-exception v0

    move-object/from16 v19, v4

    move-object v14, v2

    move-object/from16 v12, v19

    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto/16 :goto_13

    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v17    # "r":Lcom/android/server/am/ServiceRecord;
    :catch_7
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v14, v17

    move-object/from16 v12, v19

    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto/16 :goto_13

    .line 2796
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v6    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v16    # "flags":I
    .restart local v23    # "definingPackageName":Ljava/lang/String;
    .restart local v24    # "definingUid":I
    .restart local v29    # "className":Landroid/content/ComponentName;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    goto :goto_10

    .end local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :goto_10
    :try_start_19
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .end local v11    # "userId":I
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    :try_start_1a
    throw v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_8

    .line 2815
    .end local v6    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    .end local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v23    # "definingPackageName":Ljava/lang/String;
    .end local v24    # "definingUid":I
    .end local v29    # "className":Landroid/content/ComponentName;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "userId":I
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :catch_8
    move-exception v0

    move-object/from16 v14, v17

    move-object/from16 v12, v19

    goto :goto_13

    .line 2796
    .restart local v6    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v12    # "name":Landroid/content/ComponentName;
    .restart local v16    # "flags":I
    .restart local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v23    # "definingPackageName":Ljava/lang/String;
    .restart local v24    # "definingUid":I
    .restart local v29    # "className":Landroid/content/ComponentName;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_4
    move-exception v0

    goto :goto_10

    .line 2786
    .end local v6    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v18    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1c
    move-object/from16 v17, v2

    move-object/from16 v19, v4

    .line 2817
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v12    # "name":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    .end local v23    # "definingPackageName":Ljava/lang/String;
    .end local v24    # "definingUid":I
    .end local v29    # "className":Landroid/content/ComponentName;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    move-object/from16 v14, v17

    .end local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    :goto_11
    move-object/from16 v12, v19

    goto :goto_13

    .line 2815
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :catch_9
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v19, v4

    move-object/from16 v14, v17

    move-object/from16 v12, v19

    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto :goto_13

    .end local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    :catch_a
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v12, v19

    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto :goto_13

    .line 2754
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v0, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v2, "className":Landroid/content/ComponentName;
    .local v3, "name":Landroid/content/ComponentName;
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v16    # "flags":I
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23    # "definingPackageName":Ljava/lang/String;
    .restart local v24    # "definingUid":I
    :cond_1d
    move-object v4, v12

    move-object/from16 v30, v17

    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1b
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not an externalService"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v11    # "userId":I
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "instanceName":Ljava/lang/String;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingPid":I
    .end local p6    # "callingUid":I
    .end local p8    # "createIfNeeded":Z
    .end local p9    # "callingFromFg":Z
    .end local p10    # "isBindExternal":Z
    .end local p11    # "allowInstant":Z
    throw v5
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_b

    .line 2815
    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "className":Landroid/content/ComponentName;
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v16    # "flags":I
    .end local v23    # "definingPackageName":Ljava/lang/String;
    .end local v24    # "definingUid":I
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v11    # "userId":I
    .restart local v13    # "comp":Landroid/content/ComponentName;
    .restart local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "instanceName":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "callingPackage":Ljava/lang/String;
    .restart local p5    # "callingPid":I
    .restart local p6    # "callingUid":I
    .restart local p8    # "createIfNeeded":Z
    .restart local p9    # "callingFromFg":Z
    .restart local p10    # "isBindExternal":Z
    .restart local p11    # "allowInstant":Z
    :catch_b
    move-exception v0

    move-object v12, v4

    goto :goto_13

    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :catch_c
    move-exception v0

    goto :goto_12

    :catch_d
    move-exception v0

    move/from16 v15, p6

    goto :goto_12

    :catch_e
    move-exception v0

    move v15, v6

    :goto_12
    move-object v4, v12

    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    goto :goto_13

    .line 2686
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1e
    move v15, v6

    move-object v4, v12

    .line 2819
    :goto_13
    if-eqz v14, :cond_26

    .line 2820
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v8, v15, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "association not allowed between packages "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2824
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service lookup failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v2

    .line 2827
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1f
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v4, p1

    move/from16 v5, p6

    move/from16 v6, p5

    move-object/from16 v7, p3

    move-object v9, v8

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2829
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v2, "blocked by firewall"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2833
    :cond_20
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/oneplus/android/permission/PermissionInjector;->skipCheckComponentPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move/from16 v5, p5

    const/4 v2, 0x0

    goto/16 :goto_14

    .line 2838
    :cond_21
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, v14, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v5, p5

    invoke-static {v0, v5, v15, v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_23

    .line 2840
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v0, :cond_22

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not exported from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not exported from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2848
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2853
    :cond_23
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_25

    if-eqz v9, :cond_25

    .line 2854
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 2855
    .local v0, "opCode":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v15, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    .line 2857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Appop Denial: Accessing service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires appop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2857
    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const/4 v2, 0x0

    return-object v2

    .line 2855
    :cond_24
    const/4 v2, 0x0

    goto :goto_14

    .line 2853
    .end local v0    # "opCode":I
    :cond_25
    const/4 v2, 0x0

    .line 2864
    :goto_14
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2866
    :cond_26
    move/from16 v5, p5

    move-object v9, v8

    const/4 v2, 0x0

    return-object v2

    .line 2664
    .end local v13    # "comp":Landroid/content/ComponentName;
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    .local v2, "realComp":Landroid/content/ComponentName;
    :cond_27
    move v15, v6

    move v5, v7

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t use custom instance name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' without expicit component in Intent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 32
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    .line 2983
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ActivityManager"

    if-eqz v3, :cond_0

    .line 2984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not scheduling restart of crashed service "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - system is shutting down"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    return v4

    .line 2989
    :cond_0
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v0, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 2990
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v6, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v1, :cond_1

    .line 2991
    iget-object v6, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 2992
    .local v6, "cur":Lcom/android/server/am/ServiceRecord;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempting to schedule restart of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " when found in map: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    return v4

    .line 2997
    .end local v6    # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3007
    .local v6, "now":J
    const/4 v8, 0x0

    .line 3009
    .local v8, "restartImeNow":Z
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Lcom/android/server/wm/OpQuickReplyInjector;->isInIMEKilledList(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3011
    const/4 v8, 0x1

    .line 3012
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuickReply: Restart IME now for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_2
    const/16 v10, 0x8

    const-string v13, " r.nextRestartTime "

    const-string v14, " r.restartDelay "

    if-nez v8, :cond_1d

    iget-object v11, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v11, v10

    if-nez v11, :cond_1d

    .line 3017
    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 3018
    .local v11, "minDuration":J
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v10, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 3019
    .local v9, "resetTime":J
    const/16 v18, 0x0

    .line 3023
    .local v18, "canceled":Z
    iget-object v15, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3026
    .local v15, "N":I
    sget-boolean v19, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    const-string v4, " r "

    move-object/from16 v20, v3

    .end local v3    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v20, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-string v3, " now "

    if-eqz v19, :cond_3

    move/from16 v19, v8

    .end local v8    # "restartImeNow":Z
    .local v19, "restartImeNow":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v9

    .end local v9    # "resetTime":J
    .local v21, "resetTime":J
    const-string v9, " scheduleServiceRestartLocked  N "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v19    # "restartImeNow":Z
    .end local v21    # "resetTime":J
    .restart local v8    # "restartImeNow":Z
    .restart local v9    # "resetTime":J
    :cond_3
    move/from16 v19, v8

    move-wide/from16 v21, v9

    .line 3029
    .end local v8    # "restartImeNow":Z
    .end local v9    # "resetTime":J
    .restart local v19    # "restartImeNow":Z
    .restart local v21    # "resetTime":J
    :goto_0
    const-string v8, " allowCancel "

    if-lez v15, :cond_b

    .line 3030
    add-int/lit8 v9, v15, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_a

    .line 3031
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3032
    .local v10, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 3033
    move-object/from16 v23, v13

    iget-object v13, v10, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v13, :cond_4

    move-wide/from16 v25, v6

    move-object/from16 v24, v14

    goto/16 :goto_4

    .line 3035
    :cond_4
    if-eqz v2, :cond_6

    iget v13, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const/4 v0, 0x3

    if-ge v13, v0, :cond_5

    iget v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v13, 0x6

    if-ge v0, v13, :cond_5

    goto :goto_2

    .line 3051
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Canceling start item "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in service "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    const/16 v18, 0x1

    move-wide/from16 v25, v6

    move-object/from16 v24, v14

    goto/16 :goto_4

    .line 3037
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3038
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object v0, v14

    iget-wide v13, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long v24, v24, v13

    .line 3039
    .local v24, "dur":J
    const-wide/16 v13, 0x2

    mul-long v13, v13, v24

    .line 3040
    .end local v24    # "dur":J
    .local v13, "dur":J
    sget-boolean v24, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v24, :cond_7

    sget-boolean v24, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v24, :cond_7

    .line 3041
    move-object/from16 v24, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v25, v6

    .end local v6    # "now":J
    .local v25, "now":J
    const-string v6, "Can add more delay !!! si.deliveredTime "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " dur "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " si.deliveryCount "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " si.doneExecutingCount "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3040
    .end local v25    # "now":J
    .restart local v6    # "now":J
    :cond_7
    move-object/from16 v24, v0

    move-wide/from16 v25, v6

    .line 3048
    .end local v6    # "now":J
    .restart local v25    # "now":J
    :goto_3
    cmp-long v0, v11, v13

    if-gez v0, :cond_8

    move-wide v6, v13

    move-wide v11, v6

    .line 3049
    :cond_8
    cmp-long v0, v21, v13

    if-gez v0, :cond_9

    move-wide v6, v13

    move-wide/from16 v21, v6

    .line 3050
    .end local v13    # "dur":J
    :cond_9
    nop

    .line 3030
    .end local v10    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :goto_4
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-wide/from16 v6, v25

    goto/16 :goto_1

    .end local v25    # "now":J
    .restart local v6    # "now":J
    :cond_a
    move-wide/from16 v25, v6

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .line 3056
    .end local v6    # "now":J
    .end local v9    # "i":I
    .restart local v25    # "now":J
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move/from16 v0, v18

    move-wide/from16 v9, v21

    goto :goto_5

    .line 3029
    .end local v25    # "now":J
    .restart local v6    # "now":J
    :cond_b
    move-wide/from16 v25, v6

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .end local v6    # "now":J
    .restart local v25    # "now":J
    move/from16 v0, v18

    move-wide/from16 v9, v21

    .line 3059
    .end local v18    # "canceled":Z
    .end local v21    # "resetTime":J
    .local v0, "canceled":Z
    .local v9, "resetTime":J
    :goto_5
    if-eqz v2, :cond_e

    .line 3060
    invoke-virtual {v1, v0}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v6

    .line 3061
    .local v6, "shouldStop":Z
    if-eqz v6, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v7

    if-nez v7, :cond_c

    .line 3063
    const/4 v3, 0x0

    return v3

    .line 3065
    :cond_c
    iget-boolean v7, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v7, :cond_d

    if-nez v6, :cond_d

    const-string/jumbo v7, "start-requested"

    goto :goto_6

    :cond_d
    const-string v7, "connection"

    :goto_6
    move-object v6, v7

    .line 3066
    .local v6, "reason":Ljava/lang/String;
    goto :goto_7

    .line 3067
    .end local v6    # "reason":Ljava/lang/String;
    :cond_e
    const-string v6, "always"

    .line 3070
    .restart local v6    # "reason":Ljava/lang/String;
    :goto_7
    iget v7, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v13, 0x1

    add-int/2addr v7, v13

    iput v7, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3073
    sget-boolean v7, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " scheduleServiceRestartLocked  r.totalRestartCount "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :cond_f
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    const-string v7, " N "

    const-string/jumbo v13, "r.name "

    const-string v14, " r.restartTime+resetTime "

    move/from16 v18, v0

    .end local v0    # "canceled":Z
    .restart local v18    # "canceled":Z
    const-string v0, " resetTime "

    move-object/from16 v21, v6

    .end local v6    # "reason":Ljava/lang/String;
    .local v21, "reason":Ljava/lang/String;
    const-string v6, " minDuration "

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_10

    .line 3077
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v13

    iget-object v13, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v6

    move-object v13, v7

    move-wide/from16 v6, v25

    .end local v25    # "now":J
    .local v6, "now":J
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v25, v13

    move-object/from16 v13, v24

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v28, v6

    .end local v6    # "now":J
    .local v28, "now":J
    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v6, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3076
    .end local v28    # "now":J
    .restart local v25    # "now":J
    :cond_10
    move-object/from16 v27, v6

    move-object/from16 v22, v13

    move-object/from16 v13, v24

    move-wide/from16 v28, v25

    move-object/from16 v25, v7

    .line 3083
    .end local v25    # "now":J
    .restart local v28    # "now":J
    :goto_8
    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-nez v4, :cond_11

    .line 3084
    iget v4, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3085
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v4, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v14

    move/from16 v24, v15

    goto :goto_9

    .line 3086
    :cond_11
    const/4 v6, 0x1

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-le v4, v6, :cond_12

    .line 3087
    move-object/from16 v4, p0

    iget-object v7, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v16, v8

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    sub-int/2addr v2, v6

    move-object/from16 v17, v14

    move/from16 v24, v15

    .end local v15    # "N":I
    .local v24, "N":I
    int-to-long v14, v2

    mul-long/2addr v7, v14

    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_9

    .line 3095
    .end local v24    # "N":I
    .restart local v15    # "N":I
    :cond_12
    move-object/from16 v4, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v14

    move/from16 v24, v15

    .end local v15    # "N":I
    .restart local v24    # "N":I
    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v7, v9

    cmp-long v2, v28, v7

    if-lez v2, :cond_13

    .line 3096
    iput v6, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3097
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_9

    .line 3107
    :cond_13
    sget-object v2, Lcom/android/server/am/ActiveServices;->servicesCanRestartAnonList:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3108
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_9

    .line 3110
    :cond_14
    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iget-object v2, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v14, v2

    mul-long/2addr v6, v14

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3111
    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v2, v6, v11

    if-gez v2, :cond_15

    .line 3112
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3120
    :cond_15
    :goto_9
    const/4 v2, 0x0

    .line 3121
    .local v2, "mUseDuration":Z
    sget-boolean v6, Lcom/android/server/am/ActiveServices;->isChina:Z

    const/16 v7, 0x10

    if-eqz v6, :cond_16

    iget v6, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    if-le v6, v7, :cond_16

    .line 3122
    const/4 v2, 0x1

    .line 3123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delay sevice r.name "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v27

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v28

    .end local v28    # "now":J
    .local v14, "now":J
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v7, v23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mUseDuration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3121
    .end local v14    # "now":J
    .restart local v28    # "now":J
    :cond_16
    move-wide/from16 v14, v28

    .line 3130
    .end local v28    # "now":J
    .restart local v14    # "now":J
    :goto_a
    if-eqz v2, :cond_17

    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_17

    .line 3131
    iget v6, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    int-to-long v6, v6

    move-object v8, v5

    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    mul-long/2addr v6, v4

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/16 v5, 0x10

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_b

    .line 3130
    :cond_17
    move-object v8, v5

    .line 3135
    :goto_b
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long v6, v14, v4

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3136
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v4, :cond_18

    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_18

    .line 3137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v24

    .end local v24    # "N":I
    .local v5, "N":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v27

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v6, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3136
    .end local v5    # "N":I
    .restart local v24    # "N":I
    :cond_18
    move/from16 v3, p2

    move-object/from16 v0, v23

    move/from16 v5, v24

    .line 3149
    .end local v24    # "N":I
    .restart local v5    # "N":I
    :goto_c
    const/4 v4, 0x0

    .line 3150
    .local v4, "repeat":Z
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v22, v2

    .end local v2    # "mUseDuration":Z
    .local v22, "mUseDuration":Z
    iget-wide v2, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 3151
    .local v2, "restartTimeBetween":J
    iget-object v7, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_d
    if-ltz v7, :cond_1b

    .line 3152
    move/from16 v16, v4

    .end local v4    # "repeat":Z
    .local v16, "repeat":Z
    iget-object v4, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3153
    .local v4, "r2":Lcom/android/server/am/ServiceRecord;
    if-eq v4, v1, :cond_19

    move-wide/from16 v23, v9

    .end local v9    # "resetTime":J
    .local v23, "resetTime":J
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v25, v11

    .end local v11    # "minDuration":J
    .local v25, "minDuration":J
    iget-wide v11, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v11, v2

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1a

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v11, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v11, v2

    cmp-long v9, v9, v11

    if-gez v9, :cond_1a

    .line 3155
    iget-wide v9, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3156
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v9, v14

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3157
    const/4 v9, 0x1

    .line 3158
    .end local v16    # "repeat":Z
    .local v9, "repeat":Z
    move v4, v9

    goto :goto_e

    .line 3153
    .end local v23    # "resetTime":J
    .end local v25    # "minDuration":J
    .local v9, "resetTime":J
    .restart local v11    # "minDuration":J
    .restart local v16    # "repeat":Z
    :cond_19
    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    .line 3151
    .end local v4    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v9    # "resetTime":J
    .end local v11    # "minDuration":J
    .restart local v23    # "resetTime":J
    .restart local v25    # "minDuration":J
    :cond_1a
    add-int/lit8 v7, v7, -0x1

    move/from16 v4, v16

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    goto :goto_d

    .end local v16    # "repeat":Z
    .end local v23    # "resetTime":J
    .end local v25    # "minDuration":J
    .local v4, "repeat":Z
    .restart local v9    # "resetTime":J
    .restart local v11    # "minDuration":J
    :cond_1b
    move/from16 v16, v4

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    .line 3161
    .end local v2    # "restartTimeBetween":J
    .end local v7    # "i":I
    .end local v9    # "resetTime":J
    .end local v11    # "minDuration":J
    .restart local v23    # "resetTime":J
    .restart local v25    # "minDuration":J
    :goto_e
    if-nez v4, :cond_1c

    .line 3163
    .end local v4    # "repeat":Z
    .end local v5    # "N":I
    .end local v18    # "canceled":Z
    .end local v22    # "mUseDuration":Z
    .end local v23    # "resetTime":J
    .end local v25    # "minDuration":J
    move-object/from16 v2, v21

    goto :goto_f

    .line 3161
    .restart local v4    # "repeat":Z
    .restart local v5    # "N":I
    .restart local v18    # "canceled":Z
    .restart local v22    # "mUseDuration":Z
    .restart local v23    # "resetTime":J
    .restart local v25    # "minDuration":J
    :cond_1c
    move/from16 v3, p2

    move/from16 v2, v22

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    goto :goto_c

    .line 3015
    .end local v4    # "repeat":Z
    .end local v5    # "N":I
    .end local v14    # "now":J
    .end local v18    # "canceled":Z
    .end local v19    # "restartImeNow":Z
    .end local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v21    # "reason":Ljava/lang/String;
    .end local v22    # "mUseDuration":Z
    .end local v23    # "resetTime":J
    .end local v25    # "minDuration":J
    .restart local v3    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6    # "now":J
    .restart local v8    # "restartImeNow":Z
    :cond_1d
    move-object/from16 v20, v3

    move/from16 v19, v8

    move-object v8, v5

    move-wide/from16 v30, v6

    move-object v6, v0

    move-object v0, v13

    move-object v13, v14

    move-wide/from16 v14, v30

    .line 3166
    .end local v3    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v6    # "now":J
    .end local v8    # "restartImeNow":Z
    .restart local v14    # "now":J
    .restart local v19    # "restartImeNow":Z
    .restart local v20    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3167
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3168
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3169
    iput-wide v14, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3170
    const-string/jumbo v2, "persistent"

    .line 3173
    .local v2, "reason":Ljava/lang/String;
    :goto_f
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3174
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 3175
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3176
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-virtual {v1, v3, v14, v15}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 3179
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3183
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    :cond_1f
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3188
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v3, v9

    iput-wide v3, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling restart of crashed service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v0, :cond_20

    .line 3194
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_20

    .line 3195
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3196
    .local v3, "r2":Lcom/android/server/am/ServiceRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting list - i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " r2.nextRestartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " r2.name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    .end local v3    # "r2":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 3201
    .end local v0    # "i":I
    :cond_20
    const/16 v0, 0x7553

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3201
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3206
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleServiceRestartLocked r "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " call by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3207
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3206
    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .param p3, "oomAdjusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 3583
    const-string v0, "Failed delivering service starts"

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3584
    .local v1, "N":I
    if-nez v1, :cond_0

    .line 3585
    return-void

    .line 3588
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3590
    .local v2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ServiceStartArgs;>;"
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ActivityManager"

    if-lez v3, :cond_c

    .line 3591
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3592
    .local v3, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_1

    .line 3593
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending arguments to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " args="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v7, 0x1

    if-nez v6, :cond_2

    if-le v1, v7, :cond_2

    .line 3601
    goto :goto_0

    .line 3603
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 3604
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3605
    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 3606
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v6, :cond_3

    .line 3607
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3608
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v9

    .line 3607
    invoke-interface {v6, v8, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 3610
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v8, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget v10, v3, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3611
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3610
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 3613
    const-string/jumbo v6, "start"

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3614
    if-nez p3, :cond_4

    .line 3615
    const/4 p3, 0x1

    .line 3616
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v9, "updateOomAdj_startService"

    invoke-virtual {v6, v8, v7, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3618
    :cond_4
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v6, :cond_8

    .line 3619
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_6

    .line 3620
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v4, :cond_5

    .line 3621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launched service must call startForeground() within timeout: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_1

    .line 3625
    :cond_6
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v6, :cond_7

    .line 3626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service already foreground; no new timeout: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    :cond_7
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 3631
    :cond_8
    :goto_1
    const/4 v4, 0x0

    .line 3632
    .local v4, "flags":I
    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v6, v7, :cond_9

    .line 3633
    or-int/lit8 v4, v4, 0x2

    .line 3635
    :cond_9
    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v6, :cond_a

    .line 3636
    or-int/lit8 v4, v4, 0x1

    .line 3638
    :cond_a
    new-instance v6, Landroid/app/ServiceStartArgs;

    iget-boolean v7, v3, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v6, v7, v8, v4, v9}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3642
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_b

    .line 3643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SVC-Sent arguments: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", args="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", flags="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    .end local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v4    # "flags":I
    :cond_b
    goto/16 :goto_0

    .line 3649
    :cond_c
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 3650
    .local v3, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ServiceStartArgs;>;"
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 3651
    const/4 v6, 0x0

    .line 3653
    .local v6, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v7, p1, v3}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3664
    :catch_0
    move-exception v0

    .line 3665
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Unexpected exception"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3666
    move-object v6, v0

    goto :goto_3

    .line 3659
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 3661
    .local v4, "e":Landroid/os/RemoteException;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crashed while sending args: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    :cond_d
    invoke-static {v5, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3663
    move-object v6, v4

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 3654
    :catch_2
    move-exception v7

    .line 3655
    .local v7, "e":Landroid/os/TransactionTooLargeException;
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction too large for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " args, first: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ServiceStartArgs;

    iget-object v4, v4, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3655
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_e
    invoke-static {v5, v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3658
    move-object v6, v7

    .line 3667
    .end local v7    # "e":Landroid/os/TransactionTooLargeException;
    :goto_2
    nop

    .line 3669
    :goto_3
    if-eqz v6, :cond_11

    .line 3671
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3672
    .local v0, "inDestroying":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 3673
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3672
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3675
    .end local v4    # "i":I
    :cond_f
    instance-of v4, v6, Landroid/os/TransactionTooLargeException;

    if-nez v4, :cond_10

    goto :goto_5

    .line 3676
    :cond_10
    move-object v4, v6

    check-cast v4, Landroid/os/TransactionTooLargeException;

    throw v4

    .line 3679
    .end local v0    # "inDestroying":Z
    :cond_11
    :goto_5
    return-void
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"    # Z
    .param p3, "finishing"    # Z

    .line 4152
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v1, "<<< DONE EXECUTING "

    const-string v2, "ActivityManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inDestroying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4155
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4158
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_e

    .line 4159
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 4160
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nesting at 0 of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 4163
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4166
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r.app.executingServices.size(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 4167
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4166
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 4170
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more executingServices of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0xc

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4176
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8

    .line 4177
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceDoneExecuting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v1, v5}, Lcom/android/server/am/OpBGFrozenInjector;->bumpServiceEvent(IIZLjava/lang/String;)V

    goto :goto_2

    .line 4181
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v0, :cond_8

    .line 4183
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_8

    .line 4184
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v4, :cond_7

    .line 4185
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v4, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 4186
    goto :goto_2

    .line 4183
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4190
    .end local v0    # "i":I
    :cond_8
    :goto_2
    if-eqz p2, :cond_a

    .line 4191
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doneExecuting remove destroying "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4194
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4196
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "updateOomAdj_unbindService"

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 4198
    :cond_b
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 4199
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4200
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 4201
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4202
    .local v4, "now":J
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 4203
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4204
    if-eqz p3, :cond_c

    .line 4205
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 4206
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 4209
    .end local v0    # "memFactor":I
    .end local v4    # "now":J
    :cond_c
    if-eqz p3, :cond_e

    .line 4210
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4211
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4212
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4213
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_d

    .line 4214
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4217
    :cond_d
    invoke-virtual {p1, v1}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 4220
    :cond_e
    return-void
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4139
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    .line 4140
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 4141
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4142
    .local v1, "now":J
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 4143
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4144
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 4145
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 4147
    .end local v0    # "memFactor":I
    .end local v1    # "now":J
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 4148
    return-void
.end method

.method private setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    .locals 27
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "flags"    # I
    .param p5, "foregroundServiceType"    # I

    .line 1487
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x2

    const-string v6, "ActivityManager"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1f

    .line 1488
    if-eqz v4, :cond_1e

    .line 1492
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    const-string/jumbo v10, "startForeground"

    if-eqz v9, :cond_3

    .line 1493
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v9

    const/16 v11, 0x44

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v13}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v9

    .line 1497
    .local v9, "mode":I
    if-eqz v9, :cond_2

    const-string v11, "Instant app "

    if-eq v9, v8, :cond_1

    if-eq v9, v5, :cond_0

    .line 1509
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v14, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v11, v14, v12, v13, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 1506
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not have permission to create foreground services"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1501
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not have permission to create foreground services, ignoring."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-void

    .line 1499
    :cond_2
    nop

    .line 1513
    .end local v9    # "mode":I
    :goto_0
    move/from16 v10, p5

    goto :goto_2

    .line 1514
    :cond_3
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1c

    if-lt v9, v11, :cond_4

    .line 1515
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v9, v13, v11, v12, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1520
    :cond_4
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v9

    .line 1523
    .local v9, "manifestType":I
    const/4 v10, -0x1

    move/from16 v11, p5

    if-ne v11, v10, :cond_5

    .line 1524
    move v10, v9

    .end local p5    # "foregroundServiceType":I
    .local v10, "foregroundServiceType":I
    goto :goto_1

    .line 1523
    .end local v10    # "foregroundServiceType":I
    .restart local p5    # "foregroundServiceType":I
    :cond_5
    move v10, v11

    .line 1528
    .end local p5    # "foregroundServiceType":I
    .restart local v10    # "foregroundServiceType":I
    :goto_1
    and-int v11, v10, v9

    if-ne v11, v10, :cond_1d

    .line 1537
    iget-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-nez v11, :cond_6

    .line 1538
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Foreground service started from background can not have location/camera/microphone access: service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .end local v9    # "manifestType":I
    :cond_6
    :goto_2
    const/4 v9, 0x0

    .line 1545
    .local v9, "alreadyStartedOp":Z
    const/4 v11, 0x0

    .line 1546
    .local v11, "stopProcStatsOp":Z
    iget-boolean v12, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v12, :cond_9

    .line 1547
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v12, :cond_7

    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v12, :cond_8

    .line 1548
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service called startForeground() as required: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_8
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1551
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 1552
    move v11, v8

    move v9, v8

    .line 1553
    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v13, 0x42

    invoke-virtual {v12, v13, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1558
    :cond_9
    const/4 v12, 0x0

    .line 1559
    .local v12, "ignoreForeground":Z
    :try_start_0
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v13

    const/16 v14, 0x4c

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1561
    .local v0, "mode":I
    if-eqz v0, :cond_c

    if-eq v0, v8, :cond_b

    const/4 v13, 0x3

    if-ne v0, v13, :cond_a

    goto :goto_3

    .line 1573
    :cond_a
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Foreground not allowed as per app op"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v9    # "alreadyStartedOp":Z
    .end local v10    # "foregroundServiceType":I
    .end local v11    # "stopProcStatsOp":Z
    .end local p0    # "this":Lcom/android/server/am/ActiveServices;
    .end local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .end local p2    # "id":I
    .end local p3    # "notification":Landroid/app/Notification;
    .end local p4    # "flags":I
    throw v5

    .line 1568
    .restart local v9    # "alreadyStartedOp":Z
    .restart local v10    # "foregroundServiceType":I
    .restart local v11    # "stopProcStatsOp":Z
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "id":I
    .restart local p3    # "notification":Landroid/app/Notification;
    .restart local p4    # "flags":I
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service.startForeground() not allowed due to app op: service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v12, 0x1

    .line 1571
    goto :goto_4

    .line 1565
    :cond_c
    :goto_3
    nop

    .line 1578
    :goto_4
    if-nez v12, :cond_d

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1579
    invoke-direct {v1, v13}, Lcom/android/server/am/ActiveServices;->appIsTopLocked(I)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1580
    invoke-direct {v1, v13, v14}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1581
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v13, v7}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1587
    const/4 v12, 0x1

    .line 1594
    :cond_d
    if-nez v12, :cond_17

    .line 1595
    iget v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v6, v3, :cond_e

    .line 1596
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1597
    iput v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1599
    :cond_e
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 1600
    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1601
    iput v10, v2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1602
    iget-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_15

    .line 1603
    iget v6, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v6

    .line 1604
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v6, :cond_12

    .line 1605
    iget-object v13, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1606
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1607
    .local v13, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-nez v13, :cond_11

    .line 1608
    new-instance v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v14}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    move-object v13, v14

    .line 1609
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 1610
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 1611
    iget-boolean v14, v1, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1612
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_10

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v14, :cond_10

    .line 1613
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 1614
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v14

    if-gt v14, v5, :cond_f

    move v14, v8

    goto :goto_5

    :cond_f
    move v14, v7

    :goto_5
    iput-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1617
    :cond_10
    nop

    .line 1618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 1619
    iget-object v14, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-wide/16 v14, 0x0

    invoke-direct {v1, v6, v14, v15}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1622
    :cond_11
    iget v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    add-int/2addr v14, v8

    iput v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1624
    .end local v13    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_12
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1625
    if-nez v11, :cond_14

    .line 1626
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v13

    .line 1627
    .local v13, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v13, :cond_13

    .line 1628
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1629
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v14

    move-object/from16 p5, v6

    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local p5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1628
    invoke-virtual {v13, v8, v14, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_6

    .line 1627
    .end local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_13
    move-object/from16 p5, v6

    .line 1631
    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    .restart local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :goto_6
    goto :goto_7

    .line 1632
    .end local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_14
    move-object/from16 p5, v6

    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v5, 0x0

    .end local v11    # "stopProcStatsOp":Z
    .local v5, "stopProcStatsOp":Z
    move v11, v5

    .line 1634
    .end local v5    # "stopProcStatsOp":Z
    .restart local v11    # "stopProcStatsOp":Z
    :goto_7
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1635
    invoke-static {v6}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x4c

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-string v25, ""

    const/16 v26, 0x0

    .line 1634
    move-object/from16 v17, v5

    move/from16 v20, v6

    move-object/from16 v21, v13

    invoke-virtual/range {v17 .. v26}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)I

    .line 1638
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    const/16 v14, 0x3c

    invoke-static {v14, v5, v6, v8, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 1642
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1643
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v13, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v5, v6, v13, v8}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1645
    .end local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 1646
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_16

    .line 1647
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v5, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1649
    :cond_16
    iget v5, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1650
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    goto :goto_8

    .line 1653
    :cond_17
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_18

    .line 1654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suppressing startForeground() for FAS "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    .end local v0    # "mode":I
    .end local v12    # "ignoreForeground":Z
    :cond_18
    :goto_8
    if-eqz v11, :cond_19

    .line 1661
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1662
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_19

    .line 1663
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    iget-wide v12, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v7, v5, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1667
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_19
    if-eqz v9, :cond_1a

    .line 1670
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1671
    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v13

    const/16 v14, 0x4c

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    .line 1670
    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1676
    .end local v9    # "alreadyStartedOp":Z
    .end local v11    # "stopProcStatsOp":Z
    :cond_1a
    goto/16 :goto_b

    .line 1658
    .restart local v9    # "alreadyStartedOp":Z
    .restart local v11    # "stopProcStatsOp":Z
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_1b

    .line 1661
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    .line 1662
    .local v5, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v5, :cond_1b

    .line 1663
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-wide v12, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v5, v7, v6, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1667
    .end local v5    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1b
    if-eqz v9, :cond_1c

    .line 1670
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1671
    invoke-static {v5}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v13

    const/16 v14, 0x4c

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    .line 1670
    move-object/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1675
    :cond_1c
    throw v0

    .line 1529
    .end local v11    # "stopProcStatsOp":Z
    .local v9, "manifestType":I
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "foregroundServiceType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v8, [Ljava/lang/Object;

    .line 1530
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    const-string v11, "0x%08X"

    invoke-static {v11, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not a subset of foregroundServiceType attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v8, [Ljava/lang/Object;

    .line 1532
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v11, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in service element of manifest file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    .end local v9    # "manifestType":I
    .end local v10    # "foregroundServiceType":I
    .local p5, "foregroundServiceType":I
    :cond_1e
    move/from16 v11, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "null notification"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1677
    :cond_1f
    move/from16 v11, p5

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_24

    .line 1678
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1679
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_20

    .line 1680
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 1682
    :cond_20
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v9

    .line 1684
    .local v9, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v9, :cond_21

    .line 1685
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    iget-wide v12, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v9, v7, v10, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1688
    :cond_21
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1689
    invoke-static {v12}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x4c

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v22, 0x0

    .line 1688
    move-object/from16 v17, v10

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1691
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1692
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    const/16 v14, 0x3c

    const/4 v15, 0x2

    invoke-static {v14, v10, v12, v15, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 1696
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v13, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v10, v12, v13, v7}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1697
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_24

    .line 1701
    sget-boolean v10, Lcom/android/server/am/ActiveServices;->isSupport:Z

    if-ne v10, v8, :cond_23

    .line 1702
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1703
    .local v10, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    sub-int/2addr v12, v8

    .local v12, "i":I
    :goto_9
    if-ltz v12, :cond_23

    .line 1704
    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 1705
    .local v13, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v14, v13, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v14, :cond_22

    iget v14, v13, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v15, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v14, v15, :cond_22

    .line 1706
    iput-boolean v7, v13, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1707
    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v13, v15, v7

    iget v14, v13, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1709
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v8

    .line 1707
    const-string v14, "%s(foregroundId=%d) not foreground anymore"

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    .end local v13    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_22
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 1715
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "i":I
    :cond_23
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v10, v7, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1716
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1719
    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v9    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    .line 1720
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1721
    iput v7, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1722
    iput-object v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_a

    .line 1723
    :cond_25
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_26

    .line 1724
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    .line 1725
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_26

    .line 1726
    iput v7, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1727
    iput-object v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1731
    :cond_26
    :goto_a
    move v10, v11

    .end local p5    # "foregroundServiceType":I
    .local v10, "foregroundServiceType":I
    :goto_b
    return-void
.end method

.method private setWhiteListAllowWhileInUsePermissionInFgs()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 485
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "attentionServicePackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 490
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "systemCaptionsServicePackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_1
    return-void
.end method

.method private shouldAllowWhileInUsePermissionInFgsLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p6, "allowBackgroundActivityStarts"    # Z

    .line 5424
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5425
    return v1

    .line 5428
    :cond_0
    if-eqz p6, :cond_1

    .line 5429
    return v1

    .line 5432
    :cond_1
    const/4 v0, 0x0

    .line 5433
    .local v0, "isCallerSystem":Z
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 5434
    .local v2, "callingAppId":I
    if-eqz v2, :cond_2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    const/16 v3, 0x403

    if-eq v2, v3, :cond_2

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_2

    .line 5442
    const/4 v0, 0x0

    goto :goto_0

    .line 5439
    :cond_2
    const/4 v0, 0x1

    .line 5440
    nop

    .line 5446
    :goto_0
    if-eqz v0, :cond_3

    .line 5447
    return v1

    .line 5450
    :cond_3
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4

    .line 5451
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v3

    .line 5452
    .local v3, "instr":Lcom/android/server/am/ActiveInstrumentation;
    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz v4, :cond_4

    .line 5453
    return v1

    .line 5457
    .end local v3    # "instr":Lcom/android/server/am/ActiveInstrumentation;
    :cond_4
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 5458
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v4

    .line 5459
    .local v3, "hasAllowBackgroundActivityStartsToken":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 5460
    return v1

    .line 5463
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_7

    .line 5465
    return v1

    .line 5469
    :cond_7
    invoke-direct {p0, p3}, Lcom/android/server/am/ActiveServices;->appIsTopLocked(I)Z

    move-result v5

    .line 5470
    .local v5, "isCallingUidTopApp":Z
    if-eqz v5, :cond_8

    .line 5471
    return v1

    .line 5474
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v6

    .line 5475
    .local v6, "isCallingUidVisible":Z
    if-eqz v6, :cond_9

    .line 5476
    return v1

    .line 5479
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 5480
    invoke-virtual {v7, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 5481
    .local v7, "isWhiteListedPackage":Z
    if-eqz v7, :cond_a

    .line 5482
    return v1

    .line 5486
    :cond_a
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8, p3}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v8

    .line 5487
    .local v8, "isDeviceOwner":Z
    if-eqz v8, :cond_b

    .line 5488
    return v1

    .line 5490
    :cond_b
    return v4
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 912
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_1

    .line 916
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delaying stop of pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 918
    return-void

    .line 920
    :cond_1
    const/16 v0, 0x63

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 921
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 920
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 923
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 924
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 925
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 927
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_2

    .line 928
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 928
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 931
    :cond_2
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 933
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 934
    return-void

    .line 925
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1749
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1750
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    .line 1751
    .local v1, "callback":Lcom/android/server/am/ActiveServices$AppOpCallback;
    if-eqz v1, :cond_0

    .line 1752
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->unregisterLocked()V

    .line 1753
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1754
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1757
    :cond_0
    return-void
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    .line 3259
    if-nez p3, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3260
    const/4 v0, 0x0

    return v0

    .line 3265
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3266
    .local v0, "removed":Z
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_2

    .line 3267
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 3269
    :cond_2
    if-eqz v0, :cond_3

    .line 3270
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3272
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3273
    const/4 v1, 0x1

    return v1
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .locals 11
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"    # Z

    .line 1984
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 1985
    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1988
    return v0

    .line 1992
    :cond_0
    const/4 v1, 0x0

    .line 1993
    .local v1, "anyClientActivities":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    if-nez v1, :cond_5

    .line 1994
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 1995
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1996
    .local v5, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "conni":I
    :goto_1
    if-ltz v6, :cond_4

    if-nez v1, :cond_4

    .line 1997
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1998
    .local v7, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "cri":I
    :goto_2
    if-ltz v8, :cond_3

    .line 1999
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 2000
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v10, p1, :cond_1

    .line 2002
    goto :goto_3

    .line 2004
    :cond_1
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2005
    const/4 v1, 0x1

    .line 2006
    goto :goto_4

    .line 1998
    .end local v9    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 1996
    .end local v7    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v8    # "cri":I
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1993
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v6    # "conni":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2011
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v2

    if-eq v1, v2, :cond_7

    .line 2012
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setHasClientActivities(Z)V

    .line 2013
    if-eqz p3, :cond_6

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2016
    :cond_6
    return v3

    .line 2018
    :cond_7
    return v0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z

    .line 1942
    const/4 v0, 0x0

    .line 1943
    .local v0, "anyForeground":Z
    const/4 v1, 0x0

    .line 1944
    .local v1, "fgServiceTypes":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1945
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 1946
    .local v3, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_1

    .line 1947
    :cond_0
    const/4 v0, 0x1

    .line 1948
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    or-int/2addr v1, v4

    .line 1944
    .end local v3    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1951
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZIZ)V

    .line 1952
    return-void
.end method

.method private updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1955
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1956
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1957
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 1958
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v3, :cond_0

    .line 1959
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1960
    goto :goto_1

    .line 1956
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1963
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4224
    const/4 v0, 0x0

    .line 4226
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4227
    const/4 v1, 0x0

    .line 4229
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4230
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    move-object v1, v3

    .line 4231
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4232
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4233
    goto :goto_1

    .line 4236
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4237
    add-int/lit8 v2, v2, -0x1

    .line 4238
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 4240
    iget-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 4241
    const/4 v0, 0x1

    .line 4242
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4247
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4229
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4254
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 4250
    :catch_0
    move-exception v2

    .line 4251
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in new application when starting service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4253
    throw v2

    .line 4260
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 4262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 4263
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 4264
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_4

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_5

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4265
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4266
    goto :goto_4

    .line 4268
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4269
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 4262
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4272
    .end local v1    # "i":I
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_6
    return v0
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 40
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "instanceName"    # Ljava/lang/String;
    .param p8, "callingPackage"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2025
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v0, p3

    move-object/from16 v10, p8

    move/from16 v9, p9

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v8, "ActivityManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " conn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2025
    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    .line 2028
    :goto_0
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 2029
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    const-string v1, " (pid="

    if-eqz v6, :cond_35

    .line 2036
    const/4 v2, 0x0

    .line 2037
    .local v2, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    if-eqz v15, :cond_2

    .line 2038
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v2

    .line 2039
    if-nez v2, :cond_1

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding with unknown activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    return v5

    .line 2039
    :cond_1
    move-object v4, v2

    goto :goto_1

    .line 2037
    :cond_2
    move-object v4, v2

    .line 2045
    .end local v2    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v4, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_1
    const/4 v2, 0x0

    .line 2046
    .local v2, "clientLabel":I
    const/4 v3, 0x0

    .line 2047
    .local v3, "clientIntent":Landroid/app/PendingIntent;
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v12, 0x3e8

    const/4 v9, 0x1

    if-ne v11, v12, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v5

    :goto_2
    move/from16 v16, v11

    .line 2049
    .local v16, "isCallerSystem":Z
    if-eqz v16, :cond_6

    .line 2053
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setDefusable(Z)V

    .line 2054
    const-string v11, "android.intent.extra.client_intent"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    move-object v3, v11

    check-cast v3, Landroid/app/PendingIntent;

    .line 2055
    if-eqz v3, :cond_5

    .line 2056
    const-string v11, "android.intent.extra.client_label"

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2057
    if-eqz v2, :cond_4

    .line 2061
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object v3, v0

    .end local p3    # "service":Landroid/content/Intent;
    .local v0, "service":Landroid/content/Intent;
    goto :goto_3

    .line 2057
    .end local v0    # "service":Landroid/content/Intent;
    .restart local p3    # "service":Landroid/content/Intent;
    :cond_4
    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object v3, v0

    goto :goto_3

    .line 2055
    :cond_5
    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object v3, v0

    goto :goto_3

    .line 2049
    :cond_6
    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object v3, v0

    .line 2066
    .end local v2    # "clientLabel":I
    .end local p3    # "service":Landroid/content/Intent;
    .local v3, "service":Landroid/content/Intent;
    .local v17, "clientLabel":I
    .local v18, "clientIntent":Landroid/app/PendingIntent;
    :goto_3
    const/high16 v19, 0x8000000

    and-int v0, p6, v19

    if-eqz v0, :cond_7

    .line 2067
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v11, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v0, v2, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_7
    const/high16 v0, 0x80000

    and-int v0, p6, v0

    if-eqz v0, :cond_9

    if-eqz v16, :cond_8

    goto :goto_4

    .line 2072
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2076
    :cond_9
    :goto_4
    const/high16 v20, 0x1000000

    and-int v0, p6, v20

    const-string v2, "Non-system caller "

    if-eqz v0, :cond_b

    if-eqz v16, :cond_a

    goto :goto_5

    .line 2077
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2082
    :cond_b
    :goto_5
    const/high16 v0, 0x400000

    and-int v11, p6, v0

    if-eqz v11, :cond_d

    if-eqz v16, :cond_c

    goto :goto_6

    .line 2083
    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2088
    :cond_d
    :goto_6
    const/high16 v21, 0x100000

    and-int v1, p6, v21

    if-eqz v1, :cond_e

    .line 2089
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v11, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v1, v2, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    :cond_e
    iget v1, v6, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_f

    move v1, v9

    goto :goto_7

    :cond_f
    move v1, v5

    :goto_7
    move v2, v1

    .line 2095
    .local v2, "callerFg":Z
    const/high16 v1, -0x80000000

    and-int v1, p6, v1

    if-eqz v1, :cond_10

    move v11, v9

    goto :goto_8

    :cond_10
    move v11, v5

    .line 2096
    .local v11, "isBindExternal":Z
    :goto_8
    and-int v0, p6, v0

    if-eqz v0, :cond_11

    move v12, v9

    goto :goto_9

    :cond_11
    move v12, v5

    .line 2098
    .local v12, "allowInstant":Z
    :goto_9
    nop

    .line 2100
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    const/16 v23, 0x1

    .line 2099
    move-object/from16 v1, p0

    move/from16 p3, v2

    .end local v2    # "callerFg":Z
    .local p3, "callerFg":Z
    move-object v2, v3

    move-object/from16 v24, v3

    .end local v3    # "service":Landroid/content/Intent;
    .local v24, "service":Landroid/content/Intent;
    move-object/from16 v3, p7

    move-object/from16 v25, v4

    .end local v4    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v25, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v4, p4

    move-object/from16 v5, p8

    move-object/from16 v27, v6

    .end local v6    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v27, "callerApp":Lcom/android/server/am/ProcessRecord;
    move v6, v0

    move/from16 v7, v22

    move-object v15, v8

    move/from16 v8, p9

    move/from16 v14, p9

    move/from16 v9, v23

    move-object v14, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 2102
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v10, :cond_12

    .line 2103
    const/4 v9, 0x0

    return v9

    .line 2105
    :cond_12
    const/4 v9, 0x0

    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 v8, -0x1

    if-nez v0, :cond_13

    .line 2106
    return v8

    .line 2108
    :cond_13
    iget-object v7, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 2112
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ProcessRecord;->getUid()I

    move-result v0

    move-object/from16 v6, v24

    .end local v24    # "service":Landroid/content/Intent;
    .local v6, "service":Landroid/content/Intent;
    invoke-static {v14, v0, v6, v7}, Lcom/android/server/am/OpStartAppControlInjector;->canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2113
    return v9

    .line 2119
    :cond_14
    move-object/from16 v5, v27

    .end local v27    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-static {v5, v6, v7, v14}, Lcom/android/server/am/OpBGFrozenInjector;->bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 2122
    const/4 v0, 0x0

    .line 2128
    .local v0, "permissionsReviewRequired":Z
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2131
    const/4 v0, 0x1

    .line 2134
    const-string/jumbo v2, "u"

    move/from16 v1, p3

    .end local p3    # "callerFg":Z
    .local v1, "callerFg":Z
    if-nez v1, :cond_15

    .line 2135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Binding to a service in package"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires a permissions review"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return v9

    .line 2140
    :cond_15
    move-object v3, v7

    .line 2141
    .local v3, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    move-object v4, v6

    .line 2143
    .local v4, "serviceIntent":Landroid/content/Intent;
    new-instance v8, Landroid/os/RemoteCallback;

    new-instance v9, Lcom/android/server/am/ActiveServices$3;

    move/from16 v22, v1

    .end local v1    # "callerFg":Z
    .local v22, "callerFg":Z
    move-object v1, v9

    move/from16 v23, v0

    move-object v0, v2

    .end local v0    # "permissionsReviewRequired":Z
    .local v23, "permissionsReviewRequired":Z
    move-object/from16 v2, p0

    move-object/from16 v24, v10

    move-object v10, v5

    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v24, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move/from16 v5, v22

    move/from16 v27, v11

    move-object v11, v6

    .end local v6    # "service":Landroid/content/Intent;
    .local v11, "service":Landroid/content/Intent;
    .local v27, "isBindExternal":Z
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v8, v9}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v1, v8

    .line 2178
    .local v1, "callback":Landroid/os/RemoteCallback;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x18800000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2182
    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    const-string v5, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2185
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v5, :cond_16

    .line 2186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Launching permission review for package "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_16
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActiveServices$4;

    move/from16 v9, p9

    invoke-direct {v5, v13, v2, v9}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 2128
    .end local v1    # "callback":Landroid/os/RemoteCallback;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .end local v22    # "callerFg":Z
    .end local v23    # "permissionsReviewRequired":Z
    .end local v24    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v27    # "isBindExternal":Z
    .restart local v0    # "permissionsReviewRequired":Z
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "service":Landroid/content/Intent;
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v11, "isBindExternal":Z
    .restart local p3    # "callerFg":Z
    :cond_17
    move/from16 v22, p3

    move/from16 v9, p9

    move-object/from16 v24, v10

    move/from16 v27, v11

    move-object v10, v5

    move-object v11, v6

    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "service":Landroid/content/Intent;
    .end local p3    # "callerFg":Z
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v11, "service":Landroid/content/Intent;
    .restart local v22    # "callerFg":Z
    .restart local v24    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v27    # "isBindExternal":Z
    move/from16 v23, v0

    .line 2198
    .end local v0    # "permissionsReviewRequired":Z
    .restart local v23    # "permissionsReviewRequired":Z
    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29

    .line 2201
    .local v29, "origId":J
    :try_start_0
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    invoke-direct {v13, v7, v0, v8}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-eqz v0, :cond_18

    .line 2202
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BIND SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2377
    :catchall_0
    move-exception v0

    move v3, v9

    move-object/from16 v26, v11

    move/from16 v33, v12

    move-object v2, v14

    move/from16 v1, v22

    move-object/from16 v28, v25

    move-object v12, v7

    goto/16 :goto_16

    .line 2206
    :cond_18
    :goto_b
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_1b

    .line 2207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 2208
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2210
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 2211
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_19

    .line 2212
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_c

    .line 2211
    :cond_19
    const/4 v6, 0x1

    goto :goto_c

    .line 2208
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1a
    const/4 v6, 0x1

    goto :goto_c

    .line 2206
    :cond_1b
    const/4 v6, 0x1

    .line 2218
    :goto_c
    const/high16 v0, 0x200000

    and-int v0, p6, v0

    if-eqz v0, :cond_1c

    .line 2219
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->requireAllowedAssociationsLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2222
    :cond_1c
    :try_start_2
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2223
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v34

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, v7, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 2222
    move-object/from16 v31, v0

    move/from16 v32, v1

    move-object/from16 v33, v2

    move/from16 v35, v3

    move-wide/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v8

    invoke-virtual/range {v31 .. v39}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 2227
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2228
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2227
    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 2230
    invoke-virtual {v7, v11, v10}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v0

    move-object v8, v0

    .line 2231
    .local v8, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v31, Lcom/android/server/am/ConnectionRecord;

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    move-object/from16 v0, v31

    move-object v1, v8

    move-object/from16 v2, v25

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v32, v5

    move/from16 v5, v17

    move/from16 v28, v6

    move/from16 v33, v12

    const/4 v12, 0x1

    .end local v12    # "allowInstant":Z
    .local v33, "allowInstant":Z
    move-object/from16 v6, v18

    move-object v12, v7

    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .local v12, "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v7, v28

    move-object v14, v8

    move-object/from16 v26, v11

    const/4 v11, -0x1

    const/16 v28, 0x0

    .end local v8    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v11    # "service":Landroid/content/Intent;
    .local v14, "b":Lcom/android/server/am/AppBindRecord;
    .local v26, "service":Landroid/content/Intent;
    move-object/from16 v8, v32

    move-object/from16 v9, p8

    :try_start_3
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v31

    .line 2235
    .local v8, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v9, v0

    .line 2236
    .local v9, "binder":Landroid/os/IBinder;
    invoke-virtual {v12, v9, v8}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    .line 2237
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 2238
    move-object/from16 v7, v25

    .end local v25    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v7, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v7, :cond_1d

    .line 2239
    :try_start_4
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->addConnection(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_d

    .line 2377
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v28, v7

    move/from16 v1, v22

    goto/16 :goto_16

    .line 2241
    .restart local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v9    # "binder":Landroid/os/IBinder;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :cond_1d
    :goto_d
    :try_start_5
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2242
    invoke-virtual {v8}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 2246
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v0, :cond_1e

    .line 2247
    :try_start_6
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindservice as server add connection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2252
    :cond_1e
    :try_start_7
    iget v0, v8, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1f

    .line 2253
    :try_start_8
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2255
    :cond_1f
    :try_start_9
    iget v0, v8, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    and-int v0, v0, v20

    if-eqz v0, :cond_20

    .line 2256
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 2258
    :cond_20
    and-int v0, p6, v21

    if-eqz v0, :cond_21

    .line 2259
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/android/server/am/ServiceRecord;->setHasBindingWhitelistingBgActivityStarts(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2261
    :cond_21
    :try_start_b
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v0, :cond_22

    .line 2262
    :try_start_c
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    invoke-direct {v13, v0, v8, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2264
    :cond_22
    :try_start_d
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 2265
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v0, :cond_23

    .line 2266
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 2267
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v6, v0

    goto :goto_e

    .line 2265
    :cond_23
    move-object v6, v0

    .line 2269
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_e
    :try_start_f
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2271
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v5, v0

    .line 2272
    .local v5, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 2273
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 2274
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v0, v0

    iput-wide v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 2275
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v0, :cond_24

    .line 2276
    :try_start_10
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2277
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v11, 0x0

    goto :goto_f

    .line 2279
    :cond_24
    :try_start_11
    iput v11, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2280
    const/4 v11, 0x0

    iput-boolean v11, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 2283
    :goto_f
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    move-object v4, v0

    .line 2284
    .local v4, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, v4, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->processName:Ljava/lang/String;

    .line 2285
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v4, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->pid:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 2287
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2288
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v5, v4}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2293
    :cond_25
    goto :goto_10

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v1, "Failed to send bind details to servicetracker HAL"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2292
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 2295
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_26

    .line 2296
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 2297
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v20, v4

    .end local v4    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .local v20, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    move/from16 v4, v22

    move-object/from16 v21, v5

    .end local v5    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .local v21, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    move v5, v0

    move-object/from16 v25, v6

    .end local v6    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v25, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v0, :cond_27

    .line 2299
    nop

    .line 2377
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2299
    return v11

    .line 2295
    .end local v20    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v21    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v25    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v5    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v6    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_26
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v25, v6

    .line 2303
    .end local v4    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v5    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v6    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v20    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v21    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v25    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_27
    :try_start_15
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-nez v0, :cond_28

    .line 2304
    nop

    .line 2306
    :try_start_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/4 v0, 0x0

    .line 2305
    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v5, v26

    move-object v6, v12

    move-object/from16 v28, v7

    .end local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v28, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    move v7, v0

    :try_start_17
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->shouldAllowWhileInUsePermissionInFgsLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v0

    iput-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_11

    .line 2377
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v20    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v21    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v25    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v1, v22

    goto/16 :goto_16

    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v1, v22

    .end local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto/16 :goto_16

    .line 2303
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v9    # "binder":Landroid/os/IBinder;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v20    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v21    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v25    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_28
    move-object/from16 v28, v7

    .line 2310
    .end local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_11
    :try_start_18
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v0, :cond_2e

    .line 2311
    and-int v0, p6, v19

    if-eqz v0, :cond_29

    .line 2312
    :try_start_19
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 2314
    :cond_29
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_2a

    .line 2315
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 2318
    :cond_2a
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2319
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2320
    :cond_2b
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2d

    and-int v2, p6, v19

    if-eqz v2, :cond_2d

    :cond_2c
    const/4 v5, 0x1

    goto :goto_12

    :cond_2d
    move v5, v11

    :goto_12
    iget-object v2, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2318
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2323
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v2, "updateOomAdj_bindService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 2326
    :cond_2e
    :try_start_1a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v0, :cond_2f

    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v1, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v1, v1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 2328
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doRebind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v1, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2326
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 2331
    :cond_2f
    :try_start_1c
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v0, :cond_33

    :try_start_1d
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-eqz v0, :cond_33

    .line 2338
    :try_start_1e
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_30

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_30

    .line 2339
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindservice as client add connection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2345
    :cond_30
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    const/16 v1, 0x251c

    if-eqz v0, :cond_31

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_31

    .line 2346
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1, v0, v2}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 2351
    :cond_31
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v3, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v3, v3, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3, v11}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    .line 2354
    invoke-static {v1}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 2360
    goto :goto_13

    .line 2356
    :catch_1
    move-exception v0

    .line 2357
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 2358
    invoke-interface {v2}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2357
    invoke-static {v15, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v0, :cond_32

    .line 2366
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    move/from16 v1, v22

    const/4 v2, 0x1

    .end local v22    # "callerFg":Z
    .local v1, "callerFg":Z
    :try_start_20
    invoke-direct {v13, v12, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    goto :goto_14

    .line 2365
    .end local v1    # "callerFg":Z
    .restart local v22    # "callerFg":Z
    :cond_32
    move/from16 v1, v22

    .end local v22    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    goto :goto_14

    .line 2377
    .end local v1    # "callerFg":Z
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v20    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v21    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v25    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "callerFg":Z
    :catchall_4
    move-exception v0

    move/from16 v1, v22

    move-object/from16 v2, p8

    move/from16 v3, p9

    goto :goto_15

    .line 2331
    .restart local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v9    # "binder":Landroid/os/IBinder;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v20    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v21    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v25    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_33
    move/from16 v1, v22

    .line 2368
    .end local v22    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v0, :cond_34

    .line 2369
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-direct {v13, v12, v0, v1, v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 2372
    :cond_34
    :goto_14
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object v4, v14

    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .local v4, "b":Lcom/android/server/am/AppBindRecord;
    :try_start_21
    invoke-direct {v13, v3, v2, v0}, Lcom/android/server/am/ActiveServices;->maybeLogBindCrossProfileService(ILjava/lang/String;I)V

    .line 2374
    iget v0, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v13, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 2377
    .end local v4    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v20    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v21    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v25    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2378
    nop

    .line 2380
    const/4 v4, 0x1

    return v4

    .line 2377
    :catchall_5
    move-exception v0

    goto :goto_16

    :catchall_6
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    goto :goto_16

    .end local v1    # "callerFg":Z
    .restart local v22    # "callerFg":Z
    :catchall_7
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v1, v22

    .end local v22    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    :goto_15
    goto :goto_16

    .end local v1    # "callerFg":Z
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "callerFg":Z
    :catchall_8
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v28, v7

    move/from16 v1, v22

    .end local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto :goto_16

    .end local v1    # "callerFg":Z
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v22    # "callerFg":Z
    .local v25, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v1, v22

    move-object/from16 v28, v25

    .end local v22    # "callerFg":Z
    .end local v25    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "callerFg":Z
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto :goto_16

    .end local v1    # "callerFg":Z
    .end local v26    # "service":Landroid/content/Intent;
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v33    # "allowInstant":Z
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v11    # "service":Landroid/content/Intent;
    .local v12, "allowInstant":Z
    .restart local v22    # "callerFg":Z
    .restart local v25    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_a
    move-exception v0

    move v3, v9

    move-object/from16 v26, v11

    move/from16 v33, v12

    move-object v2, v14

    move/from16 v1, v22

    move-object/from16 v28, v25

    move-object v12, v7

    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v11    # "service":Landroid/content/Intent;
    .end local v22    # "callerFg":Z
    .end local v25    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "callerFg":Z
    .local v12, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v26    # "service":Landroid/content/Intent;
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v33    # "allowInstant":Z
    :goto_16
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2378
    throw v0

    .line 2030
    .end local v1    # "callerFg":Z
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v16    # "isCallerSystem":Z
    .end local v17    # "clientLabel":I
    .end local v18    # "clientIntent":Landroid/app/PendingIntent;
    .end local v23    # "permissionsReviewRequired":Z
    .end local v24    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v26    # "service":Landroid/content/Intent;
    .end local v27    # "isBindExternal":Z
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v29    # "origId":J
    .end local v33    # "allowInstant":Z
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local p3, "service":Landroid/content/Intent;
    :cond_35
    move-object v2, v10

    move-object v10, v6

    .end local v6    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when binding service "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "evenPersistent"    # Z
    .param p5, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZ)Z"
        }
    .end annotation

    .line 4326
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 4328
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4329
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4332
    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_4

    .line 4333
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 4334
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 4335
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v9, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4334
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 4336
    if-nez p5, :cond_1

    if-eqz v0, :cond_1

    .line 4337
    return v1

    .line 4339
    :cond_1
    if-eqz p5, :cond_2

    if-nez p2, :cond_2

    .line 4340
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v3, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 4333
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_3
    goto :goto_1

    .line 4344
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4345
    .local v2, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v2, :cond_5

    .line 4346
    iget-object v9, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4347
    .local v9, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v0

    .line 4350
    .end local v9    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_5
    if-eqz p5, :cond_6

    if-nez p2, :cond_6

    .line 4351
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 4355
    .end local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 4356
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 4357
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4356
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4359
    .end local v2    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4362
    :cond_8
    return v0
.end method

.method cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 15
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .line 4382
    move-object v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4383
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 4384
    .local v3, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4385
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4386
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4387
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4384
    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4392
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    move v5, v0

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 4393
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 4394
    .local v13, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v13, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_3

    .line 4395
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    .line 4396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping service "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": remove task"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ActivityManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    invoke-direct {p0, v13}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_2

    .line 4399
    :cond_2
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v8, 0x1

    .line 4400
    invoke-virtual {v13}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-object v7, v13

    move-object/from16 v10, p3

    invoke-direct/range {v6 .. v12}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    .line 4399
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4401
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_3

    .line 4405
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v13, v4, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4408
    goto :goto_2

    .line 4406
    :catch_0
    move-exception v0

    .line 4392
    .end local v13    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4413
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method protected dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5292
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5293
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 5294
    .local v4, "outterToken":J
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 5295
    .local v0, "users":[I
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget v8, v0, v7

    .line 5296
    .local v8, "user":I
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5297
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v9, :cond_0

    .line 5298
    move-object v15, v0

    goto :goto_2

    .line 5300
    :cond_0
    const-wide v10, 0x20b00000001L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 5301
    .local v10, "token":J
    const-wide v12, 0x10500000001L

    invoke-virtual {v2, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5302
    iget-object v12, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 5303
    .local v12, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 5304
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    move-object v15, v0

    .end local v0    # "users":[I
    .local v15, "users":[I
    const-wide v0, 0x20b00000002L

    invoke-virtual {v14, v2, v0, v1}, Lcom/android/server/am/ServiceRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5303
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_1

    .end local v15    # "users":[I
    .restart local v0    # "users":[I
    :cond_1
    move-object v15, v0

    .line 5307
    .end local v0    # "users":[I
    .end local v13    # "i":I
    .restart local v15    # "users":[I
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5295
    .end local v8    # "user":I
    .end local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v10    # "token":J
    .end local v12    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_0

    .line 5309
    .end local v15    # "users":[I
    .restart local v0    # "users":[I
    :cond_2
    move-object v15, v0

    .end local v0    # "users":[I
    .restart local v15    # "users":[I
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5310
    .end local v4    # "outterToken":J
    .end local v15    # "users":[I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5311
    return-void

    .line 5310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    .line 5323
    move-object v8, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 5325
    .local v9, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v10

    .line 5327
    .local v10, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/ServiceRecord;>;"
    iget-object v1, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5328
    iget-object v0, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 5330
    .local v0, "users":[I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v0, v4

    .line 5331
    .local v5, "user":I
    iget-object v6, v8, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5332
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v6, :cond_0

    .line 5333
    goto :goto_2

    .line 5335
    :cond_0
    iget-object v7, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 5336
    .local v7, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 5337
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 5339
    .local v12, "r1":Lcom/android/server/am/ServiceRecord;
    invoke-interface {v10, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5340
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5336
    .end local v12    # "r1":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 5330
    .end local v5    # "user":I
    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5344
    .end local v0    # "users":[I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5346
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 5347
    return v3

    .line 5351
    :cond_4
    sget-object v0, Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;->INSTANCE:Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5353
    const/4 v0, 0x0

    .line 5354
    .local v0, "needSep":Z
    const/4 v1, 0x0

    move v11, v1

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 5355
    if-eqz v0, :cond_5

    .line 5356
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5358
    :cond_5
    const/4 v0, 0x1

    .line 5359
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    const-string v2, ""

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 5354
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 5361
    .end local v11    # "i":I
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 5344
    .end local v0    # "needSep":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method forceStopPackageLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4366
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4367
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4368
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4369
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 4370
    .local v3, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4371
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 4372
    iput-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 4368
    .end local v3    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4375
    .end local v1    # "i":I
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v1, :cond_2

    .line 4376
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 4379
    :cond_2
    return-void
.end method

.method foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .locals 10
    .param p1, "aa"    # Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    .param p2, "nowElapsed"    # J

    .line 1183
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shown enough: pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    const/4 v0, 0x0

    .line 1186
    .local v0, "canRemove":Z
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1187
    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    if-eqz v2, :cond_1

    .line 1190
    const/4 v0, 0x1

    .line 1191
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_b

    const-string v2, "YES - shown while on top"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1192
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    const-string v3, "NO -- wait "

    if-nez v2, :cond_5

    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1210
    :cond_2
    iget-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v4, v6

    .line 1212
    .local v4, "minTime":J
    cmp-long v2, p2, v4

    if-ltz v2, :cond_4

    .line 1217
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_3

    const-string v2, "YES - gone long enough with screen off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1221
    :cond_4
    iput-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1222
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    sub-long/2addr v6, p2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " with screen off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1193
    .end local v4    # "minTime":J
    :cond_5
    :goto_0
    iget-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 1194
    iget-wide v6, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    iget-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_6

    .line 1195
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_1

    .line 1196
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_1
    add-long/2addr v4, v6

    .line 1197
    .restart local v4    # "minTime":J
    cmp-long v2, p2, v4

    if-ltz v2, :cond_8

    .line 1200
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_7

    const-string v2, "YES - shown long enough with screen on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    .line 1204
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr v6, p2

    .line 1205
    .local v6, "reportTime":J
    cmp-long v2, v6, v4

    if-lez v2, :cond_9

    move-wide v8, v6

    goto :goto_2

    :cond_9
    move-wide v8, v4

    :goto_2
    iput-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1206
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    sub-long/2addr v8, p2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " with screen on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    .end local v4    # "minTime":J
    .end local v6    # "reportTime":J
    :cond_a
    :goto_3
    nop

    .line 1226
    :cond_b
    :goto_4
    return v0
.end method

.method foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .locals 7
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 1454
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1455
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_4

    .line 1456
    const/4 v1, 0x0

    .line 1457
    .local v1, "changed":Z
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1458
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1459
    .local v4, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget v6, p1, Lcom/android/server/am/UidRecord;->uid:I

    if-ne v5, v6, :cond_2

    .line 1460
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_1

    .line 1461
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v5, :cond_0

    .line 1462
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1463
    const/4 v1, 0x1

    .line 1465
    :cond_0
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_1

    .line 1466
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v5, :cond_2

    .line 1467
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1468
    const/4 v1, 0x1

    .line 1457
    .end local v4    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1472
    .end local v2    # "j":I
    :cond_3
    if-eqz v1, :cond_4

    .line 1473
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1476
    .end local v1    # "changed":Z
    :cond_4
    return-void
.end method

.method public getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1168
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1169
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1170
    .local v1, "origId":J
    const/4 v3, 0x0

    .line 1172
    .local v3, "ret":I
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 1173
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_0

    .line 1174
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    .line 1177
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    nop

    .line 1179
    return v3

    .line 1177
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    throw v4
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4724
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 4725
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_2

    .line 4726
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4727
    .local v2, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "conni":I
    :goto_0
    if-ltz v3, :cond_2

    .line 4728
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4729
    .local v4, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 4730
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    .line 4731
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object v6

    .line 4729
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4727
    .end local v4    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4736
    .end local v2    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v3    # "conni":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method getRunningServiceInfoLocked(IIIZZ)Ljava/util/List;
    .locals 10
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "canInteractAcrossUsers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 4671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4674
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4676
    .local v1, "ident":J
    if-eqz p5, :cond_3

    .line 4677
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v3

    .line 4678
    .local v3, "users":[I
    const/4 v4, 0x0

    .local v4, "ui":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_1

    .line 4679
    aget v5, v3, v4

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 4680
    .local v5, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, p1, :cond_0

    .line 4681
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4682
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4680
    nop

    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4678
    .end local v5    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4686
    .end local v4    # "ui":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_2

    .line 4687
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4688
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    nop

    .line 4689
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v6

    .line 4690
    .local v6, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v7, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 4691
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4686
    nop

    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4693
    .end local v3    # "users":[I
    .end local v4    # "i":I
    :cond_2
    goto :goto_5

    .line 4694
    :cond_3
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4695
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 4696
    .local v4, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_6

    .line 4697
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4699
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    if-nez p4, :cond_4

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_5

    .line 4700
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4696
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4704
    .end local v5    # "i":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_9

    .line 4705
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4706
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v7, v3, :cond_8

    if-nez p4, :cond_7

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_8

    .line 4708
    :cond_7
    nop

    .line 4709
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    .line 4710
    .local v7, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v8, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v8, v7, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 4711
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4704
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4716
    .end local v3    # "userId":I
    .end local v4    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "i":I
    :cond_9
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4717
    nop

    .line 4719
    return-object v0

    .line 4716
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4717
    throw v3
.end method

.method getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    .line 516
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceByNameLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), callingUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_MU"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServicesLocked(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServicesLocked(I)Z
    .locals 4
    .param p1, "callingUser"    # I

    .line 522
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 523
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "appUid"    # I
    .param p3, "appPid"    # I
    .param p4, "localPackageName"    # Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1065
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1066
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const-string v6, "Bad notification for startForeground"

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 1068
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1069
    return-void

    .line 1068
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4444
    const/4 v3, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4445
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v4}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4450
    :cond_0
    goto :goto_0

    .line 4447
    :catch_0
    move-exception v0

    .line 4448
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to send kill process details to servicetracker HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4449
    iput-object v3, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 4453
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 4454
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4455
    .local v5, "r":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 4453
    .end local v5    # "r":Lcom/android/server/am/ConnectionRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4457
    .end local v0    # "i":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4458
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4460
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 4463
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_b

    .line 4464
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    .line 4465
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    monitor-enter v7

    .line 4466
    :try_start_1
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 4467
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4468
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, v2, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4469
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4470
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4472
    :cond_2
    invoke-virtual {v6, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 4473
    iput-object v3, v6, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4474
    iput v0, v6, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4475
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 4476
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4477
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killServices remove destroying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    :cond_3
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 4481
    .local v7, "numClients":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "bindingi":I
    :goto_3
    if-ltz v8, :cond_a

    .line 4482
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    .line 4483
    .local v9, "b":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Killing binding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": shouldUnbind="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v9, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ActivityManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    :cond_4
    iput-object v3, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 4486
    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 4491
    iget-object v10, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v4

    .local v10, "appi":I
    :goto_4
    if-ltz v10, :cond_9

    .line 4492
    iget-object v11, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 4494
    .local v11, "proc":Lcom/android/server/am/ProcessRecord;
    iget-boolean v12, v11, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v12, :cond_8

    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v12, :cond_5

    .line 4495
    goto :goto_7

    .line 4500
    :cond_5
    iget-object v12, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppBindRecord;

    .line 4501
    .local v12, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v13, 0x0

    .line 4502
    .local v13, "hasCreate":Z
    iget-object v14, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    sub-int/2addr v14, v4

    .local v14, "conni":I
    :goto_5
    if-ltz v14, :cond_7

    .line 4503
    iget-object v15, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 4504
    .local v15, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v3, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x31

    if-ne v3, v4, :cond_6

    .line 4506
    const/4 v13, 0x1

    .line 4507
    goto :goto_6

    .line 4502
    .end local v15    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    add-int/lit8 v14, v14, -0x1

    const/4 v3, 0x0

    goto :goto_5

    .line 4510
    .end local v14    # "conni":I
    :cond_7
    :goto_6
    if-nez v13, :cond_8

    .line 4491
    .end local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v13    # "hasCreate":Z
    :cond_8
    :goto_7
    add-int/lit8 v10, v10, -0x1

    const/4 v3, 0x0

    goto :goto_4

    .line 4481
    .end local v9    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v10    # "appi":I
    :cond_9
    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x0

    goto :goto_3

    .line 4463
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "numClients":I
    .end local v8    # "bindingi":I
    :cond_a
    add-int/lit8 v5, v5, -0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 4467
    .restart local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4525
    .end local v5    # "i":I
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_b
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 4528
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "i":I
    :goto_8
    if-ltz v5, :cond_14

    .line 4529
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    .line 4533
    .restart local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4534
    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4535
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4540
    :cond_c
    iget-object v7, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4541
    .local v7, "curRec":Lcom/android/server/am/ServiceRecord;
    if-eq v7, v6, :cond_d

    .line 4542
    if-eqz v7, :cond_13

    .line 4543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not same as in map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4551
    :cond_d
    if-eqz p2, :cond_e

    iget v8, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v8, v8

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_e

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_e

    .line 4554
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service crashed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " times, stopping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    const/16 v8, 0x7552

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4557
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v10, 0x2

    iget-object v11, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 4556
    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4558
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_a

    .line 4559
    :cond_e
    if-eqz p2, :cond_12

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4560
    invoke-virtual {v8, v9, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_9

    .line 4565
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/OpStartAppControlInjector;->canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 4566
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_a

    .line 4569
    :cond_10
    invoke-direct {v1, v6, v4}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v8

    .line 4574
    .local v8, "scheduled":Z
    if-nez v8, :cond_11

    .line 4575
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_a

    .line 4576
    :cond_11
    invoke-virtual {v6, v0}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 4580
    iput-boolean v0, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 4581
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v9, :cond_13

    .line 4582
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    .line 4583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4582
    invoke-virtual {v9, v0, v10, v11, v12}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    goto :goto_a

    .line 4561
    .end local v8    # "scheduled":Z
    :cond_12
    :goto_9
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4528
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "curRec":Lcom/android/server/am/ServiceRecord;
    :cond_13
    :goto_a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_8

    .line 4589
    .end local v5    # "i":I
    :cond_14
    if-nez p2, :cond_18

    .line 4590
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->stopAllServices()V

    .line 4591
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 4594
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_b
    if-ltz v0, :cond_16

    .line 4595
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4596
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_15

    .line 4598
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4599
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4594
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 4602
    .end local v0    # "i":I
    :cond_16
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_c
    if-ltz v0, :cond_18

    .line 4603
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4604
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_17

    .line 4606
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4602
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 4612
    .end local v0    # "i":I
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4613
    .restart local v0    # "i":I
    :goto_d
    if-lez v0, :cond_1a

    .line 4614
    add-int/lit8 v0, v0, -0x1

    .line 4615
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4616
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v2, :cond_19

    .line 4617
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 4618
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4619
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "killServices remove destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4621
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_19
    goto :goto_d

    .line 4623
    :cond_1a
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 4624
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4627
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 4629
    .local v0, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 4630
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 4631
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 4633
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 4634
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 4635
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 4636
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 4637
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 4638
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 4639
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 4640
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 4641
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_1

    .line 4642
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4644
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_2

    .line 4645
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4647
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_3

    .line 4648
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4650
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4651
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4654
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    .line 4655
    .local v1, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "conni":I
    :goto_0
    if-ltz v2, :cond_7

    .line 4656
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4657
    .local v3, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 4658
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4659
    .local v5, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v6, :cond_5

    .line 4660
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 4661
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 4662
    return-object v0

    .line 4657
    .end local v5    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4655
    .end local v3    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4666
    .end local v2    # "conni":I
    :cond_7
    return-object v0
.end method

.method newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;

    .line 5288
    new-instance v8, Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    return-object v8
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1072
    nop

    .line 1073
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1074
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1072
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    .line 1076
    .local v0, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v1, 0x0

    .line 1077
    .local v1, "ret":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1079
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_0

    .line 1086
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    .line 1087
    .local v2, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v2, :cond_1

    .line 1088
    iget-object v1, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    goto :goto_0

    .line 1080
    .end local v2    # "ib":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Accessing service from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1092
    :cond_1
    :goto_0
    return-object v1
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3214
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3215
    return-void

    .line 3217
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v1

    const-string v2, "ActivityManager"

    if-nez v1, :cond_1

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting service that is not needed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    return-void

    .line 3227
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v1, :cond_6

    .line 3228
    const/4 v1, 0x0

    .line 3229
    .local v1, "shouldDelay":Z
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3231
    .local v3, "top_rc":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v0, v5

    .line 3233
    .local v0, "isPersistent":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 3234
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->launching:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    .line 3236
    const/4 v1, 0x1

    .line 3239
    :cond_3
    if-nez v1, :cond_4

    .line 3240
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    iget-boolean v7, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    goto :goto_0

    .line 3242
    :cond_4
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_5

    .line 3243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reschedule service restart due to app launch r.shortInstanceName "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " r.app = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 3247
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3249
    .end local v0    # "isPersistent":Z
    .end local v1    # "shouldDelay":Z
    .end local v3    # "top_rc":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    goto :goto_1

    .line 3250
    :cond_6
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3254
    :goto_1
    goto :goto_2

    .line 3252
    :catch_0
    move-exception v0

    .line 3255
    :goto_2
    return-void
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 4276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4277
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 4278
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4279
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_2

    .line 4281
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forcing bringing down service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4283
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4284
    add-int/lit8 v0, v0, -0x1

    .line 4285
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4276
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4288
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    .line 2399
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2401
    .local v5, "origId":J
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "ActivityManager"

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PUBLISHING "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :cond_0
    if-eqz v2, :cond_c

    .line 2404
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v8, v0

    .line 2406
    .local v8, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    move-object v9, v0

    .line 2407
    .local v9, "b":Lcom/android/server/am/IntentBindRecord;
    if-eqz v9, :cond_b

    iget-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v0, :cond_b

    .line 2408
    iput-object v4, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 2409
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2410
    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 2411
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v11

    .line 2412
    .local v11, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v0

    .local v12, "conni":I
    :goto_0
    if-ltz v12, :cond_a

    .line 2413
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 2414
    .local v13, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_9

    .line 2415
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    move-object v15, v0

    .line 2416
    .local v15, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2417
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not publishing to: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bound intent: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v10, v10, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Published intent: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v16, v8

    goto/16 :goto_4

    .line 2425
    :cond_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Publishing to: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2430
    :cond_5
    if-eqz v15, :cond_6

    :try_start_2
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_6

    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_6

    .line 2431
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "publish service as client add connection = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2452
    :catch_0
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_3

    .line 2434
    :cond_6
    :goto_2
    :try_start_3
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_7

    .line 2435
    :try_start_4
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "publish service as server add connection = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2441
    :cond_7
    const/16 v0, 0x2328

    if-eqz v15, :cond_8

    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v3, :cond_8

    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8

    .line 2442
    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v10, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v3, v10}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2447
    :cond_8
    :try_start_5
    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "filter":Landroid/content/Intent$FilterComparison;
    .local v16, "filter":Landroid/content/Intent$FilterComparison;
    :try_start_6
    invoke-interface {v3, v10, v4, v8}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    .line 2450
    invoke-static {v0}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2456
    goto :goto_4

    .line 2452
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v8    # "filter":Landroid/content/Intent$FilterComparison;
    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    .line 2453
    .end local v8    # "filter":Landroid/content/Intent$FilterComparison;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "filter":Landroid/content/Intent$FilterComparison;
    :goto_3
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure sending service "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to connection "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 2454
    invoke-interface {v8}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (in "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2453
    invoke-static {v7, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2414
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "c":Lcom/android/server/am/ConnectionRecord;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    move-object/from16 v8, v16

    goto/16 :goto_1

    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v8    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_9
    move-object/from16 v16, v8

    .line 2412
    .end local v8    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v13    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v14    # "i":I
    .restart local v16    # "filter":Landroid/content/Intent$FilterComparison;
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v3, p2

    goto/16 :goto_0

    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v8    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_a
    move-object/from16 v16, v8

    .end local v8    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v16    # "filter":Landroid/content/Intent$FilterComparison;
    goto :goto_5

    .line 2407
    .end local v11    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v12    # "conni":I
    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v8    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_b
    move-object/from16 v16, v8

    .line 2461
    .end local v8    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v16    # "filter":Landroid/content/Intent$FilterComparison;
    :goto_5
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2464
    .end local v9    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2465
    nop

    .line 2466
    return-void

    .line 2464
    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2465
    throw v0
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .locals 18
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3935
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3936
    .local v3, "binder":Landroid/os/IBinder;
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 3937
    .local v4, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 3938
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3939
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v0, :cond_0

    .line 3940
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3941
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 3942
    invoke-virtual {v5, v3}, Lcom/android/server/am/ServiceRecord;->removeConnection(Landroid/os/IBinder;)V

    .line 3945
    :cond_0
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3946
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 3947
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-object/from16 v7, p3

    if-eq v6, v7, :cond_2

    .line 3948
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->removeConnection(Ljava/lang/Object;)V

    goto :goto_0

    .line 3947
    :cond_1
    move-object/from16 v7, p3

    .line 3950
    :cond_2
    :goto_0
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    move-object/from16 v9, p2

    if-eq v6, v9, :cond_7

    .line 3951
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3955
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v10, :cond_3

    .line 3956
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v10}, Lcom/android/server/am/OpBGFrozenInjector;->clientConnectionRemoveEvent(II)V

    .line 3960
    :cond_3
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    .line 3961
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 3965
    :cond_4
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v10, 0x1000000

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    .line 3966
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateWhitelistManager()V

    .line 3967
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-nez v6, :cond_5

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    .line 3968
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3972
    :cond_5
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v10, 0x100000

    and-int/2addr v6, v10

    if-eqz v6, :cond_6

    .line 3973
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateHasBindingWhitelistingBgActivityStarts()V

    .line 3975
    :cond_6
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    .line 3976
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6, v2, v8}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3979
    :cond_7
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3980
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v6, :cond_8

    .line 3981
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3982
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 3983
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3987
    :cond_8
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v14, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 3990
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 3991
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3994
    :cond_9
    iget-boolean v0, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_10

    .line 4002
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v8, "ActivityManager"

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disconnecting binding "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": shouldUnbind="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v10, v10, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", ConnectionRecord = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    :cond_a
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_c

    .line 4008
    :try_start_0
    const-string/jumbo v0, "unbind"

    invoke-direct {v1, v5, v10, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 4009
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v11, :cond_b

    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_b

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v11, 0xd

    if-gt v0, v11, :cond_b

    .line 4014
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v10, v12}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4016
    :cond_b
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v12, "updateOomAdj_unbindService"

    const/4 v13, 0x1

    invoke-virtual {v0, v11, v13, v12}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 4018
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 4021
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 4022
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v11, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v11, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4026
    goto :goto_1

    .line 4023
    :catch_0
    move-exception v0

    .line 4024
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when unbinding service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4025
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4031
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4032
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4035
    :cond_d
    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/4 v8, 0x1

    and-int/2addr v0, v8

    if-eqz v0, :cond_f

    .line 4036
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    .line 4037
    .local v0, "hasAutoCreate":Z
    if-nez v0, :cond_e

    .line 4038
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v8, :cond_e

    .line 4039
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    .line 4040
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4039
    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 4043
    :cond_e
    const/4 v8, 0x1

    invoke-direct {v1, v5, v8, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_2

    .line 4035
    .end local v0    # "hasAutoCreate":Z
    :cond_f
    const/4 v8, 0x1

    .line 4047
    :goto_2
    iput-boolean v8, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 4050
    :cond_10
    return-void
.end method

.method scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4856
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4859
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4861
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4862
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4863
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4864
    return-void

    .line 4857
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 4845
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4848
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4850
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4851
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 4852
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x4e20

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x30d40

    .line 4851
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4853
    return-void

    .line 4846
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I

    .line 4055
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceDoneExecutingLocked ServiceRecord= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " startId= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4059
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_9

    .line 4060
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_6

    .line 4063
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 4064
    const/4 v1, 0x0

    if-eqz p4, :cond_4

    if-eq p4, v3, :cond_4

    if-eq p4, v2, :cond_3

    const/4 v2, 0x3

    if-eq p4, v2, :cond_2

    const/16 v2, 0x3e8

    if-ne p4, v2, :cond_1

    .line 4099
    invoke-virtual {p1, p3, v3, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4100
    goto :goto_0

    .line 4103
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown service start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4087
    :cond_2
    invoke-virtual {p1, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 4088
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_5

    .line 4089
    iput v1, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 4090
    iget v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 4092
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 4075
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    invoke-virtual {p1, p3, v1, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4076
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v2

    if-ne v2, p3, :cond_5

    .line 4079
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 4068
    :cond_4
    invoke-virtual {p1, p3, v1, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4070
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 4071
    nop

    .line 4106
    :cond_5
    :goto_0
    if-nez p4, :cond_8

    .line 4107
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_1

    .line 4109
    :cond_6
    if-ne p2, v2, :cond_8

    .line 4113
    if-nez v0, :cond_7

    .line 4118
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_8

    .line 4119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4122
    :cond_7
    iget v2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq v2, v3, :cond_8

    .line 4123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service done with onDestroy, but executeNesting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4129
    :cond_8
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4130
    .local v1, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 4131
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4132
    .end local v1    # "origId":J
    goto :goto_2

    .line 4133
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done executing unknown service from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4134
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4133
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    :goto_2
    return-void
.end method

.method serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "serviceRecord"    # Ljava/lang/CharSequence;

    .line 4839
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 4842
    return-void
.end method

.method serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4797
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4798
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4802
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4803
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4805
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4808
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v2, :cond_2

    .line 4809
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service foreground-required timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4812
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4813
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4815
    if-eqz v1, :cond_3

    .line 4816
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4820
    :cond_3
    return-void

    .line 4799
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4813
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 17
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 4740
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 4741
    .local v3, "anrMessage":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4742
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4744
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4746
    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 4749
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 4750
    .local v5, "now":J
    nop

    .line 4751
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4e20

    goto :goto_0

    :cond_2
    const v0, 0x30d40

    :goto_0
    int-to-long v7, v0

    sub-long v7, v5, v7

    .line 4752
    .local v7, "maxTime":J
    const/4 v0, 0x0

    .line 4753
    .local v0, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v9, 0x0

    .line 4754
    .local v9, "nextTime":J
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_5

    .line 4755
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 4756
    .local v12, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v13, v13, v7

    if-gez v13, :cond_3

    .line 4757
    move-object v0, v12

    .line 4758
    goto :goto_2

    .line 4760
    :cond_3
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v13, v13, v9

    if-lez v13, :cond_4

    .line 4761
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-wide v9, v13

    .line 4754
    .end local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 4764
    .end local v11    # "i":I
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v11, v11, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4765
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Timeout executing service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 4767
    .local v11, "sw":Ljava/io/StringWriter;
    new-instance v12, Lcom/android/internal/util/FastPrintWriter;

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-direct {v12, v11, v13, v14}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 4768
    .local v12, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4769
    const-string v13, "    "

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4770
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V

    .line 4771
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 4772
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4773
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    move-wide v15, v5

    .end local v5    # "now":J
    .local v15, "now":J
    const-wide/32 v5, 0x6ddd00

    invoke-virtual {v13, v14, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executing service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 4775
    .end local v11    # "sw":Ljava/io/StringWriter;
    .end local v12    # "pw":Ljava/io/PrintWriter;
    goto :goto_4

    .line 4764
    .end local v15    # "now":J
    .restart local v5    # "now":J
    :cond_6
    move-wide v15, v5

    .line 4776
    .end local v5    # "now":J
    .restart local v15    # "now":J
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4778
    .local v5, "msg":Landroid/os/Message;
    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4779
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-boolean v11, v2, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v11, :cond_7

    .line 4780
    const-wide/16 v11, 0x4e20

    add-long/2addr v11, v9

    goto :goto_3

    :cond_7
    const-wide/32 v11, 0x30d40

    add-long/2addr v11, v9

    .line 4779
    :goto_3
    invoke-virtual {v6, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4782
    .end local v0    # "timeout":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "maxTime":J
    .end local v9    # "nextTime":J
    .end local v15    # "now":J
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4784
    if-eqz v3, :cond_8

    .line 4788
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check Process whileTimeout proc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/android/server/am/OpBGFrozenInjector;->serviceTimeoutEvent(IILjava/lang/String;)V

    .line 4791
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4793
    :cond_8
    return-void

    .line 4747
    :cond_9
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4782
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .locals 13
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "flags"    # I
    .param p6, "foregroundServiceType"    # I

    .line 1149
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1150
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1152
    .local v2, "origId":J
    move-object v10, p0

    move-object v11, p1

    move-object v12, p2

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1153
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v0, :cond_0

    .line 1154
    move-object v4, p0

    move-object v5, v0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1158
    nop

    .line 1159
    return-void

    .line 1157
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1158
    throw v0
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .locals 12
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"    # Z
    .param p5, "addToStarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 874
    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v10

    .line 875
    .local v10, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    const/4 v0, 0x1

    if-eqz v10, :cond_0

    .line 876
    iget-object v1, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 878
    :cond_0
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 879
    const/16 v1, 0x63

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 880
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 879
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 882
    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 884
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 887
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "!!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 890
    :cond_1
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_5

    if-eqz p5, :cond_5

    .line 891
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v11

    .line 892
    .local v0, "first":Z
    :goto_0
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v2, v4

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 894
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v2, :cond_3

    .line 895
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 896
    .local v2, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting background (first="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "here":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 898
    :cond_3
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_4

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting background (first="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 898
    :cond_4
    :goto_1
    nop

    .line 901
    :goto_2
    if-eqz v0, :cond_6

    .line 902
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_3

    .line 904
    .end local v0    # "first":Z
    :cond_5
    if-nez p4, :cond_7

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    goto :goto_5

    .line 905
    :cond_7
    :goto_4
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 908
    :goto_5
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 884
    .end local v1    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 11
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "fgRequired"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "callingFeatureId"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 549
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZ)Landroid/content/ComponentName;
    .locals 38
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "fgRequired"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "callingFeatureId"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .param p10, "allowBackgroundActivityStarts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 557
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    move/from16 v11, p5

    move-object/from16 v10, p7

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    const-string v9, "ActivityManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    .line 561
    :goto_0
    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz v13, :cond_3

    .line 562
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 564
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2

    .line 570
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    move v0, v1

    .line 571
    .local v0, "callerFg":Z
    move v5, v0

    goto :goto_2

    .line 565
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    .end local v0    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    const/4 v0, 0x1

    move v5, v0

    .line 575
    .local v5, "callerFg":Z
    :goto_2
    const/4 v2, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move/from16 v19, v5

    .end local v5    # "callerFg":Z
    .local v19, "callerFg":Z
    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p9

    move/from16 v8, v16

    move-object/from16 v21, v9

    move/from16 v9, v19

    move/from16 v10, v17

    move v13, v11

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v8

    .line 578
    .local v8, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v9, 0x0

    if-nez v8, :cond_4

    .line 579
    return-object v9

    .line 581
    :cond_4
    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_6

    .line 582
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 583
    iget-object v1, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string/jumbo v1, "private to package"

    :goto_3
    const-string v2, "!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-object v0

    .line 586
    :cond_6
    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 588
    .local v10, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to start service with non-existent user! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v21

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-object v9

    .line 596
    :cond_7
    move-object/from16 v11, v21

    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLocked(I)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    move v6, v0

    .line 601
    .local v6, "bgLaunch":Z
    const/4 v0, 0x0

    .line 602
    .local v0, "forcedStandby":Z
    if-eqz v6, :cond_9

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {v12, v1, v2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 603
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_8

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcing bg-only service start only for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : bgLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callerFg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v19

    .end local v19    # "callerFg":Z
    .restart local v5    # "callerFg":Z
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 603
    .end local v5    # "callerFg":Z
    .restart local v19    # "callerFg":Z
    :cond_8
    move/from16 v5, v19

    .line 607
    .end local v19    # "callerFg":Z
    .restart local v5    # "callerFg":Z
    :goto_4
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_5

    .line 602
    .end local v5    # "callerFg":Z
    .restart local v19    # "callerFg":Z
    :cond_9
    move/from16 v5, v19

    .line 611
    .end local v19    # "callerFg":Z
    .restart local v5    # "callerFg":Z
    move/from16 v16, v0

    .end local v0    # "forcedStandby":Z
    .local v16, "forcedStandby":Z
    :goto_5
    const/4 v0, 0x0

    .line 612
    .local v0, "forceSilentAbort":Z
    const-string v4, " pkg="

    const-string v3, " from pid="

    const-string v2, " to "

    const-string v1, " uid="

    if-eqz p6, :cond_d

    .line 613
    iget-object v9, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v9

    iget-object v7, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    .end local v0    # "forceSilentAbort":Z
    .local v19, "forceSilentAbort":Z
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move/from16 v21, v5

    const/16 v5, 0x4c

    .end local v5    # "callerFg":Z
    .local v21, "callerFg":Z
    invoke-virtual {v9, v5, v7, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 615
    .local v0, "mode":I
    if-eqz v0, :cond_c

    const/4 v7, 0x1

    if-eq v0, v7, :cond_b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    .line 631
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "!!"

    const-string v3, "foreground not allowed as per app op"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 615
    :cond_a
    move-object/from16 v9, p7

    goto :goto_6

    .line 623
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startForegroundService not allowed due to app op: service "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v5, 0x0

    .line 628
    .end local p6    # "fgRequired":Z
    .local v5, "fgRequired":Z
    const/16 v18, 0x1

    .line 629
    .end local v19    # "forceSilentAbort":Z
    .local v18, "forceSilentAbort":Z
    goto :goto_8

    .line 615
    .end local v5    # "fgRequired":Z
    .end local v18    # "forceSilentAbort":Z
    .restart local v19    # "forceSilentAbort":Z
    .restart local p6    # "fgRequired":Z
    :cond_c
    move-object/from16 v9, p7

    const/4 v7, 0x1

    .line 619
    :goto_6
    goto :goto_7

    .line 612
    .end local v19    # "forceSilentAbort":Z
    .end local v21    # "callerFg":Z
    .local v0, "forceSilentAbort":Z
    .local v5, "callerFg":Z
    :cond_d
    move-object/from16 v9, p7

    move/from16 v19, v0

    move/from16 v21, v5

    .line 637
    .end local v0    # "forceSilentAbort":Z
    .end local v5    # "callerFg":Z
    .restart local v19    # "forceSilentAbort":Z
    .restart local v21    # "callerFg":Z
    :goto_7
    move/from16 v5, p6

    move/from16 v18, v19

    .end local v19    # "forceSilentAbort":Z
    .end local p6    # "fgRequired":Z
    .local v5, "fgRequired":Z
    .restart local v18    # "forceSilentAbort":Z
    :goto_8
    invoke-static {v9, v13, v14, v10}, Lcom/android/server/am/OpStartAppControlInjector;->canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 638
    const/4 v0, 0x0

    return-object v0

    .line 644
    :cond_e
    if-nez v16, :cond_10

    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_f

    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v22, v6

    move-object/from16 v19, v8

    move-object v6, v12

    move-object v12, v1

    move v8, v5

    goto/16 :goto_d

    .line 654
    :cond_10
    :goto_9
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v19, v2

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v22

    move/from16 v22, v1

    move v1, v7

    move-object/from16 v7, v19

    move-object/from16 v26, v3

    move/from16 v3, v22

    move-object/from16 v27, v4

    move/from16 v4, p4

    move-object/from16 v19, v8

    move v8, v5

    .end local v5    # "fgRequired":Z
    .local v8, "fgRequired":Z
    .local v19, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move/from16 v5, v23

    move/from16 v22, v6

    .end local v6    # "bgLaunch":Z
    .local v22, "bgLaunch":Z
    move/from16 v6, v24

    move-object v12, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v0

    .line 656
    .local v0, "allowed":I
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerServiceInjector;->isAllowLaunchBackground(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 657
    const/4 v0, 0x0

    .line 667
    :cond_11
    const-string v1, "com.coloros.mcs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 668
    const-string v1, "com.heytap.mcs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "net.oneplus.odm"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 669
    const-string v1, "com.oneplus.config"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "com.oneplus.opbugreportlite"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 670
    const-string v1, "com.nearme.instant.platform"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_12
    const/4 v7, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v7, 0x1

    :goto_b
    move v1, v7

    .line 671
    .local v1, "isCallingPackageSystem":Z
    if-eqz v0, :cond_18

    if-nez v1, :cond_18

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background start not allowed: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v25

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startFg?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v7, 0x1

    if-eq v0, v7, :cond_17

    if-eqz v18, :cond_14

    move-object/from16 v6, p0

    goto :goto_c

    .line 682
    :cond_14
    if-eqz v16, :cond_16

    .line 686
    if-eqz v8, :cond_16

    .line 687
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v2, :cond_15

    .line 688
    const-string v2, "Silently dropping foreground service launch due to FAS"

    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_15
    const/4 v2, 0x0

    return-object v2

    .line 695
    :cond_16
    move-object/from16 v6, p0

    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 696
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app is in background uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?"

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 677
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_17
    move-object/from16 v6, p0

    .line 680
    :goto_c
    const/4 v2, 0x0

    return-object v2

    .line 671
    :cond_18
    const/4 v7, 0x1

    move-object/from16 v6, p0

    move-object/from16 v12, v25

    .line 704
    .end local v0    # "allowed":I
    .end local v1    # "isCallingPackageSystem":Z
    :goto_d
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1b

    if-eqz v8, :cond_1b

    .line 705
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_1a

    .line 706
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startForegroundService() but host targets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - not requiring startForeground()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1a
    const/4 v5, 0x0

    move v8, v5

    .line 712
    :cond_1b
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v14, v13, v1, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v20

    .line 721
    .local v20, "neededGrants":Lcom/android/server/uri/NeededUriGrants;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p5

    move-object/from16 v5, p2

    move-object v9, v6

    move/from16 v6, v21

    move v14, v7

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZI)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 723
    const/4 v0, 0x0

    return-object v0

    .line 726
    :cond_1c
    const/4 v7, 0x0

    invoke-direct {v9, v10, v13, v7}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 727
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 730
    iput-boolean v14, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 731
    iput-boolean v7, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 732
    iput-boolean v8, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 733
    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v2, 0x0

    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, v20

    move-object v14, v6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    if-eqz v8, :cond_1f

    .line 738
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 739
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_1e

    .line 740
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 743
    :cond_1e
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v29

    const/16 v30, 0x4c

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v28, v1

    move/from16 v31, v2

    move-object/from16 v32, v3

    invoke-virtual/range {v28 .. v37}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)I

    .line 748
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1f
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v7

    .line 749
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v0, 0x0

    .line 750
    .local v0, "addToStarting":Z
    const-string v1, "): "

    move/from16 v14, v21

    .end local v21    # "callerFg":Z
    .local v14, "callerFg":Z
    if-nez v14, :cond_2a

    if-nez v8, :cond_2a

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_2a

    iget-object v2, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 751
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 752
    iget-object v2, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 753
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xb

    if-le v3, v4, :cond_20

    goto :goto_e

    .line 781
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_21

    .line 785
    const/4 v0, 0x1

    .line 786
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not delaying, but counting as bg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 788
    :cond_21
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v3, :cond_29

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 790
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Not potential delay (state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 791
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v5

    .line 793
    .local v5, "reason":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 794
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 764
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "reason":Ljava/lang/String;
    :cond_23
    :goto_e
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Potential start delay of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_24
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_26

    .line 769
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuing to delay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_25
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 772
    :cond_26
    iget-object v1, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, v9, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v1, v3, :cond_27

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying start of: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v1, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 777
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 779
    :cond_27
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not delaying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_28
    const/4 v0, 0x1

    .line 801
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_29
    :goto_f
    move v11, v0

    goto/16 :goto_12

    :cond_2a
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_2e

    .line 802
    if-nez v14, :cond_2d

    if-eqz v8, :cond_2b

    goto :goto_10

    .line 805
    :cond_2b
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2c

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not potential delay (cur app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 808
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not potential delay (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not started): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 803
    :cond_2d
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not potential delay (callerFg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fgRequired="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_2e
    :goto_11
    move v11, v0

    .end local v0    # "addToStarting":Z
    .local v11, "addToStarting":Z
    :goto_12
    if-eqz p10, :cond_2f

    .line 814
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->whitelistBgActivityStartsOnServiceStart()V

    .line 816
    :cond_2f
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object v3, v10

    move v4, v14

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v12

    .line 818
    .local v12, "cmp":Landroid/content/ComponentName;
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-nez v0, :cond_30

    .line 819
    nop

    .line 820
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object v5, v10

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->shouldAllowWhileInUsePermissionInFgsLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 824
    :cond_30
    return-object v12
.end method

.method stopAllForegroundServicesLocked(ILjava/lang/String;)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 292
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 293
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 294
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v2, "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 296
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 297
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v5, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 298
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 307
    .local v3, "numToStop":I
    const-string v4, "ActivityManager"

    if-lez v3, :cond_3

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_3

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in FAS with foreground services"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 312
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 313
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v7, :cond_4

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Stopping fg for service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V

    .line 311
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 318
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method stopInBackgroundLocked(I)V
    .locals 13
    .param p1, "uid"    # I

    .line 971
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 972
    .local v0, "services":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    .line 973
    .local v1, "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v0, :cond_5

    .line 974
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 975
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 980
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_3

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_3

    .line 982
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZ)I

    move-result v4

    if-eqz v4, :cond_3

    .line 985
    if-nez v1, :cond_0

    .line 986
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 988
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 992
    .local v4, "compName":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v6, "ActivityManager"

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->inAppIdleWhitelist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 993
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "temp solution to keep engineering mode related services alive: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    goto :goto_1

    .line 999
    :cond_1
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v4}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1001
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v7, "Stopping service due to app idle: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1003
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    iget-wide v8, v3, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 1005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1004
    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1006
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1012
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {p1, v6, v4}, Lcom/android/server/am/OpBGFrozenInjector;->isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1013
    return-void

    .line 1017
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1023
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 974
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "compName":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 1028
    .end local v2    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 1029
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 1030
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1031
    .restart local v3    # "service":Lcom/android/server/am/ServiceRecord;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1032
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1033
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1029
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1037
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 17
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 938
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v12, p3

    .line 941
    :goto_0
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 942
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_2

    if-eqz v16, :cond_1

    goto :goto_1

    .line 943
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_2
    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 951
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 950
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    move v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    .line 952
    .local v1, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v1, :cond_4

    .line 953
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_3

    .line 954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 956
    .local v2, "origId":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v13, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    nop

    .line 960
    const/4 v0, 0x1

    return v0

    .line 958
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    throw v0

    .line 962
    .end local v2    # "origId":J
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 965
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 7
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    .line 1097
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopServiceToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1100
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1101
    if-ltz p3, :cond_4

    .line 1105
    invoke-virtual {v0, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 1106
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_2

    .line 1107
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1108
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1109
    .local v3, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 1110
    if-ne v3, v2, :cond_1

    .line 1111
    goto :goto_1

    .line 1113
    .end local v3    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    goto :goto_0

    .line 1116
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v3

    if-eq v3, p3, :cond_3

    .line 1117
    return v1

    .line 1120
    :cond_3
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopServiceToken startId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is last, but have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1122
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining args"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1121
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_4
    const/16 v2, 0x63

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 1128
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1127
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1130
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2

    .line 1131
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 1132
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 1134
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v2, :cond_5

    .line 1135
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 1136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1135
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1138
    :cond_5
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1140
    .local v2, "origId":J
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1141
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1142
    const/4 v1, 0x1

    return v1

    .line 1132
    .end local v2    # "origId":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1144
    :cond_6
    return v1
.end method

.method systemServicesReady()V
    .locals 2

    .line 477
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 478
    .local v0, "ast":Lcom/android/server/AppStateTracker;
    new-instance v1, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 479
    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

    .line 480
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->setWhiteListAllowWhileInUsePermissionInFgs()V

    .line 481
    return-void
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    .line 2571
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2573
    .local v0, "origId":J
    if-eqz p1, :cond_6

    .line 2574
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2576
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 2577
    .local v3, "b":Lcom/android/server/am/IntentBindRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unbindFinished in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": apps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2577
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 2582
    .local v4, "inDestroying":Z
    if-eqz v3, :cond_5

    .line 2583
    iget-object v6, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_4

    if-nez v4, :cond_4

    .line 2586
    const/4 v6, 0x0

    .line 2587
    .local v6, "inFg":Z
    iget-object v8, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_3

    .line 2588
    iget-object v9, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2589
    .local v9, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_2

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 2591
    const/4 v6, 0x1

    .line 2592
    goto :goto_2

    .line 2587
    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2596
    .end local v8    # "i":I
    :cond_3
    :goto_2
    :try_start_1
    invoke-direct {p0, p1, v3, v6, v7}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2599
    goto :goto_3

    .line 2597
    :catch_0
    move-exception v7

    .line 2600
    .end local v6    # "inFg":Z
    :goto_3
    goto :goto_4

    .line 2603
    :cond_4
    :try_start_2
    iput-boolean v7, v3, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 2607
    :cond_5
    :goto_4
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 2610
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v3    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v4    # "inDestroying":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2611
    throw v2

    .line 2610
    :cond_6
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2611
    nop

    .line 2612
    return-void
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 14
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    .line 2504
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2505
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindService: conn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2507
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbind failed: could not find connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2509
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2508
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    return v3

    .line 2513
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2515
    .local v4, "origId":J
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_9

    .line 2516
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2517
    .local v6, "r":Lcom/android/server/am/ConnectionRecord;
    new-instance v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v8}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 2518
    .local v8, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 2519
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 2520
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-wide v9, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v9, v9

    iput-wide v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 2521
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_2

    .line 2522
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2523
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v9, v9, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    goto :goto_1

    .line 2525
    :cond_2
    const/4 v9, -0x1

    iput v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2526
    iput-boolean v3, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 2529
    :goto_1
    new-instance v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v9}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 2530
    .local v9, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    iget-object v10, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v10, v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->processName:Ljava/lang/String;

    .line 2531
    iget-object v10, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v10, v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2533
    const/4 v10, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2534
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v11, v8, v9}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2539
    :cond_3
    goto :goto_2

    .line 2536
    :catch_0
    move-exception v11

    .line 2537
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v12, "Failed to send unbind details to servicetracker HAL"

    invoke-static {v2, v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2538
    iput-object v10, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 2540
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {p0, v6, v10, v10}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 2541
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_4

    .line 2543
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " not removed for binder "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2547
    :cond_4
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    .line 2548
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v11, :cond_5

    .line 2549
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v11}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2552
    :cond_5
    iget v11, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x8000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_8

    .line 2553
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v7, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 2554
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2555
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v13, v13, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v13, :cond_6

    goto :goto_3

    :cond_6
    move v7, v3

    .line 2554
    :cond_7
    :goto_3
    invoke-virtual {v11, v12, v7, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2559
    .end local v6    # "r":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v9    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :cond_8
    goto/16 :goto_0

    .line 2561
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_unbindService"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2564
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2565
    nop

    .line 2567
    return v7

    .line 2564
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2565
    throw v2
.end method

.method updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .locals 13
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1231
    const/4 v0, 0x0

    .line 1232
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1234
    .local v2, "now":J
    const-wide v4, 0x7fffffffffffffffL

    .line 1235
    .local v4, "nextUpdateTime":J
    if-eqz p1, :cond_a

    .line 1236
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v6, :cond_0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating foreground apps for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    iget-object v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_8

    .line 1239
    iget-object v8, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1240
    .local v8, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 1241
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    .line 1242
    .local v9, "canRemove":Z
    if-eqz v9, :cond_1

    .line 1244
    iget-object v10, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1245
    iput-boolean v7, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1246
    goto/16 :goto_1

    .line 1248
    :cond_1
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_2

    .line 1249
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move-wide v4, v10

    .line 1252
    .end local v9    # "canRemove":Z
    :cond_2
    iget-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v9, :cond_7

    .line 1255
    iget v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1256
    if-nez v0, :cond_3

    .line 1257
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 1259
    :cond_3
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v9, :cond_4

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding active: pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_4
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1263
    :cond_5
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v9, :cond_6

    .line 1264
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bg-restricted app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " exiting top; demoting fg services "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_6
    iget v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 1238
    .end local v8    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_7
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 1272
    .end local v6    # "i":I
    :cond_8
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 1273
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v4, v7

    if-gez v7, :cond_a

    .line 1274
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v7, :cond_9

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Next update time in: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v4, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_9
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1277
    .local v6, "msg":Landroid/os/Message;
    nop

    .line 1278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 1277
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1281
    .end local v6    # "msg":Landroid/os/Message;
    :cond_a
    iget-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-nez v6, :cond_b

    .line 1282
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1284
    :cond_b
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1285
    .end local v2    # "now":J
    .end local v4    # "nextUpdateTime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1288
    return-void

    .line 1285
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method updateScreenStateLocked(Z)V
    .locals 14
    .param p1, "screenOn"    # Z

    .line 1397
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v0, p1, :cond_8

    .line 1398
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 1402
    invoke-static {p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->updateScreenState(Z)V

    .line 1407
    if-eqz p1, :cond_8

    .line 1408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1409
    .local v0, "nowElapsed":J
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    const-string v3, "Screen turned on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_8

    .line 1411
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1412
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-wide v5, 0x7fffffffffffffffL

    .line 1413
    .local v5, "nextUpdateTime":J
    const/4 v7, 0x0

    .line 1414
    .local v7, "changed":Z
    iget-object v8, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "j":I
    :goto_1
    const-wide/16 v9, 0x0

    if-ltz v8, :cond_5

    .line 1415
    iget-object v11, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1416
    .local v11, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v9, v12, v9

    if-nez v9, :cond_1

    .line 1417
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_4

    .line 1418
    iput-boolean v3, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1419
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_2

    .line 1422
    :cond_1
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_2

    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_2

    .line 1427
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1429
    :cond_2
    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1432
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v10, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1434
    const/4 v7, 0x1

    goto :goto_2

    .line 1436
    :cond_3
    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v9, v9, v5

    if-gez v9, :cond_4

    .line 1437
    iget-wide v5, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1414
    .end local v11    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1442
    .end local v8    # "j":I
    :cond_5
    if-eqz v7, :cond_6

    .line 1444
    invoke-direct {p0, v4, v9, v10}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_3

    .line 1445
    :cond_6
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v5, v8

    if-gez v8, :cond_7

    .line 1446
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1410
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "nextUpdateTime":J
    .end local v7    # "changed":Z
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1451
    .end local v0    # "nowElapsed":J
    .end local v2    # "i":I
    :cond_8
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 4823
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4824
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4825
    .local v1, "serviceMap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_1

    .line 4826
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4828
    .local v2, "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_1

    .line 4829
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4830
    .local v4, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4831
    iput-object p1, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 4832
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4828
    .end local v4    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4836
    .end local v2    # "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "clientProc"    # Lcom/android/server/am/ProcessRecord;

    .line 1966
    const/4 v0, 0x0

    .line 1967
    .local v0, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1968
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1969
    .local v2, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1970
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_0

    .line 1971
    goto :goto_2

    .line 1972
    :cond_0
    if-nez v0, :cond_1

    .line 1973
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    goto :goto_1

    .line 1974
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1975
    goto :goto_2

    .line 1977
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1978
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1967
    .end local v2    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1980
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .locals 8
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 2469
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2470
    .local v0, "binder":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateServiceGroup: conn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2472
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v1, :cond_6

    .line 2476
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 2477
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 2478
    .local v3, "crec":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 2479
    .local v4, "srec":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, v5, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 2480
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 2481
    if-lez p2, :cond_1

    .line 2482
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 2483
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p2, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 2484
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p3, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_1

    .line 2486
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 2487
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v6, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 2488
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v6, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_1

    .line 2491
    :cond_2
    if-lez p2, :cond_3

    .line 2492
    iput p2, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2493
    iput p3, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_1

    .line 2495
    :cond_3
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2496
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 2476
    .end local v3    # "crec":Lcom/android/server/am/ConnectionRecord;
    .end local v4    # "srec":Lcom/android/server/am/ServiceRecord;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2501
    .end local v2    # "i":I
    :cond_5
    return-void

    .line 2473
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
